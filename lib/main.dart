import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:odak_balkonu/database/app_database.dart'; // Proje isminize göre güncelleyin

// Veritabanı bağlantımızı global olarak başlatıyoruz
final db = AppDatabase();

void main() {
  runApp(const MaterialApp(home: DriftTestScreen()));
}

class DriftTestScreen extends StatefulWidget {
  const DriftTestScreen({super.key});

  @override
  State<DriftTestScreen> createState() => _DriftTestScreenState();
}

class _DriftTestScreenState extends State<DriftTestScreen> {
  List<MockItem> _items = [];

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  // Ekrana verileri çek (Read)
  Future<void> _loadItems() async {
    final items = await db.getAllItems();
    setState(() {
      _items = items;
    });
  }

  // Yeni veri ekle (Create)
  Future<void> _addItem() async {
    await db.insertItem(
      const MockItemsCompanion(content: drift.Value('Yeni Test Kaydı')),
    );
    _loadItems();
  }

  // Veriyi sil (Delete)
  Future<void> _deleteItem(MockItem item) async {
    await db.deleteItem(item);
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drift Prototip Testi')),
      body: _items.isEmpty
          ? const Center(child: Text('Henüz kayıt yok.'))
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  title: Text('${item.id} - ${item.content}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteItem(item),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
