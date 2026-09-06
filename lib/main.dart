import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

void main() {
  runApp(const LifecycleTestApp());
}

class LifecycleTestApp extends StatefulWidget {
  const LifecycleTestApp({super.key});

  @override
  State<LifecycleTestApp> createState() => _LifecycleTestAppState();
}

class _LifecycleTestAppState extends State<LifecycleTestApp>
    with WidgetsBindingObserver {
  static const EventChannel _screenStateChannel = EventChannel(
    'odak_balkonu/screen_state',
  );
  StreamSubscription? _screenStateSubscription;
  final List<String> _logs = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _addLog("Uygulama başlatıldı");

    // Android sinyallerini dinle
    _screenStateSubscription = _screenStateChannel
        .receiveBroadcastStream()
        .listen((event) {
          _addLog("Platform Sinyali: $event");
        });
  }

  @override
  void dispose() {
    _screenStateSubscription?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _addLog("State değişti: ${state.name}");
  }

  void _addLog(String message) {
    final timestamp = DateTime.now().toIso8601String().split('T').last;
    final log = "[$timestamp] $message";
    debugPrint(log);
    setState(() {
      _logs.insert(0, log);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lifecycle Testi')),
        body: ListView.builder(
          itemCount: _logs.length,
          itemBuilder: (context, index) => ListTile(title: Text(_logs[index])),
        ),
      ),
    );
  }
}
