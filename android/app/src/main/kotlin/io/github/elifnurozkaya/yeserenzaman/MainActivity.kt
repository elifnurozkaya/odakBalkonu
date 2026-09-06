package io.github.elifnurozkaya.yeserenzaman

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        // Ekran durumu adaptörünü başlat ve yalıt
        ScreenStateAdapter(
            flutterEngine.dartExecutor.binaryMessenger,
            context
        )
    }
}