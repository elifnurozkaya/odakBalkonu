**E01-T02: Drift Web Depolama Seçenekleri ve Fallback Stratejisi**

* **Birincil Yöntem:** OPFS (Origin Private File System) üzerinden `sqlite3.wasm`. En yüksek performanslı okuma/yazma döngüsünü sağlar.
* **Fallback Yöntemi:** IndexedDB. OPFS bulunmayan tarayıcılarda otomatik olarak devreye girer.
* **Asset Gereksinimleri:** `sqlite3.wasm` ve `drift_worker.dart.js` dosyaları build aşamasında projenin `web/` klasörüne kopyalanmalıdır.
* **Platform Sınırlamaları:** Safari'nin 7 günlük inaktif sekme temizliği ve Firefox/Chrome gizli mod kısıtlamaları nedeniyle Web platformundaki veriler %100 kalıcı sayılamaz. Bu kısıtlamalara karşı kullanıcıya gerekli arayüz uyarıları gösterilmelidir.