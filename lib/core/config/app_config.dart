// lib/core/config/app_config.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppConfig {
  // Hazır geri sayım süreleri ve oturum
  final int minSessionDurationMinutes;
  final int maxSessionDurationMinutes;

  // Bitki büyüme ve sulama eşikleri
  final int thirstDurationHours;
  final int wiltingDurationHours;
  final int requiredWateringForAdult;

  const AppConfig({
    this.minSessionDurationMinutes = 1,
    this.maxSessionDurationMinutes = 720, // 12 saat
    this.thirstDurationHours = 24,
    this.wiltingDurationHours = 48,
    this.requiredWateringForAdult = 13,
  });
}

// UI'ın doğrudan erişimini kısıtlamak ve testlerde override edebilmek için Riverpod Provider'ı
final appConfigProvider = Provider<AppConfig>((ref) {
  return const AppConfig();
});
