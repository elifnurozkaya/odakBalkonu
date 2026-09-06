package io.github.elifnurozkaya.yeserenzaman

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel

class ScreenStateAdapter(messenger: BinaryMessenger, private val context: Context) : EventChannel.StreamHandler {
    private val channel = EventChannel(messenger, "odak_balkonu/screen_state")
    private var receiver: BroadcastReceiver? = null

    init {
        channel.setStreamHandler(this)
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        receiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent) {
                when (intent.action) {
                    Intent.ACTION_SCREEN_OFF -> events?.success("screen_off")
                    Intent.ACTION_SCREEN_ON -> events?.success("screen_on")
                    Intent.ACTION_USER_PRESENT -> events?.success("user_present")
                }
            }
        }
        val filter = IntentFilter().apply {
            addAction(Intent.ACTION_SCREEN_OFF)
            addAction(Intent.ACTION_SCREEN_ON)
            addAction(Intent.ACTION_USER_PRESENT)
        }
        context.registerReceiver(receiver, filter)
    }

    override fun onCancel(arguments: Any?) {
        receiver?.let {
            context.unregisterReceiver(it)
            receiver = null
        }
    }
}