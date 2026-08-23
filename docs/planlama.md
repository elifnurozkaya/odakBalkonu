# Yeşeren Zaman — Geliştirme Planı

## 1. Planın amacı

Bu plan, [prd.md](C:/Users/USER/odakBalkonu/prd.md) sürüm 0.3’te tanımlanan yerel MVP’yi görev bazlı olarak geliştirmek için hazırlanmıştır.

Planın hedefleri:

- İşleri teknik bağımlılıklarına göre sıralamak,
- Büyük özellikleri yönetilebilir epiklere bölmek,
- Her epiğin tamamlanma koşulunu açıkça belirlemek,
- Öğrenme, uygulama ve test çalışmalarını birlikte planlamak,
- Trello görevlerine dönüştürülebilecek bir iş kırılımı oluşturmak.

## 2. Kabul edilen teknik kararlar

- Flutter ile Android ve Web geliştirilecek.
- Teknik Flutter proje adı `odak_balkonu` olacak.
- Android paket kimliği `io.github.elifnurozkaya.yeserenzaman` olacak.
- Feature-first MVVM, Repository ve gerektiği yerde Domain katmanı kullanılacak.
- State management ve dependency injection için Riverpod kullanılacak.
- Başlangıçta Riverpod code generation kullanılmayacak.
- Ürün verileri Drift üzerinde saklanacak.
- Cihaza özgü basit tercihler bir SettingsRepository üzerinden yönetilecek.
- Navigasyon için `go_router` kullanılacak.
- Balkon, mantıksal yerleşim alanlarına bağlı Flutter widget’larıyla oluşturulacak.
- Flame veya başka bir oyun motoru kullanılmayacak.
- Geçici görsellerle geliştirme yapılabilecek.
- MVP içeriği 3 bitki, 4 saksı ve 6 dekorasyondan oluşacak.
- Android ve Web geliştirmeleri birbirinden tamamen ayrılmayacak.
- Yerel MVP’de hesap, bulut eşitleme, reklam, kapalı Web uygulamasına push ve harici analiz bulunmayacak.

## 3. Görev büyüklüğü yaklaşımı

Görevler mümkün olduğunca şu büyüklüklerde tutulacak:

- `S`: 2–4 saatlik odaklı çalışma
- `M`: 4–8 saatlik çalışma
- `L`: 8–16 saatlik çalışma
- 16 saati aşan görevler daha küçük görevlere bölünecek.

Süreler kesin teslim taahhüdü değil, epiklerin birbirleriyle kıyaslanması için kullanılacaktır. Öğrenme ve hata çözme süresi tahminlerin içindedir.

## 4. Genel tamamlanma ölçütü

Bir görev yalnızca kod çalıştığında tamamlanmış sayılmaz. İlgili olduğu ölçüde:

- Kabul ölçütü karşılanmış olmalı,
- İş kuralı arayüzden ayrılmış olmalı,
- Gerekli unit/widget/integration testleri yazılmış olmalı,
- Android ve Web davranışı kontrol edilmiş olmalı,
- Kullanıcı metinleri yerelleştirme kaynaklarında bulunmalı,
- Temel erişilebilirlik semantikleri eklenmiş olmalı,
- Sabit değerler merkezi yapılandırmada tutulmalı,
- Öğrenilen önemli kavramlar kısa notlarla belgelenmiş olmalı,
- Lint ve testler hatasız çalışmalı.

---

# Epikler

## E00 — Proje temeli ve geliştirme standartları

**Amaç:** Tekrarlanabilir, test edilebilir ve düzenli bir Flutter geliştirme ortamı kurmak.

**Tahmini efor:** 16–24 saat  
**Bağımlılık:** Yok

### Görevler

- `E00-T01` Kullanılacak Flutter stable sürümünü belirlemek ve sabitlemek.
- `E00-T02` Flutter projesini doğru proje adı ve paket kimliğiyle oluşturmak.
- `E00-T03` Android API 24 minimum ve güncel hedef API yapılandırmasını kontrol etmek.
- `E00-T04` Android ve Chrome üzerinde boş uygulamayı çalıştırmak.
- `E00-T05` Feature-first klasör yapısını oluşturmak.
- `E00-T06` Lint, formatlama ve analiz kurallarını yapılandırmak.
- `E00-T07` Test klasörleri ve test adlandırma standartlarını belirlemek.
- `E00-T08` Git çalışma düzenini belirlemek: `main` ve kısa ömürlü özellik dalları.
- `E00-T09` GitHub Actions üzerinde analiz ve test iş akışını kurmak.
- `E00-T10` Kullanılacak paketlerin amacını ve seçim gerekçesini belgelemek.
- `E00-T11` Uygulama yapılandırması ve dengeleme değerleri için merkezi yapı hazırlamak.

### Öğrenme hedefleri

- Flutter proje yapısı
- `pubspec.yaml`
- Paket kimliği ve Flutter proje adı farkı
- Lint, test ve CI kavramları
- Feature-first yapı

### Kabul ölçütleri

- Proje Android ve Web’de açılmalı.
- Analiz ve örnek testler çalışmalı.
- CI aynı kontrolleri otomatik çalıştırmalı.
- Klasör yapısında UI, domain, data ve platform sorumlulukları anlaşılır olmalı.

---

## E01 — Teknik risk prototipleri

**Amaç:** Projenin en riskli platform davranışlarını ana geliştirmeden önce doğrulamak.

**Tahmini efor:** 24–40 saat  
**Bağımlılık:** E00

### Görevler

- `E01-T01` Drift ile Android’de örnek kayıt ekleme, okuma ve kalıcılık denemesi yapmak.
- `E01-T02` Drift’in Web’de desteklenen tarayıcı depolama seçeneklerini denemek.
- `E01-T03` Web sayfası yenilendiğinde örnek verinin korunduğunu doğrulamak.
- `E01-T04` Android’de ekran kilidi ile başka uygulamaya geçiş olaylarını gözlemlemek.
- `E01-T05` Gerekirse Kotlin platform channel prototipi hazırlamak.
- `E01-T06` Android foreground service ve kalıcı bildirim prototipi yapmak.
- `E01-T07` Ekran kapalıyken kısa bir geri sayımın tamamlanmasını denemek.
- `E01-T08` Web arka plan sekmesinde timestamp tabanlı zamanlayıcıyı denemek.
- `E01-T09` Web Locks ve BroadcastChannel ile iki sekmenin koordinasyonunu denemek.
- `E01-T10` Sekme kapatma ve yeniden açma sırasında kontrol noktası kurtarmasını denemek.
- `E01-T11` Sonuçları ve seçilen uygulama yöntemlerini teknik karar olarak kaydetmek.

### Kabul ölçütleri

- Android’de ekran kilidi ve uygulama değiştirme ayrımının nasıl yönetileceği belli olmalı.
- Web’de tek oturum sahibinin nasıl belirleneceği kanıtlanmış olmalı.
- Drift Web depolamasının kullanılabilirliği doğrulanmalı.
- Başarısız yaklaşım ve platform sınırlamaları belgelenmeli.

---

## E02 — Ortak mimari ve veri altyapısı

**Amaç:** Özelliklerin ortak kullanacağı domain, repository ve veri tabanı temelini kurmak.

**Tahmini efor:** 24–36 saat  
**Bağımlılık:** E00, E01

### Görevler

- `E02-T01` Feature, view, view model, repository ve service sorumluluklarını tanımlamak.
- `E02-T02` Riverpod ile dependency injection düzenini kurmak.
- `E02-T03` Veritabanı bağlantısı ve yaşam döngüsünü yapılandırmak.
- `E02-T04` İlk veritabanı sürümünü ve migration yaklaşımını oluşturmak.
- `E02-T05` Repository arayüzü ve Drift uygulaması için örnek hazırlamak.
- `E02-T06` Testlerde kullanılacak fake repository düzenini kurmak.
- `E02-T07` Sistem saatine doğrudan bağımlılığı kaldıracak Clock soyutlaması oluşturmak.
- `E02-T08` Global UUID üretim yaklaşımını eklemek.
- `E02-T09` Domain hata türlerini ve kullanıcıya gösterilecek hata dönüşümünü tasarlamak.
- `E02-T10` Atomik transaction çalıştırma yaklaşımını test etmek.
- `E02-T11` Uygulama başlatma ve yerel veriyi hazırlama akışını oluşturmak.

### Kabul ölçütleri

- UI doğrudan Drift’e erişmemeli.
- Repository’ler testlerde fake uygulamalarla değiştirilebilmeli.
- Saat ilerletilerek zaman bağımlı kurallar test edilebilmeli.
- Veritabanı şema yükseltme mekanizması bulunmalı.

---

## E03 — Uygulama kabuğu, navigasyon ve tema

**Amaç:** Bütün ana ekranlara erişilebilen responsive uygulama iskeletini oluşturmak.

**Tahmini efor:** 18–28 saat  
**Bağımlılık:** E00, E02

### Görevler

- `E03-T01` Material 3 tabanlı tema ve temel renk sistemini oluşturmak.
- `E03-T02` Tipografi, boşluk ve kontrol boyutu kurallarını belirlemek.
- `E03-T03` `go_router` route yapısını oluşturmak.
- `E03-T04` Balkon, Odaklanma, Pazar ve İstatistikler için placeholder ekranlar eklemek.
- `E03-T05` Android alt navigasyonunu oluşturmak.
- `E03-T06` Web için responsive yan/üst navigasyonu oluşturmak.
- `E03-T07` Ayarlar ve Envanter erişim noktalarını eklemek.
- `E03-T08` Türkçe ve İngilizce yerelleştirme altyapısını kurmak.
- `E03-T09` Tema bileşenlerini widget testleriyle kontrol etmek.
- `E03-T10` Büyük yazı boyutunda temel navigasyonu denemek.

### Kabul ölçütleri

- Dört ana hedefe Android ve Web’de ulaşılabilmeli.
- Route değişimlerinde seçili navigasyon durumu korunmalı.
- Placeholder ekranlar dar ve geniş ekranlarda taşmamalı.
- Başlangıç metinleri Türkçe ve İngilizce gösterilebilmeli.

---

## E04 — Zamanlayıcı domain kuralları ve temel arayüz

**Amaç:** Platformdan bağımsız kronometre ve geri sayım motorunu geliştirmek.

**Tahmini efor:** 32–48 saat  
**Bağımlılık:** E02, E03

### Görevler

- `E04-T01` Oturum modu, durumu ve geçişlerini modellemek.
- `E04-T02` Başlatma, duraklatma, devam etme, tamamlama ve iptal kurallarını yazmak.
- `E04-T03` Aktif süreyi parçalara ayıran segment modelini oluşturmak.
- `E04-T04` Kronometre için 1 dakika minimum ve 12 saat maksimum kuralını uygulamak.
- `E04-T05` Geri sayım için hazır süreleri eklemek.
- `E04-T06` 1 dakika–12 saat özel süre doğrulamasını eklemek.
- `E04-T07` Altın Yaprak ödül hesaplama fonksiyonunu oluşturmak.
- `E04-T08` Tahmini ödül hesaplamasını eklemek.
- `E04-T09` Kronometre ve geri sayım view model’lerini oluşturmak.
- `E04-T10` Zamanlayıcı seçim ve çalışma ekranlarını oluşturmak.
- `E04-T11` İptal onay akışını eklemek.
- `E04-T12` Domain kurallarını sınır değerleriyle unit test etmek.
- `E04-T13` Zamanlayıcı ekranını widget testleriyle kontrol etmek.

### Kabul ölçütleri

- Duraklatılan süre aktif süreye eklenmemeli.
- Ödül örnekleri doğru hesaplanmalı: 30→1, 60→3, 90→4, 120→6.
- Kronometre 12 saatte otomatik tamamlanmalı.
- Geri sayım sıfırda otomatik tamamlanmalı.
- İptal edilen oturum ödül veya istatistik üretmemeli.

---

## E05 — Oturum kalıcılığı, kurtarma ve tek ödül garantisi

**Amaç:** Zamanlayıcı oturumlarını kapanma ve çökmelere karşı güvenli hâle getirmek.

**Tahmini efor:** 28–44 saat  
**Bağımlılık:** E04

### Görevler

- `E05-T01` Odak oturumu ve aktif segment tablolarını oluşturmak.
- `E05-T02` Aynı anda tek tamamlanmamış oturum kuralını eklemek.
- `E05-T03` Yaklaşık 5 saniyelik güvenli kontrol noktalarını uygulamak.
- `E05-T04` Oturum tamamlama transaction’ını oluşturmak.
- `E05-T05` Cüzdan hareketinde oturum kimliği için unique constraint eklemek.
- `E05-T06` Kısa oturumların ödülsüz fakat tamamlanmış kaydedilmesini sağlamak.
- `E05-T07` Gece yarısını geçen aktif süreyi takvim günlerine bölmek.
- `E05-T08` Uygulama açılışında yarım oturumu duraklatılmış geri yüklemek.
- `E05-T09` Uzun süredir bekleyen oturum açıklamasını eklemek.
- `E05-T10` Devam et, mevcut süreyle tamamla ve iptal et seçeneklerini eklemek.
- `E05-T11` Tekrar açılma ve çift tamamlama senaryolarını test etmek.
- `E05-T12` Ani kapanma sonrası kaybedilebilecek maksimum kontrol noktası süresini doğrulamak.

### Kabul ölçütleri

- Aynı oturum iki kez tamamlanamamalı veya ödüllendirilememeli.
- Uygulamanın kapalı kaldığı süre aktif süreye eklenmemeli.
- Yedi günden eski oturum otomatik silinmemeli.
- Gece yarısı bölünmesi ödülü çoğaltmamalı.
- Yeniden açılan oturum duraklatılmış görünmeli.

---

## E06 — Android zamanlayıcı yaşam döngüsü

**Amaç:** PRD’deki Android’e özel odaklanma davranışlarını tamamlamak.

**Tahmini efor:** 28–44 saat  
**Bağımlılık:** E01, E05

### Görevler

- `E06-T01` Android lifecycle adaptörünü ana mimariye bağlamak.
- `E06-T02` Başka uygulamaya geçildiğinde aktif oturumu duraklatmak.
- `E06-T03` Ekran kilitlendiğinde oturumu devam ettirmek.
- `E06-T04` Aktif oturum sırasında foreground service başlatmak.
- `E06-T05` Oturum durduğunda veya bittiğinde servisi kapatmak.
- `E06-T06` Ekran kapalıyken geri sayım sonucunu uygulamak.
- `E06-T07` Kalıcı bildirimin içeriğini ve kanal ayarlarını düzenlemek.
- `E06-T08` Uygulamaya dönüldüğünde duraklatılma açıklamasını göstermek.
- `E06-T09` Ekranı açık tutma tercihini uygulamak.
- `E06-T10` Kilit, uygulama değiştirme, process kill ve yeniden açma testlerini yapmak.
- `E06-T11` API 24 ve güncel API seviyelerinde davranışı doğrulamak.

### Kabul ölçütleri

- Ekran kilidi çalışma süresini durdurmamalı.
- Başka uygulamaya geçiş çalışma süresini durdurmalı.
- Dönüşte kullanıcı neden duraklatıldığını görmeli.
- Foreground service yalnızca aktif oturum sırasında çalışmalı.
- Ekranı açık tutma ayarı oturum sonunda mutlaka geri alınmalı.

---

## E07 — Web yaşam döngüsü ve çoklu sekme güvenliği

**Amaç:** Web zamanlayıcısını arka plan sekmeleri ve çoklu sekme kullanımında güvenli hâle getirmek.

**Tahmini efor:** 28–44 saat  
**Bağımlılık:** E01, E05

### Görevler

- `E07-T01` Web lifecycle adaptörünü uygulamaya bağlamak.
- `E07-T02` Arka plan sekmesinde timestamp tabanlı ilerlemeyi sağlamak.
- `E07-T03` Pencere küçültülmesinde oturumun devam etmesini sağlamak.
- `E07-T04` Web Locks ile oturum sahibi sekmeyi belirlemek.
- `E07-T05` BroadcastChannel ile durum değişikliklerini diğer sekmelere iletmek.
- `E07-T06` İkinci sekmede mevcut oturumu salt gösterim durumunda açmak.
- `E07-T07` Sahip sekme kapanınca güvenli devir veya duraklatma yapmak.
- `E07-T08` Unique constraint ile çift ödül girişimini engellemek.
- `E07-T09` Sayfa yenileme ve tarayıcı kapanma kurtarmasını test etmek.
- `E07-T10` Chrome, Edge, Firefox, Safari ve Opera test matrisi hazırlamak.
- `E07-T11` Desteklenmeyen tarayıcı API’leri için fallback davranışı eklemek.

### Kabul ölçütleri

- İki sekme aynı oturumu ayrı ayrı ilerletememeli.
- Aynı oturumdan iki ödül oluşmamalı.
- Başka sekmeye geçmek oturumu durdurmamalı.
- Tarayıcı kapatılıp açıldığında kapalı geçen süre eklenmemeli.
- Temel davranış birincil tarayıcı matrisinde doğrulanmalı.

---

## E08 — Altın Yaprak ekonomisi ve Balkon Pazarı

**Amaç:** Ödül, bakiye, ürün kataloğu ve satın alma döngüsünü tamamlamak.

**Tahmini efor:** 28–40 saat  
**Bağımlılık:** E02, E05, E03

### Görevler

- `E08-T01` Cüzdan hareketi ve bakiye hesaplama modelini oluşturmak.
- `E08-T02` Kazanma, harcama ve başlangıç paketi hareket türlerini tanımlamak.
- `E08-T03` Ürün kataloğunu merkezi yapılandırma/veri üzerinden oluşturmak.
- `E08-T04` Tohum, saksı, toprak, dolum ve dekorasyon kategorilerini eklemek.
- `E08-T05` Balkon Pazarı listeleme ve ürün detay arayüzünü oluşturmak.
- `E08-T06` Satın alma transaction’ını oluşturmak.
- `E08-T07` Yetersiz bakiye davranışını eklemek.
- `E08-T08` Sulama kabını tam kapasiteye doldurma satın almasını eklemek.
- `E08-T09` Kısmen dolu kap uyarısını eklemek.
- `E08-T10` Balkon ve Pazar ekranlarında canlı bakiye göstermek.
- `E08-T11` Eşzamanlı/tekrarlanan satın alma girişimlerini test etmek.
- `E08-T12` Hafif, düzenli ve yoğun kullanım için ekonomi simülasyonu hazırlamak.

### Kabul ölçütleri

- Bakiye hareketlerden hesaplanabilmeli.
- Satın alma bakiye düşürme ve envanter eklemeyi atomik yapmalı.
- Yetersiz bakiye envanteri değiştirmemeli.
- Ürün fiyatları UI içine sabitlenmemeli.
- Aynı tohumu birden fazla satın almak mümkün olmalı.

---

## E09 — Envanter ve balkon yerleşimi

**Amaç:** Satın alınan nesnelerin envanterde tutulmasını ve mantıksal balkon alanlarına yerleştirilmesini sağlamak.

**Tahmini efor:** 36–52 saat  
**Bağımlılık:** E08, E03

### Görevler

- `E09-T01` Envanter kayıt ve miktar modellerini oluşturmak.
- `E09-T02` Zemin, duvar/korkuluk ve asmalı slot türlerini modellemek.
- `E09-T03` Başlangıç, ikinci ve son balkon aşamalarını tanımlamak.
- `E09-T04` Bitki ve saksı slot uyumluluk kurallarını oluşturmak.
- `E09-T05` Dekorasyon uyumluluk kurallarını oluşturmak.
- `E09-T06` Balkon sahnesini yatay mantıksal koordinatlarla oluşturmak.
- `E09-T07` Android yatay kaydırma davranışını eklemek.
- `E09-T08` Web geniş ekran yerleşimini eklemek.
- `E09-T09` Boş saksıyı balkona yerleştirme akışını oluşturmak.
- `E09-T10` Boş saksı ve dekorasyonu envantere geri alma akışını oluşturmak.
- `E09-T11` Balkon nesnelerini uyumlu slotlar arasında taşımak.
- `E09-T12` Sürükle-bırak dışında seç-ve-hedefle alternatifi eklemek.
- `E09-T13` Döndürme ve responsive yeniden boyutlandırma testlerini yapmak.

### Kabul ölçütleri

- Nesneler piksel koordinatlarına değil slot kimliğine bağlı olmalı.
- Uyumsuz saksı yanlış slot türüne yerleştirilememeli.
- Balkon yerleşimi yeniden açıldığında korunmalı.
- Klavye veya alternatif kontrollerle yerleştirme yapılabilmeli.
- Kilitli balkon slotları kullanılamamalı.

---

## E10 — Bitki büyüme ve bakım sistemi

**Amaç:** Bitki ekme, sulama, büyüme, solma ve silme döngüsünü tamamlamak.

**Tahmini efor:** 40–60 saat  
**Bağımlılık:** E08, E09, E02

### Görevler

- `E10-T01` Bitki örneği, türü ve büyüme aşaması modellerini oluşturmak.
- `E10-T02` Saksıya toprak ve tohum ekme transaction’ını oluşturmak.
- `E10-T03` Nemli, susamış ve solmuş durumlarını Clock üzerinden hesaplamak.
- `E10-T04` Nemliyken yeniden sulamayı engellemek.
- `E10-T05` Susamış bitkiye başarılı büyüme sulaması uygulamak.
- `E10-T06` Solma sırasında aşama içi ilerlemeyi yalnızca bir kez sıfırlamak.
- `E10-T07` Solmuş bitkinin ilk suyunu iyileştirme olarak işlemek.
- `E10-T08` Sulama kabı kapasitesini transaction içinde azaltmak.
- `E10-T09` 3/5/5 büyüme eşiklerini uygulamak.
- `E10-T10` Yetişkin bitki davranışını eklemek.
- `E10-T11` İki ve beş yetişkin bitkide balkon aşaması açmak.
- `E10-T12` Bitki Günlüğü ekranını oluşturmak.
- `E10-T13` Aşama ilerleme çubuğunu ve durum açıklamalarını eklemek.
- `E10-T14` Canlı bitkinin envantere alınmasını engellemek.
- `E10-T15` Uyarılı ve ayrı onaylı kalıcı bitki silme akışını oluşturmak.
- `E10-T16` Zaman tabanlı bütün kuralları fake Clock ile test etmek.

### Kabul ölçütleri

- Bitki yaklaşık 24 saatte susamış, 48 saatte solmuş olmalı.
- Solma büyüme aşamasını geriletmemeli.
- Solma sıfırlaması birden fazla kez uygulanmamalı.
- Sulama işlemi kabın kapasitesiyle atomik olmalı.
- Yetişkin sayısına göre balkon slotları doğru açılmalı.

---

## E11 — Başlangıç hikâyesi ve etkileşimli eğitim

**Amaç:** Yeni kullanıcının temel oyun döngüsünü anlayarak uygulamaya başlamasını sağlamak.

**Tahmini efor:** 24–40 saat  
**Bağımlılık:** E08, E09, E10, E04

### Görevler

- `E11-T01` İlk çalıştırma ve eğitim durumu modelini oluşturmak.
- `E11-T02` Çizimli hikâye slaytlarının geçici görsellerle akışını hazırlamak.
- `E11-T03` Başlangıç paketini tek seferlik transaction ile vermek.
- `E11-T04` Saksı yerleştirme eğitim adımını oluşturmak.
- `E11-T05` Toprak ekleme eğitim adımını oluşturmak.
- `E11-T06` Tohum ekme eğitim adımını oluşturmak.
- `E11-T07` İlk sulamayı gerçek `1/3` ilerleme olarak uygulamak.
- `E11-T08` İlk odak oturumu başlatma adımını oluşturmak.
- `E11-T09` Hikâye ve eğitim atlama davranışını eklemek.
- `E11-T10` Ayarlar üzerinden hikâye ve eğitimi tekrar açmak.
- `E11-T11` Tekrar eğitiminde gerçek envanteri etkilemeyen demo durumu oluşturmak.
- `E11-T12` Eğitimin yarıda kapanması ve yeniden açılması senaryosunu test etmek.

### Kabul ölçütleri

- Başlangıç paketi yalnızca bir kez verilmeli.
- Eğitim tekrarında ürün tüketilmemeli.
- Eğitim atlanırsa kullanıcı uygulamanın diğer bölümlerine ulaşabilmeli.
- İlk gerçek sulama bitki ilerlemesine yansımalı.

---

## E12 — Ses, oturum uyarıları ve bitki bildirimleri

**Amaç:** Ses tercihlerini ve platforma uygun bildirim davranışlarını tamamlamak.

**Tahmini efor:** 32–48 saat  
**Bağımlılık:** E06, E07, E10, E11

### Görevler

- `E12-T01` AudioService soyutlamasını oluşturmak.
- `E12-T02` Ortam sesi oynatma, durdurma ve döngü davranışını eklemek.
- `E12-T03` Sulama ve ödül efektlerini eklemek.
- `E12-T04` Ortam, efekt ve tüm sesler tercihlerini oluşturmak.
- `E12-T05` Geri sayım öncesi üç ses, titreşim ve sessiz seçeneklerini eklemek.
- `E12-T06` Ses önizleme davranışını eklemek.
- `E12-T07` Desteklenmeyen Web seçeneklerini gizlemek.
- `E12-T08` Oturum sonunda görsel sonucu her koşulda göstermek.
- `E12-T09` Android bakım bildirimi izin açıklamasını eğitim sonuna eklemek.
- `E12-T10` Yaklaşık 24 saatlik susama bildirimini planlamak.
- `E12-T11` Yaklaşık 44 saatlik solma yaklaşımı bildirimini planlamak.
- `E12-T12` Bildirimleri bitki sayısına göre birleştirmek.
- `E12-T13` Günlük iki bildirim sınırını uygulamak.
- `E12-T14` Sulama sonrası bekleyen bildirimleri iptal edip yeniden planlamak.
- `E12-T15` Bildirime dokunulduğunda Balkon ekranını açmak.
- `E12-T16` Web açıkken tarayıcı veya uygulama içi bakım uyarısı göstermek.
- `E12-T17` İzin reddedildiğinde uygulama içi göstergelerin çalışmasını test etmek.

### Kabul ölçütleri

- Tüm sesleri kapatma bütün ses kategorilerini susturmalı.
- Sessiz oturum sonucu yine görsel olarak gösterilmeli.
- Bakım bildirimi izni ilk açılışta sorulmamalı.
- Aynı zaman aralığındaki bitkiler ayrı bildirim oluşturmamalı.
- Web uygulaması kapalıyken bakım push bildirimi beklenmemeli.

---

## E13 — İstatistikler ve aktivite takvimi

**Amaç:** Tamamlanan çalışmaların doğru ve erişilebilir biçimde gösterilmesini sağlamak.

**Tahmini efor:** 24–36 saat  
**Bağımlılık:** E05, E03

### Görevler

- `E13-T01` Toplam aktif süre sorgusunu oluşturmak.
- `E13-T02` Tamamlanan oturum sayısı sorgusunu oluşturmak.
- `E13-T03` Kullanım başlangıcından geçen gün sayısını hesaplamak.
- `E13-T04` Günlük aktif süre sorgularını oluşturmak.
- `E13-T05` Aylık takvim modelini oluşturmak.
- `E13-T06` Pazartesiyle başlayan takvim yerleşimini yapmak.
- `E13-T07` İlk kullanım ayından eski ve gelecek aylara geçişi engellemek.
- `E13-T08` Çalışılan günlerde yaprak simgesi ve semantik açıklama göstermek.
- `E13-T09` Aktivite rengi tercihini eklemek.
- `E13-T10` Gece yarısı bölünmüş oturumları takvimde test etmek.
- `E13-T11` Ödülsüz kısa oturumların çalışılan günü işaretlediğini doğrulamak.
- `E13-T12` Büyük veri miktarında sorgu performansını kontrol etmek.

### Kabul ölçütleri

- Toplamlar tamamlanmış oturumlarla uyumlu olmalı.
- İptal edilen oturumlar istatistiğe girmemeli.
- Gece yarısı iki güne doğru dağılmalı.
- Renk, çalışılan günü belirten tek gösterge olmamalı.
- Kullanıcı izin verilen ay aralığının dışına çıkamamalı.

---

## E14 — Ayarlar, yerelleştirme ve erişilebilirlik tamamlama

**Amaç:** Bütün MVP işlevlerini iki dilde ve temel erişilebilirlik gereksinimleriyle kullanılabilir hâle getirmek.

**Tahmini efor:** 32–48 saat  
**Bağımlılık:** E03–E13

### Görevler

- `E14-T01` Ayarlar ekranındaki bütün tercihleri tek yerde toplamak.
- `E14-T02` Dil değişimini uygulama yeniden başlatılmadan uygulamak.
- `E14-T03` Bütün kullanıcı metinlerini TR/EN kaynaklarına taşımak.
- `E14-T04` Tarih, süre, sayı ve çoğul ifadelerini yerelleştirmek.
- `E14-T05` Etkileşimli kontrollerin semantik etiketlerini denetlemek.
- `E14-T06` Android TalkBack ile ana akışları test etmek.
- `E14-T07` Web klavye navigasyonunu test etmek.
- `E14-T08` Odak göstergelerini görünür hâle getirmek.
- `E14-T09` Dokunma hedeflerini en az 48×48 olacak şekilde denetlemek.
- `E14-T10` Kontrast denetimi yapmak.
- `E14-T11` Büyük yazı ve ekran ölçeklerinde taşmaları düzeltmek.
- `E14-T12` Hareket azaltma tercihini animasyonlara bağlamak.
- `E14-T13` Sürükle-bırak kullanılan tüm akışların alternatifini kontrol etmek.
- `E14-T14` Sesli uyarıların görsel karşılıklarını doğrulamak.

### Kabul ölçütleri

- Temel akışlar Türkçe ve İngilizce tamamlanabilmeli.
- Web’de fare olmadan temel işlemler yapılabilmeli.
- TalkBack kontrolleri anlamlı sırada okuyabilmeli.
- Büyük yazı boyutunda işlev veya içerik kaybı olmamalı.
- Hareket azaltma tercihi animasyonları sadeleştirmeli.

---

## E15 — Görsel içerik, ses varlıkları ve ekonomi dengeleme

**Amaç:** Geçici varlıkları MVP’ye uygun kendi çizimlerin ve dengelenmiş içerikle değiştirmek.

**Tahmini efor:** 40–80 saat; çizim süresine göre değişebilir  
**Bağımlılık:** İlgili özelliklerin çalışan geçici görselleri

### Görevler

- `E15-T01` Dosya adlandırma ve asset klasör standardını belirlemek.
- `E15-T02` Görsel boyut, oran, şeffaflık ve çözünürlük kurallarını belirlemek.
- `E15-T03` Altın Yaprak görselini hazırlamak.
- `E15-T04` Islak ve kuru toprak görsellerini hazırlamak.
- `E15-T05` Üç bitki için dörder sağlıklı büyüme aşaması çizmek.
- `E15-T06` Üç bitki için dörder solgun büyüme aşaması çizmek.
- `E15-T07` Dört saksı görselini hazırlamak.
- `E15-T08` Altı dekorasyon görselini hazırlamak.
- `E15-T09` Başlangıç hikâyesi slaytlarını hazırlamak.
- `E15-T10` Gerekli balkon arka plan ve katmanlarını hazırlamak.
- `E15-T11` Ortam, efekt ve üç oturum sonu sesi için kaynak/lisans kaydı tutmak.
- `E15-T12` Geçici varlıkları nihai varlıklarla değiştirmek.
- `E15-T13` Görselleri farklı ekran yoğunluklarında kontrol etmek.
- `E15-T14` Hafif, düzenli ve yoğun kullanıcı profilleriyle ekonomi simülasyonu yapmak.
- `E15-T15` Fiyat ve büyüme değerlerini kullanıcı testi sonucuna göre düzenlemek.

### Kabul ölçütleri

- Asset değiştirmek domain veya veri kodunu değiştirmeyi gerektirmemeli.
- Üç bitkinin bütün sağlıklı ve solgun aşamaları bulunmalı.
- Görseller Android ve Web’de doğru ölçeklenmeli.
- Kullanılan dış seslerin lisans bilgisi kayıtlı olmalı.
- Balkon kısa sürede tamamen doldurulamayacak kadar dengeli olmalı.

---

## E16 — Veri sıfırlama, sistem testi ve yayın hazırlığı

**Amaç:** MVP’yi güvenli, test edilmiş ve dağıtılabilir duruma getirmek.

**Tahmini efor:** 40–64 saat  
**Bağımlılık:** E04–E15

### Görevler

- `E16-T01` Tüm yerel verileri sıfırlama servisini oluşturmak.
- `E16-T02` Drift verileri ve cihaz tercihlerini aynı kullanıcı işleminde temizlemek.
- `E16-T03` Geri alınamaz veri sıfırlama onay akışını oluşturmak.
- `E16-T04` PRD kabul ölçütlerini test senaryolarına dönüştürmek.
- `E16-T05` İlk kurulumdan yetişkin bitkiye kadar uçtan uca senaryo çalıştırmak.
- `E16-T06` Timer crash/recovery testlerini tekrarlamak.
- `E16-T07` Çift ödül ve çift satın alma saldırı senaryolarını test etmek.
- `E16-T08` Android API 24 ve güncel API cihazlarında smoke test yapmak.
- `E16-T09` Birincil Web tarayıcı matrisini tamamlamak.
- `E16-T10` Offline kullanım testlerini yapmak.
- `E16-T11` Döndürme, dar ekran, geniş ekran ve büyük yazı testlerini yapmak.
- `E16-T12` Balkon performansı ve gereksiz yeniden çizimleri incelemek.
- `E16-T13` Veritabanı migration testini yapmak.
- `E16-T14` Android release build oluşturmak.
- `E16-T15` Web release build oluşturmak ve statik hosting denemesi yapmak.
- `E16-T16` Gizlilik politikası için gerçek veri akışları listesini hazırlamak.
- `E16-T17` Google Play Data Safety taslağını uygulamanın gerçek davranışıyla karşılaştırmak.
- `E16-T18` Bilinen sınırlamalar ve sonraki aşama backlog’unu belgelemek.

### Kabul ölçütleri

- PRD bölüm 10’daki bütün kabul ölçütleri test edilmiş olmalı.
- Kritik ve yüksek öncelikli bilinen hata kalmamalı.
- Android ve Web release build’leri üretilebilmeli.
- Veri sıfırlama bütün yerel kullanıcı verilerini kaldırmalı.
- Uygulamanın topladığı ve sakladığı veriler açıklanabilir olmalı.

---

# Epik bağımlılık sırası

```text
E00 Proje temeli
 ├─ E01 Teknik riskler
 ├─ E02 Mimari ve veri
 │   ├─ E03 Uygulama kabuğu
 │   ├─ E04 Zamanlayıcı
 │   │   └─ E05 Kalıcılık ve kurtarma
 │   │       ├─ E06 Android yaşam döngüsü
 │   │       ├─ E07 Web çoklu sekme
 │   │       └─ E13 İstatistikler
 │   └─ E08 Ekonomi ve Pazar
 │       └─ E09 Envanter ve Balkon
 │           └─ E10 Bitki sistemi
 │               ├─ E11 Eğitim
 │               └─ E12 Ses ve bildirimler
 └─ E14 Erişilebilirlik ve yerelleştirme denetimi
     └─ E15 Nihai içerik ve dengeleme
         └─ E16 Sistem testi ve yayın hazırlığı
```

Erişilebilirlik, yerelleştirme ve görsel varlıklar şemada sonlara yakın görünse de tamamen sona bırakılmayacak. Her özellik geliştirilirken temel gereksinimler uygulanacak; E14 ve E15 bunların bütünsel denetim ve tamamlama epikleridir.

# Ana teslim kapıları

- **Kapı A — Teknik temel:** E00–E03 tamamlandı.
- **Kapı B — Güvenilir odak motoru:** E04–E07 tamamlandı.
- **Kapı C — Temel ürün döngüsü:** E08–E10 tamamlandı.
- **Kapı D — Kullanılabilir MVP:** E11–E14 tamamlandı.
- **Kapı E — Yayın adayı:** E15–E16 tamamlandı.

