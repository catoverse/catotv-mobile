package club.cato.app_blocker.service.utils

import android.annotation.SuppressLint
import android.content.Context
import android.util.Log
import java.text.SimpleDateFormat
import java.util.*

object BlockManager {
    var blockedAppsList: List<String>? = null
    private var startTime: String? = null //HH:MM:SS
    private var endTime: String? = null
    private var restrictedWeekdays: List<Int>? = null

    fun isBlocked(context: Context, packageName: String): Boolean {
        if(blockedAppsList == null) {
            blockedAppsList = PrefManager.getAllBlackListedPackages(context).toList()
        }
        
        if(startTime == null || endTime == null) {
            val restrictionTime = PrefManager.getRestrictionTime(context)
            updateRestrictionTime(restrictionTime.first, restrictionTime.second)
        }
        
        if(restrictedWeekdays == null) {
            val weekdays = PrefManager.getRestrictionWeekDays(context)
            updateRestrictedWeekDays(weekdays)
        }
        
        val isBlockedPackage = blockedAppsList?.contains(packageName) == true
        if(!isBlockedPackage) {
//            Log.d("🙏", "App Is not blocked $blockedAppsList")
            return false
        }
        
        return isRestrictedTime() && isRestrictedWeekDay()
    }
    
    private fun isRestrictedWeekDay(): Boolean {
        if(restrictedWeekdays.isNullOrEmpty()) return true
        
        val calendar = Calendar.getInstance()
        val currentDay = calendar.get(Calendar.DAY_OF_WEEK)
        return restrictedWeekdays?.contains(currentDay) == true
    }

    private fun isRestrictedTime() : Boolean{
        if(startTime == null || endTime == null) return true
        
        return try {
            val calendar = Calendar.getInstance()
            val currentTime = 
                    "${calendar.get(Calendar.HOUR_OF_DAY)}:${calendar.get(Calendar.MINUTE)}:00"
            isTimeBetweenTwoTime(startTime!!, endTime!!, currentTime)
        } catch (e: java.lang.Exception) {
            true
        }
    }

    @SuppressLint("SimpleDateFormat")
    private fun isTimeBetweenTwoTime(argStartTime: String,
                             argEndTime: String, argCurrentTime: String): Boolean {
        val reg = "^([0-1][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$"
        //
        return if (argStartTime.matches(Regex(reg))
                && argEndTime.matches(Regex(reg))
                && argCurrentTime.matches(Regex(reg))) {
            var valid = false
            // Start Time
            var startTime: Date = SimpleDateFormat("HH:mm:ss")
                    .parse(argStartTime)
            val startCalendar = Calendar.getInstance()
            startCalendar.time = startTime

            // Current Time
            var currentTime: Date = SimpleDateFormat("HH:mm:ss")
                    .parse(argCurrentTime)
            val currentCalendar = Calendar.getInstance()
            currentCalendar.time = currentTime

            // End Time
            var endTime: Date = SimpleDateFormat("HH:mm:ss")
                    .parse(argEndTime)
            val endCalendar = Calendar.getInstance()
            endCalendar.time = endTime

            //
            if (currentTime.compareTo(endTime) < 0) {
                currentCalendar.add(Calendar.DATE, 1)
                currentTime = currentCalendar.time
            }
            if (startTime.compareTo(endTime) < 0) {
                startCalendar.add(Calendar.DATE, 1)
                startTime = startCalendar.time
            }
            //
            if (currentTime.before(startTime)) {
                valid = false
            } else {
                if (currentTime.after(endTime)) {
                    endCalendar.add(Calendar.DATE, 1)
                    endTime = endCalendar.time
                }
                valid = currentTime.before(endTime)
            }
            valid
        } else {
            throw IllegalArgumentException(
                    "Not a valid time, expecting HH:MM:SS format")
        }
    }
    
    fun updateRestrictionTime(startTimeString: String, endTimeString: String) {
        startTime = startTimeString
        endTime = endTimeString
    }
    
    fun updateRestrictedWeekDays(weekdays: List<String>) {
        restrictedWeekdays = weekdays.map { e -> try { e.toInt() } catch (ex: Exception) { -1 } }
    }
}