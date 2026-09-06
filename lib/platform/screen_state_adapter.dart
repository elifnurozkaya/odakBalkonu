import 'package:flutter/services.dart';
import 'package:odak_balkonu/platform/platform_screen_state.dart';

class ScreenStateAdapter {
  // Kanal adlandırması sabit bir sözleşmeye bağlandı
  static const EventChannel _channel = EventChannel(
    'odak_balkonu/screen_state',
  );

  Stream<PlatformScreenState> get screenStateStream {
    return _channel
        .receiveBroadcastStream()
        .map((dynamic event) {
          final String state = event.toString();

          switch (state) {
            case 'screen_on':
              return PlatformScreenState.on;
            case 'screen_off':
              return PlatformScreenState.off;
            case 'user_present':
              return PlatformScreenState.unlocked;
            default:
              // Desteklenmeyen veya belirsiz durumlar için açık fallback
              return PlatformScreenState.unknown;
          }
        })
        .handleError((error) {
          // Platform hatalarının Flutter uygulamasını çökertmesini engelle
          return PlatformScreenState.unknown;
        });
  }
}
