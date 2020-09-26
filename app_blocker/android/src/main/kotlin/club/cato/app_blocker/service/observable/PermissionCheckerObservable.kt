package club.cato.app_blocker.service.observable

import android.content.Context
import io.reactivex.Flowable
import java.util.concurrent.TimeUnit
import club.cato.app_blocker.service.utils.PermissionChecker

class PermissionCheckerObservable constructor(val context: Context) {

    fun get(): Flowable<Boolean> {
        return Flowable.interval(30, TimeUnit.MINUTES)
            .map { PermissionChecker.checkUsageAccessPermission(context).not() }
    }
}