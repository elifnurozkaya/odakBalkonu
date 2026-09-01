// test/core/config/app_config_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:odak_balkonu/core/config/app_config.dart';

void main() {
  group('AppConfig Yapılandırma Testleri', () {
    test(
      'Riverpod container üzerinden varsayılan yapılandırma değerleri doğru okunmalıdır',
      () {
        // Arrange
        final container = ProviderContainer();

        // Act
        final config = container.read(appConfigProvider);

        // Assert
        expect(config.maxSessionDurationMinutes, 720);
        expect(config.thirstDurationHours, 24);
      },
    );

    test('Test ortamında yapılandırma değerleri ezilebilmelidir (Override)', () {
      // Arrange
      final container = ProviderContainer(
        overrides: [
          // Testlerin hızlı çalışması için bekleme süresini 24 saatten 1 saate düşürüyoruz
          appConfigProvider.overrideWithValue(
            const AppConfig(thirstDurationHours: 1),
          ),
        ],
      );

      // Act
      final testConfig = container.read(appConfigProvider);

      // Assert
      expect(testConfig.thirstDurationHours, 1);
    });
  });
}
