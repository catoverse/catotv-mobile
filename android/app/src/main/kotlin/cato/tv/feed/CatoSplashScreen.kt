package cato.tv.feed

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import androidx.annotation.NonNull
import androidx.annotation.Nullable
import io.flutter.embedding.android.SplashScreen

class CatoSplashScreen : SplashScreen{
    private var mySplashView: View? = null

    override fun createSplashView(context: Context, savedInstanceState: Bundle?): View? {
        mySplashView = LayoutInflater.from(context).inflate(R.layout.splash_screen, null);
        return mySplashView
    }

    override fun transitionToFlutter(onTransitionComplete: Runnable) {
        onTransitionComplete.run()
    }
}