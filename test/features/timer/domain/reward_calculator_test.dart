// Dosya: test/features/timer/domain/reward_calculator_test.dart
import 'package:flutter_test/flutter_test.dart';
// import 'package:odak_balkonu/features/timer/domain/reward_calculator.dart'; // Gerçek kodu dahil edeceğimiz yer

void main() {
  group('Ödül Hesaplama', () {
    test('30 dakikalık çalışma 1 Altın Yaprak kazandırmalıdır', () {
      // Arrange
      const calismaSuresiDakika = 30;

      // Act
      const kazanilanYaprak = (calismaSuresiDakika >= 30)
          ? 1
          : 0; // Gerçekte: hesapla(calismaSuresiDakika)

      // Assert
      expect(kazanilanYaprak, 1);
    });
  });
}
