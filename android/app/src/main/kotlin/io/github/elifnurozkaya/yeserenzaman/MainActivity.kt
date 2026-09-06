package io.github.elifnurozkaya.yeserenzaman

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel

class MainActivity: FlutterActivity() {
    private val screenChannel = "odak_balkonu/screen_state"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, screenChannel).setStreamHandler(
            object : EventChannel.StreamHandler {
                private var receiver: BroadcastReceiver? = null

                override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                    receiver = object : BroadcastReceiver() {
                        override fun onReceive(context: Context?, intent: Intent) {
                            when (intent.action) {
                                Intent.ACTION_SCREEN_OFF -> events?.success("screen_off")
                                Intent.ACTION_SCREEN_ON -> events?.success("screen_on")
                                Intent.ACTION_USER_PRESENT -> events?.success("user_present") // Kilit açıldı
                            }
                        }
                    }
                    val filter = IntentFilter().apply {
                        addAction(Intent.ACTION_SCREEN_OFF)
                        addAction(Intent.ACTION_SCREEN_ON)
                        addAction(Intent.ACTION_USER_PRESENT)
                    }
                    registerReceiver(receiver, filter)
                }

                override fun onCancel(arguments: Any?) {
                    unregisterReceiver(receiver)
                    receiver = null
                }
            }
        )
    }
}
