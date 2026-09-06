import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:flutter/foundation.dart';

QueryExecutor openConnection() {
  return DatabaseConnection.delayed(
    Future(() async {
      // Worker ve WASM dosyalarını kullanarak tarayıcıda SQLite'ı başlatır
      final result = await WasmDatabase.open(
        databaseName: 'prototype_db',
        sqlite3Uri: Uri.parse('sqlite3.wasm'),
        driftWorkerUri: Uri.parse('drift_worker.dart.js'),
      );

      if (result.missingFeatures.isNotEmpty) {
        // OPFS desteklenmiyorsa (örn. Gizli Mod veya eski tarayıcılar) IndexedDB fallback devreye girer
        debugPrint(
          'OPFS kısıtlaması algılandı. Fallback kullanılıyor: ${result.missingFeatures}',
        );
      }

      return result.resolvedExecutor;
    }),
  );
}
