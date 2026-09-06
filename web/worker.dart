import 'package:drift/wasm.dart';

void main() {
  // Ana iş parçacığındaki WasmDatabase.open() çağrısını dinler ve eşleşir
  WasmDatabase.workerMainForOpen();
}
