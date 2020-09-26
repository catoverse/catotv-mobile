package club.cato.app_blocker.service.utils

import android.content.Context
import android.content.SharedPreferences
import java.lang.Exception

object PrefManager {
    private const val PREF_FILE = "appblocker_pref"
    private const val PREF_IS_ENABLED = "is_enabled"
    private const val PREF_BLACKLISTED_PACKAGES = "blacklist_package"
    private const val PREF_RESTRICTION_START_TIME = "start_time"
    private const val PREF_RESTRICTION_END_TIME = "end_time"
    private const val PREF_RESTRICTION_WEEK_DAYS = "weekdays"

    private fun getPref(context: Context): SharedPreferences {
        return context.getSharedPreferences(PREF_FILE, Context.MODE_PRIVATE)
    }

    fun isAppBlockerEnabled(context: Context): Boolean {
        val pref = getPref(context)
        return pref.getBoolean(PREF_IS_ENABLED, false)
    }

    fun setAppBlockEnabled(context: Context, isEnabled: Boolean) {
        val pref = getPref(context)
        pref.edit().putBoolean(PREF_IS_ENABLED, isEnabled).apply()
    }

    fun getAllBlackListedPackages(context: Context): MutableSet<String> {
        return getPref(context).getStringSet(PREF_BLACKLISTED_PACKAGES, setOf()) ?: mutableSetOf()
    }

    fun updateBlockedPackages(context: Context, packages: List<String>) {
        val pref = getPref(context)
        pref.edit().putStringSet(PREF_BLACKLISTED_PACKAGES, packages.toSet()).apply()
        BlockManager.blockedAppsList = packages
    }
    
    /** startTime and endTime format HH:MM:SS **/
    fun setRestrictionTime(context: Context, startTime: String, endTime: String) {
        val pref = getPref(context)
        pref.edit().apply {
            putString(PREF_RESTRICTION_START_TIME, startTime)
            putString(PREF_RESTRICTION_END_TIME, endTime)
        }.apply()
        BlockManager.updateRestrictionTime(startTime, endTime)
    }

    /**
     * Returns Pair<StartTime, EndTime>
     */
    fun getRestrictionTime(context: Context): Pair<String, String> {
        val pref = getPref(context)
        val startTime = pref.getString(PREF_RESTRICTION_START_TIME, "-1") ?: "-1"
        val endTime = pref.getString(PREF_RESTRICTION_END_TIME, "-1") ?: "-1"
        return Pair(startTime, endTime)
    }

    fun setRestrictionWeekDays(context: Context, weekDays: List<String>) {
        val pref = getPref(context)
        pref.edit().putStringSet(PREF_RESTRICTION_WEEK_DAYS, weekDays.toSet()).apply()
        BlockManager.updateRestrictedWeekDays(weekDays)
    }

    fun getRestrictionWeekDays(context: Context): List<String> {
        val pref = getPref(context)
        val set = pref.getStringSet(PREF_RESTRICTION_WEEK_DAYS, setOf()) ?: setOf()
        return set.toList()
    }

}