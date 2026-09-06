### E01-T01: Drift ile Android Veri Kalıcılığı Prototipi

**Kullanılan Paketler ve Sürümler**
* drift: "2.34.3"
* sqlite3_flutter_libs: "3.5.2"
* path_provider: "2.1.6"

**Gözlemler ve Doğrulamalar**
* Temel CRUD işlemleri (Ekleme, Okuma, Silme) başarıyla uygulandı.
* Android'de `getApplicationDocumentsDirectory()` yolu kullanılarak oluşturulan veritabanı dosyasının Hot Restart sonrasında ve uygulama işletim sistemi tarafından tamamen kapatıldığında (swipe-to-kill) korunduğu doğrulandı.
* NativeDatabase bağlantısının arka planda kurulması süreçte herhangi bir takılma veya kritik hataya yol açmadı.

**Üretim Şeması Uyarısı**
* Prototip sürecinde kullanılan `MockItems` tablosu tamamen yaşam döngüsü testi amaçlıdır. Projenin asıl üretim veri modeline (bitkiler, oturumlar vs.) taşınmayacaktır.