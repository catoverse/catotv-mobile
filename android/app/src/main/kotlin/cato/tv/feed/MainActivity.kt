package cato.tv.feed

import io.flutter.embedding.android.FlutterActivity
import android.content.Context
import android.content.Intent
import io.flutter.embedding.android.SplashScreen

class MainActivity: FlutterActivity() {

    override fun provideSplashScreen(): SplashScreen? {
        return CatoSplashScreen()
    }

}
