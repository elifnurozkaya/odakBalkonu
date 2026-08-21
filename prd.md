# Yeşeren Zaman — Product Requirements Document

> Durum: Taslak  
> Sürüm: 0.3  
> Platformlar: Android ve Web  
> Teknoloji: Flutter  
> Son güncelleme: 21 Ağustos 2026

## Proje Kimliği

- **Uygulama adı:** Yeşeren Zaman
- **Slogan:** Odağını büyüt, balkonunu yeşert
- **Yerel proje klasörü:** `odakBalkonu`
- **GitHub repo adı:** `odakBalkonu`
- **Teknik Flutter proje adı:** `odak_balkonu`
- **Uygulama içi para birimi:** Altın Yaprak

## 1. Ürün Özeti

Yeşeren Zaman; kullanıcının odaklanarak geçirdiği süreyi Altın Yaprağa
dönüştüren ve bu Altın Yapraklarla kişisel bir balkon geliştirmesini sağlayan,
oyunlaştırılmış bir odaklanma uygulamasıdır.

Kullanıcı çalıştıkça bitki, saksı ve dekorasyon satın alır; balkonundaki
bitkilerin bakımını yapar ve zaman içinde kendi görsel alanını oluşturur.

Uygulama klasik Pomodoro düzenini zorunlu tutmaz. Kullanıcı çalışma
süresini kendi ihtiyacına göre belirleyebilir.

## 2. Problem

Mevcut odaklanma uygulamalarının önemli bir bölümü:

- Kullanıcıyı sabit Pomodoro sürelerine zorlar.
- Çalışma sonrasında uzun vadeli ve kişisel bir ödül sunmaz.
- İstatistikleri gösterir ancak duygusal bağ kurulabilecek bir ilerleme alanı oluşturmaz.

Yeşeren Zaman, çalışmayı görsel ve kalıcı bir balkon gelişimine
dönüştürerek kullanıcı motivasyonunu artırmayı amaçlar.

## 3. Ürün Vizyonu

Kullanıcının her odaklanma oturumundan sonra balkonunda gözle görülür
bir ilerleme hissettiği, sakin ve kişisel bir dijital yaşam alanı oluşturmak.

Uzun vadede balkon sistemi; açık bahçe ve farklı yaşam alanları gibi
yeni ortamlara genişletilebilmelidir.

## 4. Hedef Kullanıcı

Birincil hedef kullanıcı:

- Ders veya kişisel projeler için düzenli odaklanmak isteyen,
- Klasik Pomodoro yöntemini fazla kısıtlayıcı bulan,
- Bitki yetiştirme, dekorasyon ve koleksiyon mekaniklerinden hoşlanan,
- Görsel ilerlemeyle motive olan kişidir.

## 5. Temel Ürün Döngüsü

1. Kullanıcı çalışma modunu seçer; geri sayım modunda hedef süreyi belirler.
2. Zamanlayıcıyı başlatır ve çalışır.
3. Tamamlanan süreye göre Altın Yaprak kazanır.
4. Kazandığı Altın Yapraklarla Balkon Pazarı'ndan ürün alır.
5. Satın aldığı ürünleri balkonunda kullanır veya konumlandırır.
6. Bitkilerinin bakımını yapmak ve balkonunu geliştirmek için yeniden odaklanır.

## 6. MVP Kapsamı

İlk kullanılabilir sürüm aşağıdaki özelliklerden oluşacaktır.

### 6.1 Odaklanma Zamanlayıcısı

Kullanıcı iki farklı çalışma modu arasından seçim yapabilmelidir:

1. Kronometre
2. Geri sayım

Her iki modda da yalnızca aktif çalışma süresi hesaplanır. Zamanlayıcının
duraklatıldığı sırada geçen süre çalışmaya dahil edilmez.

#### 6.1.1 Kronometre Modu

- Kronometre sıfırdan başlayarak ileri doğru saymalıdır.
- Kronometre en fazla 12 saatlik aktif çalışma süresine izin vermelidir.
- Aktif süre 12 saate ulaştığında oturum otomatik tamamlanmalıdır.
- Kullanıcı kronometreyi duraklatabilmeli ve yeniden başlatabilmelidir.
- Oturum, kullanıcı “Tamamla” seçeneğine bastığında tamamlanmalıdır.
- Tamamlanan aktif süre çalışma istatistiklerine eklenmelidir.
- Kazanılan Altın Yaprak otomatik olarak kullanıcının bakiyesine eklenmelidir.
- Kullanıcı oturumu iptal ederse süre ve ödül kaydedilmemelidir.
- İptal işleminden önce kullanıcıdan onay alınmalıdır.
- Kronometrenin altında, kullanıcının o anda oturumu tamamlaması
  durumunda kazanacağı Altın Yaprak miktarı gösterilmelidir.
- Tahmini kazanç bilgisi yarı saydam ve ikincil önemde görünmelidir.
- Tahmini kazanç, aktif çalışma süresi ilerledikçe otomatik güncellenmelidir.

Örnek gösterim:

> Şimdi tamamlarsan: 1 Altın Yaprak

#### 6.1.2 Geri Sayım Modu

- Kullanıcı 30, 60, 90 veya 120 dakikalık hazır sürelerden birini doğrudan
  seçebilmelidir.
- Kullanıcı hazır süreler yerine özel süreyi elle girebilmelidir.
- Özel geri sayım süresi en az 1 dakika, en fazla 12 saat olmalıdır.
- Süre seçim ekranında, seçilen çalışma tamamlandığında kazanılacak
  Altın Yaprak miktarı gösterilmelidir.
- Kazanç bilgisi kullanıcı süreyi değiştirdiğinde anında güncellenmelidir.
- Kullanıcı geri sayımı duraklatabilmeli ve yeniden başlatabilmelidir.
- Duraklatma sırasında geri sayım ilerlememelidir.
- Geri sayım sıfıra ulaştığında oturum otomatik olarak tamamlanmalıdır.
- Kullanıcıya çalışmaya devam etmek isteyip istemediği sorulmamalıdır.
- Tamamlanan süre istatistiklere otomatik olarak eklenmelidir.
- Kazanılan Altın Yaprak bakiyeye yalnızca bir kez ve otomatik olarak
  eklenmelidir.
- Kullanıcı isterse tamamlanan oturumdan sonra yeni bir oturum başlatabilmelidir.
- Kullanıcı geri sayımı iptal etmek isterse işlemden önce onay alınmalıdır.

Örnek gösterim:

> Bu oturum tamamlandığında: 4 Altın Yaprak

#### 6.1.3 Oturum Sonu Bildirimi

Geri sayım başlamadan önce kullanıcı oturum sonu uyarısını seçebilmelidir.

MVP'de aşağıdaki seçenekler bulunmalıdır:

- En az üç farklı bildirim sesi
- Yalnızca titreşim
- Sessiz

Ek davranışlar:

- Kullanıcı sesleri seçim ekranında önceden dinleyebilmelidir.
- Titreşim yalnızca destekleyen cihazlarda gösterilmelidir.
- Web platformlarında desteklenmeyen seçenekler
  kullanıcıya sunulmamalıdır.
- Sessiz mod seçilse bile oturumun tamamlandığı görsel olarak
  bildirilmelidir.
- Bildirim tercihi ödül ve oturum tamamlama davranışını etkilememelidir.

#### 6.1.4 Aktif Oturumun Yaşam Döngüsü

Aktif veya duraklatılmış bir oturumun durumu uygulamanın yaşam döngüsü
değişikliklerinde korunmalıdır.

##### Android Davranışı

- Kullanıcının başka bir uygulamaya geçmesi aktif oturumu otomatik
  duraklatmalıdır.
- Ekranın zaman aşımı nedeniyle kapanması veya cihazın kilitlenmesi
  aktif oturumu durdurmamalıdır.
- Ekran kapalıyken çalışma süresi ilerlemeye devam etmelidir.
- Ekran kapalıyken görsel animasyon ve gereksiz arayüz güncellemeleri
  çalıştırılmamalıdır.
- Geri sayım ekran kapalıyken tamamlanırsa oturum otomatik
  tamamlanmalı ve seçilen oturum sonu bildirimi uygulanmalıdır.
- Başka bir uygulamada geçirilen süre aktif çalışma süresine
  eklenmemelidir.
- Kullanıcı başka bir uygulamaya geçtikten sonra Yeşeren Zaman'a
  döndüğünde oturumun duraklatıldığı bildirilmelidir.
- Kullanıcı duraklatılan oturuma devam edebilmeli, oturumu
  tamamlayabilmeli veya iptal edebilmelidir.
- Duraklatılmış bir geri sayım, kullanıcı oturuma devam edene kadar
  ilerlememeli ve tamamlanmış sayılmamalıdır.

##### Ekranı Açık Tutma Ayarı

- Kullanıcı isterse çalışma sırasında ekranın açık tutulmasını
  etkinleştirebilmelidir.
- Bu seçenek varsayılan olarak kapalı olmalıdır.
- Seçenek yalnızca aktif çalışma oturumu sırasında uygulanmalıdır.
- Oturum duraklatıldığında, tamamlandığında veya iptal edildiğinde
  ekranın normal kapanma davranışı geri yüklenmelidir.
- Ayarın pil tüketimini artırabileceği kullanıcıya belirtilmelidir.

##### Web Davranışı

- Kullanıcının başka bir tarayıcı sekmesine geçmesi aktif oturumu
  durdurmamalıdır.
- Tarayıcı penceresinin simge durumuna küçültülmesi aktif oturumu
  durdurmamalıdır.
- Yeşeren Zaman sekmesi açık kaldığı sürece oturum ilerlemelidir.
- Kullanıcı Yeşeren Zaman sekmesini veya tarayıcı penceresini tamamen
  kapattığında oturum duraklatılmış kabul edilmelidir.
- Geri sayım kullanıcı başka bir pencere veya sekmedeyken sıfıra
  ulaşırsa oturum otomatik tamamlanmalıdır.
- Tamamlanan oturumun Altın Yaprak ödülü otomatik eklenmeli ve
  desteklenen platformlarda oturum sonu bildirimi gösterilmelidir.
- Uygulamanın kapalı olduğu süre aktif çalışma süresine eklenmemelidir.

##### Web'de Birden Fazla Sekme

- Aynı tarayıcı profili içinde yalnızca bir aktif odaklanma oturumu
  bulunabilmelidir.
- Yeşeren Zaman ikinci bir sekmede açılırsa yeni bir oturum oluşturmak
  yerine mevcut oturumun durumu gösterilmelidir.
- Aynı tamamlanmış oturum birden fazla sekme tarafından birden fazla
  kez kaydedilememeli veya ödüllendirilememelidir.

##### Uygulamanın Kapanması ve Oturum Kurtarma

- Aktif veya duraklatılmış oturumun son güvenli durumu yerel olarak
  saklanmalıdır.
- Uygulama kullanıcı tarafından kapatıldığında mevcut oturum
  silinmemelidir.
- Uygulama çöktüğünde, işletim sistemi tarafından sonlandırıldığında
  veya cihaz beklenmedik şekilde kapandığında son kaydedilen aktif süre
  korunmalıdır.
- Uygulama yeniden açıldığında tamamlanmamış oturum duraklatılmış
  olarak geri yüklenmelidir.
- Uygulamanın kapalı olduğu sırada geçen süre çalışmaya eklenmemelidir.
- Kurtarılan bir oturum kendiliğinden tamamlanmış sayılmamalı ve
  kendiliğinden Altın Yaprak üretmemelidir.
- Aynı oturum için birden fazla istatistik kaydı veya ödül işlemi
  oluşturulmamalıdır.
- Aynı anda yalnızca bir tamamlanmamış oturum bulunabilmelidir.
- Duraklatılmış oturum kullanıcı kararı olmadan otomatik olarak
  silinmemelidir.
- Kullanıcı geri yüklenen oturuma devam edebilmeli, oturumu mevcut aktif
  süresiyle tamamlayabilmeli veya iptal edebilmelidir.
- Oturum bir günden uzun süredir duraklatılmışsa kurtarma ekranında
  oturumun uzun süredir beklediği açıklanmalıdır.
- Yedi gün veya daha uzun süredir bekleyen oturumlar da otomatik
  tamamlanmamalı, ödüllendirilmemeli veya silinmemelidir.
- Kurtarılan oturum tamamlanırsa yalnızca daha önce kaydedilmiş ve daha
  sonra eklenen aktif çalışma süreleri hesaba katılmalıdır.

### 6.2 Sanal Para Sistemi

Başlangıç ekonomi kuralı:

Ödül hesaplanırken yalnızca kullanıcının aktif olarak çalıştığı süre
dikkate alınır. Zamanlayıcının duraklatıldığı süreler çalışma süresine
dahil edilmez.

- 30 dakikadan kısa tamamlanmış oturumlar ödül kazandırmaz.
- 30–59 dakika arasındaki tamamlanmış oturumlar 1 Altın Yaprak kazandırır.
- 60 dakika ve üzerindeki oturumlarda her tam saat 3 Altın Yaprak kazandırır.
- Tam saatlerden sonra en az 30 aktif dakika kalmışsa 1 ek Altın Yaprak
  verilir.
- 30 dakikadan kısa oturumlar ödül kazandırmasa bile kullanıcı oturumu
  tamamlanmış olarak işaretlediyse çalışma istatistiklerine eklenir.
- İptal edilen oturumlar ödül ve tamamlanmış çalışma süresi üretmez.

#### 6.2.1 Tamamlanmış Oturum

Bir oturum aşağıdaki durumlardan birinde tamamlanmış kabul edilir:

- Kronometre modunda kullanıcının “Tamamla” seçeneğine basması
- Geri sayım modunda sürenin sıfıra ulaşması

Geri sayımın sıfıra ulaşmasıyla istatistik kaydı ve ödül işlemi
otomatik gerçekleştirilir. Aynı oturum için birden fazla ödül işlemi
oluşturulamaz.

Ödül, oturum tamamlandıktan sonra kısa bir animasyonla gösterilmeli ve
kullanıcının bakiyesine eklenmelidir.

#### 6.2.2 Gece Yarısını Geçen Oturumlar

- Gece yarısını geçen oturumların aktif çalışma süresi yerel takvim
  günlerine bölünmelidir.
- Örneğin 23.30–00.30 arasındaki 60 dakikalık aktif çalışma, ilk güne
  30 dakika ve sonraki güne 30 dakika olarak yazılmalıdır.
- Tamamlanan oturum sayısı oturumun tamamlandığı güne eklenmelidir.
- Altın Yaprak ödülü bölünen günlük sürelerden ayrı ayrı değil, oturumun
  toplam aktif süresi üzerinden yalnızca bir kez hesaplanmalıdır.

#### 6.2.3 Uygulama İçi Para Birimi

Uygulamanın para birimi “Altın Yaprak”tır. Altın Yaprak, üzerinde
stilize edilmiş bir yaprak sembolü bulunan altın renkli madeni para
olarak gösterilir.

Kullanıcılar tamamladıkları odaklanma oturumlarından Altın Yaprak
kazanır ve bunları Balkon Pazarı'nda bitki, saksı, toprak, bakım ürünü ve
dekorasyon satın almak için kullanır.

- Kazanılan Altın Yapraklar kullanıcı harcayana kadar bakiyede birikmelidir.
- Bakiyenin günlük birikim sınırı olmamalıdır.
- Kullanılmayan bakiye gün sonunda sıfırlanmamalıdır.
- Kullanıcının günlük bitki bakımlarını tamamlaması Altın Yaprak
  kazanmasını engellememelidir.
- Altın Yapraklar herhangi bir bitkiye veya ürüne otomatik olarak
  aktarılmamalı ya da harcanmamalıdır.
- Kullanıcı bakiyesini hangi bitki, bakım ürünü veya dekorasyon için
  kullanacağına kendisi karar vermelidir.
- Güncel bakiye balkon ve Balkon Pazarı ekranlarında görünmelidir.
- Oturum sonuç ekranında kazanılan miktar ve güncellenmiş bakiye
  gösterilmelidir.

#### Ekonomi Dengeleme Notu

Çalışma süresi karşılığında verilen Altın Yaprak miktarları ile ürün
fiyatları ilk geliştirme öncesinde kesinleşmiş kabul edilmemelidir.

Ekonomi aşağıdaki örnek kullanım profillerine göre test edilmelidir:

- Hafif kullanım: Günde yaklaşık 30 dakika
- Düzenli kullanım: Günde yaklaşık 60–90 dakika
- Yoğun kullanım: Günde yaklaşık 120 dakika veya daha fazla

Yeni bir bitki oluşturmak için gereken tohum, saksı ve toprağın toplam
maliyeti günlük sulama maliyetinden belirgin biçimde yüksek olmalıdır.
Kullanıcı düzenli çalışarak birikim yapabilmeli ancak uygulamaya
başladıktan hemen sonra balkonunu tamamen dolduramamalıdır.

Gerekirse çalışma sürelerinin Altın Yaprak karşılıkları ve ürün
fiyatları dengeleme testlerinin sonucuna göre değiştirilebilir.

Başlangıç dengeleme değerleri:

| Ürün | Miktar | Başlangıç fiyatı |
|---|---:|---:|
| Basit sulama kabı dolumu | 5 sulama | 1 Altın Yaprak |
| Toprak paketi | 3 kullanım | 3 Altın Yaprak |
| Basit saksı | 1 adet | 5 Altın Yaprak |
| Renkli saksı | 1 adet | 7–10 Altın Yaprak |
| Yaygın bitki tohumu | 1 adet | 12 Altın Yaprak |
| Özel bitki tohumu | 1 adet | 18 Altın Yaprak |
| Nadir bitki tohumu | 1 adet | 27–36 Altın Yaprak |
| Küçük dekorasyon | 1 adet | 3–5 Altın Yaprak |
| Orta dekorasyon | 1 adet | 6–9 Altın Yaprak |
| Büyük dekorasyon | 1 adet | 12–18 Altın Yaprak |

Bu değerler ilk oyun testlerinde yeniden değerlendirilmelidir. Ürün
fiyatları veri veya yapılandırma üzerinden değiştirilebilir olmalı;
arayüz ve temel iş kuralları içine sabitlenmemelidir.

### 6.3 Balkon

- Kullanıcı başlangıçta büyük ölçüde boş bir balkon görmelidir.
- Balkondaki uygun alanlara saksı ve dekorasyon yerleştirilebilmelidir.
- Kullanıcının yerleşimi cihazda saklanmalıdır.
- Mimari, ileride farklı ortam türlerinin eklenmesine izin vermelidir.
- Balkon en fazla yaklaşık 10 bitki yerleşim alanına sahip olmalıdır.
- Bitki alanları zemin, korkuluk/duvar ve tavandan asmalı alanlardan
  oluşmalıdır.
- Balkon alanlarının aşamalara göre dağılımı aşağıdaki gibi olmalıdır:

| Balkon aşaması | Zemin | Korkuluk/duvar | Tavandan asmalı | Toplam |
|---|---:|---:|---:|---:|
| Başlangıç | 3 | 1 | 0 | 4 |
| İkinci aşama | 4 | 2 | 1 | 7 |
| Son aşama | 5 | 3 | 2 | 10 |

- Kullanıcı 2 yetişkin bitkiye ulaştığında ikinci balkon aşaması
  açılmalıdır.
- Kullanıcı 5 yetişkin bitkiye ulaştığında son balkon aşaması
  açılmalıdır.
- Başlangıç eğitimi zemin alanlarından birinde gerçekleştirilmelidir.
- İlk asmalı alan ikinci, ikinci asmalı alan son balkon aşamasında
  açılmalıdır.
- Bitki ve saksılar destekledikleri yerleşim alanlarına
  yerleştirilebilmelidir.
- Büyük saksılar yalnızca zemin alanlarında kullanılmalıdır.
- Asmalı saksılar yalnızca tavandan asmalı alanlarda kullanılmalıdır.
- Bazı küçük saksılar hem zeminde hem de korkuluk/duvar alanlarında
  kullanılabilir olmalıdır.
- Her bitki ve saksının bütün alan türleriyle uyumlu olması zorunlu
  değildir.

#### 6.3.1 Responsive Balkon Yerleşimi

- Android için birincil kullanım yönü dikey ekran olmalıdır.
- Cihaz döndürüldüğünde mevcut ekran ve oturum durumu kaybolmamalıdır.
- Balkon, telefon ekranından daha geniş olabilen yatay bir sahne olarak
  tasarlanmalıdır.
- Android kullanıcısı balkon sahnesini sağa ve sola kaydırabilmelidir.
- Web'de geniş ekranlar aynı balkon sahnesinin daha büyük bir bölümünü
  gösterebilmelidir.
- Balkon nesnelerinin konumu doğrudan ekran piksellerine değil, mantıksal
  balkon alanlarına bağlanmalıdır.
- Temel balkon etkileşimleri farklı ekran genişliklerinde aynı sonuçları
  üretmelidir.

### 6.4 Başlangıç Hikâyesi ve Eğitim

Uygulama ilk kez açıldığında etkileşimli eğitimden önce kısa bir
başlangıç hikâyesi gösterilmelidir.

#### Başlangıç Hikâyesi

- Hikâye kısa, çizimli slaytlar şeklinde sunulmalıdır.
- Kullanıcı yeni evindeki boş balkona ilk kez çıkar.
- Balkon kapısının önünde küçük bir paket ve el yazısıyla bırakılmış
  bir not bulur.
- Notta “Zaman ayırdığın her şey burada yeşerir” yazar.
- Kullanıcının odaklanarak geçirdiği zaman Altın Yapraklara dönüşür.
- Altın Yapraklar Balkon Pazarı'nda kullanılabilir.
- Paket, Balkon Pazarı tarafından gönderilen başlangıç malzemelerini
  içerir.
- Hikâyede daha sonra balkonda bulunmayacak masa, saat veya benzeri
  kalıcı bir eşya gösterilmemelidir.

Başlangıç paketi aşağıdaki ürünleri içermelidir:

- 1 başlangıç saksısı
- 3 kullanımlık toprak paketi
- 5 sulama kapasiteli ve tamamen dolu 1 basit sulama kabı
- 1 başlangıç tohumu

#### Etkileşimli Eğitim

Hikâye tamamlandıktan sonra kullanıcıya sırasıyla aşağıdaki işlemler
gösterilmelidir:

1. Saksıyı balkona yerleştirme
2. Saksıya toprak ekleme
3. Tohumu ekme
4. Bitkiyi sulama
5. İlk odaklanma oturumunu başlatma

Hikâye ve eğitim atlanabilmelidir. Kullanıcı daha sonra Ayarlar
ekranından hikâyeyi ve eğitimi yeniden görüntüleyebilmelidir.

- Hikâye veya eğitim atlansa bile başlangıç paketi kullanıcıya yalnızca
  bir kez verilmelidir.
- Eğitimde yapılan ilk sulama, başlangıç bitkisinin tohumdan filize
  ilerlemesinde `1/3` başarılı sulama olarak sayılmalıdır.
- Eğitim tekrar izlendiğinde başlangıç paketi yeniden verilmemeli ve
  gösterim amaçlı eğitim gerçek envanteri tüketmemelidir.

### 6.5 Balkon Pazarı

Uygulamanın alışveriş bölümünün adı “Balkon Pazarı”dır.

MVP kapsamında Balkon Pazarı aşağıdaki ürün kategorilerini içermelidir:

- Tohum
- Saksı
- Toprak
- Sulama kabı dolumu
- Dekoratif eşya

Kullanıcı:

- Ürünleri ve fiyatlarını görebilmeli,
- Güncel Altın Yaprak bakiyesini görebilmeli,
- Bakiyesi yeterliyse ürün satın alabilmeli,
- Satın aldığı ürünleri envanterinde görebilmelidir.
- Aynı tür tohumu stokta bulunduğu sürece birden fazla kez satın
  alabilmelidir.

Kullanıcının bakiyesi yetersizse satın alma gerçekleştirilmemeli ve
aşağıdaki uyarı gösterilmelidir:

> Yeterli Altın Yaprağın yok.

Eksik Altın Yaprak miktarının ayrıca gösterilmesi zorunlu değildir.

Yeni bir bitki yetiştirmek için gereken tohum, saksı ve toprağın toplam
maliyeti, tek bir sulama veya sulama kabı dolumundan çok daha yüksek
olmalıdır. Kesin fiyatlar ekonomi dengeleme çalışmasında belirlenmelidir.

### 6.6 Bitki Büyüme ve Bakım Sistemi

#### 6.6.1 Büyüme Aşamaları

MVP'de her bitkinin dört büyüme aşaması bulunmalıdır:

1. Ekilmiş tohum
2. Filiz
3. Genç bitki
4. Yetişkin bitki

Aşamalar arasında ilerlemek için gereken başarılı sulama sayıları:

- Tohumdan filize: 3 başarılı sulama
- Filizden genç bitkiye: 5 başarılı sulama
- Genç bitkiden yetişkin bitkiye: 5 başarılı sulama

Bir bitkinin yetişkin hâle gelmesi için toplam 13 başarılı büyüme
sulaması gereklidir.

Yetişkin bitki son büyüme aşamasıdır. Yetişkin bitkiler bakım istemeye
devam eder ancak başka bir büyüme aşamasına geçmez.

#### 6.6.2 Sulama Durumları

Her bitki üç farklı su durumundan birinde bulunmalıdır:

##### Nemli

- Bitkinin sulanmasından sonraki ilk 24 saatlik dönemdir.
- Toprak ıslak görünmelidir.
- Bitki sağlıklı görünmelidir.
- Bu sürede bitki yeniden sulanamamalıdır.

##### Susamış

- Son sulamadan 24 saat sonra başlayan dönemdir.
- Toprak kuru görünmelidir.
- Bitki sağlıklı görünmeye devam etmelidir.
- Kullanıcı bitkiyi sulayabilmelidir.
- Bu durumda yapılan sulama başarılı büyüme sulaması sayılmalıdır.
- Bitkinin aşama içi ilerlemesi bir artırılmalıdır.

##### Solmuş

- Bitki, susamış duruma geçtikten sonraki 24 saat içinde sulanmazsa
  solmuş duruma geçmelidir.
- Bu durum son sulamadan yaklaşık 48 saat sonra oluşmalıdır.
- Toprak kuru görünmelidir.
- Bitkinin solgun çizimi gösterilmelidir.
- Bitki bulunduğu büyüme aşamasını kaybetmemelidir.
- Bitkinin yalnızca mevcut aşamadaki sulama ilerlemesi sıfırlanmalıdır.
- İlerleme sıfırlama işlemi solmuş duruma geçerken yalnızca bir kez
  uygulanmalıdır.
- Bitki tamamen ölmemeli ve önceki büyüme aşamasına gerilememelidir.

Solmuş bir bitkiye verilen ilk su bitkiyi iyileştirmeli ancak başarılı
büyüme sulaması olarak sayılmamalıdır. Bitki sağlıklı görünümüne dönmeli
ve yeni aşama içi ilerlemesine `0` değerinden başlamalıdır.

##### Sulama Kabı

- Başlangıç sulama kabı en fazla 5 sulama taşımalıdır.
- Başarılı her sulama kabın kapasitesinden 1 kullanım tüketmelidir.
- Sulama kabı boşken bitki sulanamamalıdır.
- Kullanıcı boş veya kısmen dolu sulama kabını Balkon Pazarı üzerinden
  1 Altın Yaprak karşılığında tam kapasiteye doldurabilmelidir.
- Kullanıcı kısmen dolu kabı doldurmak isterse kullanılmamış kapasitenin
  iade edilmeyeceği açıkça gösterilmelidir.
- Yetişkin bitkilerin sulanması da 1 kullanım tüketmelidir.

#### 6.6.3 Aşama İçi İlerleme

Bitkinin mevcut aşamadaki sulama ilerlemesi ayrı olarak saklanmalıdır.

Örnek:

- Filiz aşamasındaki bir bitkinin genç bitki olması için 5 başarılı
  sulama gerekir.
- Bitki `2/5` ilerlemedeyken solarsa ilerlemesi `0/5` değerine döner.
- Bitki filiz aşamasında kalmaya devam eder.
- İyileştirildikten sonra genç bitki olabilmesi için yeniden 5 başarılı
  büyüme sulaması gerekir.

Gerekli sulama sayısına ulaşıldığında:

- İlerleme çubuğu tamamen dolmalıdır.
- Kısa bir büyüme animasyonu gösterilmelidir.
- Bitki bir sonraki görsel aşamaya geçmelidir.
- Yeni aşamanın ilerleme sayacı sıfırdan başlamalıdır.

#### 6.6.4 Bitki Günlüğü

Kullanıcı balkondaki bir bitkiye dokunduğunda Bitki Günlüğü
görüntülenmelidir.

Bitki Günlüğü aşağıdaki bilgileri içermelidir:

- Bitkinin adı
- Bitkinin türü
- Mevcut büyüme aşaması
- Su durumu: Nemli, Susamış veya Solmuş
- Son sulama zamanı
- Sonraki sulamaya kalan süre
- Mevcut aşamadaki sulama ilerlemesi
- Sulama düğmesi

Aşama ilerlemesi hem rakamsal hem görsel olarak gösterilmelidir.

Örnek:

> Sonraki aşama: 3/5

Rakamsal gösterimin yanında ilerlemeyle orantılı olarak dolan renkli
bir ilerleme çubuğu bulunmalıdır. `5/5` değerinde çubuk tamamen dolu
görünmelidir.

Yetişkin bitkilerde ilerleme çubuğu yerine bitkinin tamamen büyüdüğünü
belirten bir ifade gösterilmelidir.

Bitki solmuşsa aşağıdaki açıklama gösterilmelidir:

> Bu aşamadaki bakım ilerlemesi kaybedildi.

#### 6.6.5 Bitki ve Toprak Görselleri

Her bitki türü için aşağıdaki görseller hazırlanmalıdır:

- 4 sağlıklı büyüme aşaması
- 4 solgun büyüme aşaması

Böylece her bitki türü için toplam 8 temel bitki çizimi bulunmalıdır.

Toprak için iki temel görsel durum kullanılmalıdır:

- Islak toprak
- Kuru toprak

Susamış durumda sağlıklı bitki ile kuru toprak birlikte gösterilmelidir.
Solmuş durumda solgun bitki ile kuru toprak birlikte gösterilmelidir.
Nemli durumda sağlıklı bitki ile ıslak toprak birlikte gösterilmelidir.

#### 6.6.6 Bitki Değiştirme ve Silme

- Saksıdaki mevcut bitki başka bir bitkiyle doğrudan değiştirilmemelidir.
- Kullanıcı yeni bir bitki ekmek istiyorsa mevcut bitkiyi önce kalıcı
  olarak silmelidir.
- Bitki silme seçeneği ana balkon etkileşimleri arasında bulunmamalıdır.
- Silme seçeneğine Bitki Günlüğü içindeki ikincil bir menüden
  ulaşılmalıdır.
- Kullanıcı silme seçeneğini seçtiğinde işlemin geri alınamayacağını,
  bitkinin büyüme ilerlemesinin kaybolacağını ve Altın Yaprak iadesi
  yapılmayacağını belirten açık bir uyarı gösterilmelidir.
- Silme işlemi ayrı bir onay adımı tamamlanmadan uygulanmamalıdır.
- Bitki silindiğinde bitki ve kullanılan toprak kaybolmalı, saksı boş
  hâlde kullanıcının envanterine geri dönmelidir.
- Silinen bitki türünün tohumu Balkon Pazarı'ndan yeniden satın
  alınabilmelidir.

#### 6.6.7 Saksılı Bitki ve Envanter Davranışı

- Canlı ve saksıya ekilmiş bir bitki MVP'de envantere
  kaldırılamamalıdır. Böylece bitkinin bakım süresi envantere alınarak
  dondurulamamalıdır.
- Saksılı bitki, bitki ve saksı türüyle uyumlu başka bir açık balkon
  alanına taşınabilmelidir.
- Boş saksılar envantere kaldırılabilmeli ve daha sonra yeniden
  yerleştirilebilmelidir.
- Dekorasyonlar herhangi bir ücret veya kayıp olmadan envantere geri
  alınabilmelidir.
- Tohum ve toprak gibi tüketilebilir ürünler envanterde adetleriyle
  saklanmalıdır.
- Canlı bir bitkiyi kalıcı olarak kaldırmanın tek yolu `6.6.6 Bitki
  Değiştirme ve Silme` bölümündeki uyarılı silme akışı olmalıdır.
- MVP'de ürün satma, Altın Yaprak iadesi veya ikinci el pazarı
  bulunmamalıdır.

#### 6.6.8 Bitki Bakım Bildirimleri

##### Android

- Bildirim izni uygulamanın ilk açılışında doğrudan istenmemelidir.
- Etkileşimli eğitim tamamlandıktan sonra kullanıcıya “Bitkilerin
  susadığında haber verelim mi?” şeklinde bağlama uygun bir açıklama
  gösterilmelidir.
- İşletim sisteminin ayrıca izin gerektirdiği Android sürümlerinde sistem
  bildirim izni yalnızca kullanıcı bu açıklamayı kabul ettikten sonra
  istenmelidir.
- Kullanıcı bakım bildirimlerini Ayarlar ekranından tamamen
  kapatabilmelidir.
- Bir veya daha fazla bitki susamış duruma geçtiğinde yaklaşık 24. saatte
  tek bir birleştirilmiş bildirim gönderilmelidir. Örnek: “2 bitkin
  sulanmayı bekliyor.”
- Solmaya yaklaşık 4 saat kalan bitkiler için yaklaşık 44. saatte ikinci
  bir uyarı gönderilebilmelidir. Örnek: “Bir bitkin yakında solabilir.”
- Aynı zaman aralığındaki birden fazla bitki ayrı ayrı bildirim
  üretmemeli; bildirimler bitki sayısı belirtilerek birleştirilmelidir.
- Bakım bildirimlerinin üst sınırı günde iki olmalıdır.
- Bitki sulandığında o bitki için bekleyen bakım bildirimleri iptal
  edilmeli ve bildirim zamanları son başarılı sulamaya göre yeniden
  hesaplanmalıdır.
- Bakıma ilişkin bildirime dokunulduğunda Balkon ekranı açılmalıdır.
- Kullanıcı bildirim iznini reddederse oyun döngüsü kesilmemeli; susamış
  ve solmaya yaklaşan bitkiler yalnızca uygulama içi göstergelerle
  anlatılmalıdır.
- Bu bildirimler dakika hassasiyeti gerektirmeyen bakım hatırlatmalarıdır;
  kesin alarm izni kullanılmamalıdır.

##### Web

- Yeşeren Zaman sekmesi açıkken tarayıcı bildirimi veya uygulama içi
  bakım uyarısı gösterilebilmelidir.
- Tarayıcı bildirimi izni verilmemişse veya özellik desteklenmiyorsa
  uygulama içi uyarı kullanılmalıdır.
- Balkon ekranı sulanmayı bekleyen bitki sayısını görünür biçimde
  göstermelidir.
- Web uygulaması tamamen kapalıyken bakım bildirimi MVP'de garanti
  edilmemelidir.
- Kapalı web uygulamasına servis worker ve push bildirimi gönderme
  yeteneği hesap/eşitleme ve PWA aşamasına ertelenmelidir.

### 6.7 Temel İstatistikler

- Tamamlanan toplam odaklanma süresi
- Tamamlanan oturum sayısı
- Uygulamanın kullanılmaya başlandığı tarihten itibaren geçen gün sayısı
- Kullanıcının çalıştığı günleri gösteren aylık aktivite takvimi

#### 6.7.1 Aylık Aktivite Takvimi

- Aktivite takvimi çalışma yoğunluğunu farklı renk tonlarıyla
  göstermemelidir.
- Tamamlanmış bir oturumdan bir güne en az 1 aktif çalışma dakikası
  yazılması, o günün çalışılmış olarak işaretlenmesi için yeterlidir.
- 30 dakikadan kısa olduğu için Altın Yaprak kazandırmayan ancak
  tamamlanmış olarak kaydedilen oturumlar da günü çalışılmış olarak
  işaretlemelidir.
- Çalışılmayan günler boş, çalışılan günler seçilen tema rengiyle
  işaretlenmelidir.
- Varsayılan aktivite rengi yeşil olmalıdır.
- Kullanıcı Ayarlar ekranından yeşil, sarı, kırmızı veya mavi aktivite
  rengi seçebilmelidir.
- Renk, çalışılmış durumunu aktaran tek gösterge olmamalıdır; çalışılan
  günlerde küçük bir yaprak simgesi veya eşdeğer görsel işaret ve ekran
  okuyucu etiketi de bulunmalıdır.
- Haftanın ilk günü pazartesi olmalıdır.
- Kullanıcı takvimin üst bölümündeki kontrollerle aylar arasında
  geçiş yapabilmelidir.
- Kullanıcı, uygulamayı kullanmaya başladığı aydan daha eski aylara
  geçememelidir.
- Kullanıcı içinde bulunulan aydan daha ileri aylara geçememelidir.
- Geçmiş ayların çalışma verileri korunmalı ve seçilen ayda
  görüntülenebilmelidir.

### 6.8 Ses Sistemi

Uygulamadaki sesler üç kategoriye ayrılmalıdır:

1. Ortam sesi
2. Etkileşim ve efekt sesleri
3. Oturum sonu bildirim sesi

#### Ortam Sesi

- Uygulamada sakin, sıcak ve huzurlu bir arka plan ortam sesi
  bulunmalıdır.
- Çalışma ekranında ortam sesini hızlıca açıp kapatmak için kolay
  erişilebilir bir ses düğmesi bulunmalıdır.
- Bu düğme yalnızca ortam sesini etkilemelidir.
- Ortam sesinin kapatılması oturum sonu bildirimini otomatik olarak
  kapatmamalıdır.

#### Efekt Sesleri

- Bitki başarıyla sulandığında kısa bir su sesi çalmalıdır.
- Altın Yaprak kazanıldığında kısa bir ödül sesi çalabilir.
- Balkon Pazarı'nda başarılı satın alma sırasında kısa bir efekt
  kullanılabilir.

#### Ses Ayarları

Ayarlar ekranında aşağıdaki seçenekler bulunmalıdır:

- Ortam sesini açma veya kapatma
- Efekt seslerini açma veya kapatma
- Tüm uygulama seslerini kapatma

“Tüm uygulama seslerini kapatma” etkinleştirildiğinde ortam sesi,
efektler ve oturum sonu sesleri çalmamalıdır. Desteklenen cihazlarda
titreşim veya sessiz bildirim kullanılabilmelidir.

Kullanıcının ses tercihleri uygulama kapatılıp açıldığında korunmalıdır.

### 6.9 Dil Desteği ve Yerelleştirme

- Uygulama ilk sürümden itibaren Türkçe ve İngilizce dillerini
  desteklemelidir.
- Cihaz dili Türkçeyse uygulama ilk açılışta Türkçe, diğer durumlarda
  İngilizce açılmalıdır.
- Kullanıcı Ayarlar ekranından uygulama dilini değiştirebilmelidir.
- Kullanıcının dil tercihi uygulama kapatılıp açıldığında korunmalıdır.
- Kullanıcıya gösterilen metinler kaynak kodun içine dağınık biçimde
  sabitlenmemeli, yerelleştirilebilir kaynaklardan alınmalıdır.
- Tarih, saat, sayı ve çoğul ifadeleri seçilen dile uygun
  gösterilmelidir.

### 6.10 Erişilebilirlik

- Android ve Web arayüzleri ekran okuyucular tarafından anlamlı biçimde
  okunabilmelidir.
- Etkileşimli düğme, bitki, ürün ve kontroller açıklayıcı erişilebilirlik
  etiketlerine sahip olmalıdır.
- Android arayüzü TalkBack ile, Web arayüzü klavye ve ekran okuyucu
  semantikleriyle test edilmelidir.
- Web üzerindeki bütün temel işlemler fare olmadan klavyeyle
  gerçekleştirilebilmelidir.
- Sürükle-bırak gerektiren işlemler için seçme ve hedef belirleme gibi
  alternatif bir kontrol yöntemi sunulmalıdır.
- Dokunulabilir kontroller mümkün olduğunca en az 48×48 mantıksal piksel
  büyüklüğünde olmalıdır.
- Küçük metinlerde en az 4.5:1, büyük metinlerde en az 3:1 kontrast
  hedeflenmelidir.
- Renk hiçbir durumda bilgi aktaran tek araç olmamalıdır.
- Arayüz, sistem yazı boyutu büyütüldüğünde içerik veya işlev kaybı
  olmadan kullanılabilmelidir.
- Sesli uyarıların yanında görsel bildirim de bulunmalıdır.
- Kullanıcı hareket azaltma tercihini etkinleştirebilmeli; bu durumda
  ödül ve büyüme animasyonları azaltılmalı veya sadeleştirilmelidir.
- Kritik ve geri alınamaz işlemler açık uyarı ve onay gerektirmelidir.

### 6.11 Ücretlendirme ve Reklam

- İlk sürüm tamamen ücretsiz olmalıdır.
- İlk sürümde reklam bulunmamalıdır.
- İlk sürümde gerçek para karşılığında Altın Yaprak veya oyun içi ürün
  satılmamalıdır.
- Reklam veya başka bir gelir modeli ancak sonraki bir ürün kararıyla
  eklenmelidir.
- Reklam sağlayıcısı gibi dış servisler temel zamanlayıcı, ekonomi ve
  balkon iş kurallarına doğrudan bağlanmamalıdır.
- Gelecekte reklam eklense bile kullanıcının aktif odaklanma oturumu
  reklamla kesilmemelidir.

### 6.12 Yerel Veri Yönetimi ve Gizlilik

- Hesapsız yerel MVP'de kullanıcı Ayarlar ekranından cihazdaki tüm
  uygulama verilerini sıfırlayabilmelidir.
- Veri sıfırlama; bakiye, envanter, balkon, bitkiler, çalışma geçmişi ve
  uygulama tercihlerini kapsamalıdır.
- Veri sıfırlama geri alınamaz bir işlem olarak açıkça belirtilmeli ve
  ayrı bir onay adımı gerektirmelidir.
- İlk yerel MVP'de hesap oluşturma ve hesap silme ekranı zorunlu
  değildir.
- Hesap sistemi eklendiğinde kullanıcı uygulama içinden hesabını ve
  ilişkili bulut verilerini silme talebi oluşturabilmelidir.
- Hesap sistemi eklendiğinde uygulama dışında erişilebilen bir web
  bağlantısı üzerinden de hesap silme talebi sunulmalıdır.
- Google Play'e yayınlanmadan önce uygulamanın topladığı, kullandığı,
  sakladığı ve paylaştığı verileri açıklayan bir gizlilik politikası
  hazırlanmalıdır.
- Gizlilik politikası hem uygulama içinden hem de herkese açık bir web
  adresinden erişilebilir olmalıdır.
- Google Play Data Safety beyanı uygulamanın gerçek veri davranışıyla
  uyumlu tutulmalıdır.

## 7. Sonraki Geliştirme Aşamaları

### 7.1 Zorunlu İkinci Aşama: Hesap ve Çoklu Cihaz Eşitleme

İlk çalışan MVP tek cihazda ve yerel veriyle geliştirilecektir. Android
ve Web sürümleri aynı kullanıcı hesabıyla birlikte kullanıma açılmadan
önce hesap ve veri eşitleme sistemi tamamlanmalıdır.

- Kullanıcı uygulamayı hesap oluşturmadan yerel olarak kullanabilmelidir.
- Kullanıcı daha sonra hesap oluşturduğunda mevcut yerel verisini
  hesabına aktarabilmelidir.
- Aynı hesaba bağlı Android ve Web cihazlarında balkon, envanter, Altın
  Yaprak işlemleri, bitki durumları ve çalışma geçmişi eşitlenmelidir.
- Uygulama internet bağlantısı olmadan temel işlevlerini
  sürdürebilmelidir.
- Çevrimdışı değişiklikler bağlantı yeniden kurulduğunda
  eşitlenmelidir.
- Aynı oturum veya satın alma işlemi birden fazla kez
  uygulanmamalıdır.
- Ses, titreşim ve ekranı açık tutma gibi cihaza bağlı tercihler
  eşitlenmek zorunda değildir.
- Hesap oluşturma aşamasında en az bir güvenli giriş yöntemi
  sunulmalıdır; Google ile giriş seçeneği ayrıca değerlendirilmelidir.
- Hesap silme ve ilişkili verilerin silinmesi gereksinimleri
  `6.12 Yerel Veri Yönetimi ve Gizlilik` bölümüne uygun olmalıdır.

### 7.2 Daha Sonraki Özellikler

Aşağıdaki özellikler ilk sürümün dışında değerlendirilir:

- Güneş alanlarına göre bitki konumlandırma
- Toprak değiştirme mekaniği
- Rastgele yağmur günleri
- Streak sistemi ve özel ödüller
- Satın alınabilir balkon manzaraları
- Android ana ekran widget'ı
- Açık bahçe ve yeni ortam türleri
- Gelişmiş motivasyon mesajları
- Reklam veya başka bir gelir modeli
- Native Windows, macOS veya Linux uygulamaları
- Kurulabilir PWA davranışı ve Web uygulaması kapalıyken servis worker
  üzerinden push bakım bildirimleri

## 8. Temel Ekranlar

MVP için önerilen ekranlar:

1. Başlangıç hikâyesi
2. Etkileşimli başlangıç eğitimi
3. Balkon
4. Odaklanma zamanlayıcısı
5. Oturum sonucu ve kazanılan ödül
6. Balkon Pazarı
7. Envanter
8. Bitki Günlüğü
9. İstatistikler
10. Ayarlar

### 8.1 Ana Navigasyon ve Ekranlara Erişim

#### Android

- Ana gezinme çubuğu ekranın altında yer almalı ve şu dört hedefi
  içermelidir: Balkon, Odaklanma, Balkon Pazarı ve İstatistikler.
- Odaklanma hedefi, ürünün temel eylemi olduğu için diğer hedeflerden
  görsel olarak ayırt edilebilmelidir; ancak diğer hedefleri
  erişilemez veya ikincil hissettirmemelidir.
- Envantere Balkon ve Balkon Pazarı ekranlarından erişilebilmelidir.
- Ayarlar ekranına üst bölümdeki dişli simgesinden erişilebilmelidir.
- Bitki Günlüğü, Balkondaki bir bitkiye dokunularak açılmalıdır.
- Güncel Altın Yaprak bakiyesi Balkon ve Balkon Pazarı ekranlarının üst
  bölümünde gösterilmelidir.

#### Web

- Web sürümü aynı dört ana hedefi korumalıdır: Balkon, Odaklanma, Balkon
  Pazarı ve İstatistikler.
- Gezinme, ekran genişliğine göre yan menü veya üst menü olarak
  gösterilebilmelidir.
- Envanter, Ayarlar, Bitki Günlüğü ve Altın Yaprak bakiyesine erişim
  Android sürümüyle aynı işlevsel sonuçları vermelidir.

## 9. Fonksiyonel Olmayan Gereksinimler

- Uygulama Android ve Web platformlarının farklı yaşam döngüsü
  davranışlarını yönetebilmelidir.
- Web arayüzü farklı ekran genişliklerine uyum sağlamalıdır.
- İlk geliştirme hedefi Android API 24 ve üzeri cihazları desteklemektir.
- Google Play'e gönderilen Android sürümü, yayın tarihindeki güncel hedef
  API zorunluluğunu karşılamalıdır. 21 Ağustos 2026 itibarıyla yeni
  uygulamalar için hedef Android 16 / API 36 veya üzeridir.
- Birincil Web destek ve test kapsamı Chrome, Edge, Firefox, Safari ve
  Opera'nın güncel son iki ana sürümünü içermelidir.
- Opera, Flutter'ın resmî olarak adını verdiği tarayıcılar arasında
  olmasa da Chromium tabanlı yapısı nedeniyle proje tarafından açıkça
  test edilen ve desteklenen bir tarayıcı olmalıdır.
- Brave, Vivaldi, Opera GX ve diğer güncel Chromium tabanlı tarayıcılar
  en iyi çaba kapsamında desteklenmeli; birincil test matrisi içinde
  zorunlu olmamalıdır.
- Tarayıcı testleri en azından arka plan sekmesinde zamanlayıcıyı, çoklu
  sekmede çift ödül engelini, yerel veri saklamayı, ses oynatmayı,
  bildirim izinlerini, responsive yerleşimi ve Türkçe/İngilizce
  arayüzleri kapsamalıdır.
- Platform ve tarayıcı destek sınırları yayın öncesinde kullanılan
  Flutter sürümünün resmî destek tablosuna ve proje test sonuçlarına göre
  yeniden doğrulanmalıdır.
- Temel özellikler internet bağlantısı olmadan çalışabilmelidir.
- Kullanıcı verileri uygulama kapatıldığında korunmalıdır.
- Balkon ekranındaki etkileşimler akıcı olmalıdır.
- Zaman ve para hesaplamaları test edilebilir, arayüzden bağımsız
  kurallar olarak tasarlanmalıdır.
- Proje yapısı yeni bitki ve ortam türleri eklenirken mevcut kodda büyük
  değişiklikler gerektirmemelidir.
- Kullanıcının kendi çizimleri sonradan kolayca eklenebilmelidir.
- State management, yerel veri, bulut eşitleme, bildirim ve gelecekteki
  reklam entegrasyonları temel iş kurallarından ayrılmalıdır.
- Ürün fiyatları, büyüme eşikleri ve benzeri dengeleme değerleri kodun
  farklı yerlerine dağılmamalı, merkezi olarak yapılandırılabilmelidir.

## 10. Fonksiyonel Kabul Ölçütleri

İlk yerel MVP aşağıdaki koşullarda işlevsel olarak tamamlanmış kabul
edilecektir:

- Kullanıcı kronometre veya geri sayım modunda odaklanma oturumu
  tamamlayabilir.
- Kullanıcı 30, 60, 90 ve 120 dakikalık hazır süreleri seçebilir veya
  1 dakika–12 saat arasında özel süre girebilir.
- Kazanılan Altın Yaprak doğru şekilde hesaplanır ve saklanır.
- Kullanıcı Balkon Pazarı'ndan ürün satın alabilir ve satın alınan ürünü
  balkonunda kullanabilir.
- Uygulama kapatılıp açıldığında bakiye, envanter, balkon, bitkiler ve
  çalışma geçmişi korunur.
- Android'de ekranın kapanması oturumu durdurmaz; başka uygulamaya
  geçilmesi oturumu duraklatır.
- Web'de Yeşeren Zaman sekmesi açık kaldığı sürece oturum başka sekmede
  ilerlemeye devam eder.
- Aynı tarayıcıdaki birden fazla sekme aynı oturum için çift ödül
  oluşturamaz.
- Beklenmedik şekilde kapanan uygulama yeniden açıldığında son
  tamamlanmamış oturum duraklatılmış olarak geri yüklenir.
- Tamamlanmamış oturum bir gün veya yedi günden uzun süredir bekliyor
  olsa bile otomatik tamamlanmaz, ödüllendirilmez ya da silinmez;
  kullanıcı devam etme, tamamlama veya iptal etme seçeneklerinden birini
  seçer ve yalnızca kaydedilmiş aktif süre hesaba katılır.
- Kurtarılan veya tekrar açılan bir oturum için birden fazla ödül işlemi
  oluşturulamaz.
- Gece yarısını geçen aktif süre doğru takvim günlerine bölünür ve ödül
  yalnızca bir kez hesaplanır.
- Kullanıcı bitkisini sulayabilir ve başarılı sulama sırasında ses efekti
  duyabilir.
- Bitki 24 saat sonunda susamış, yaklaşık 48 saat sonunda solmuş duruma
  geçer.
- Solmuş bitki mevcut büyüme aşamasını korur ancak aşama içi ilerlemesi
  sıfırlanır.
- Bitki Günlüğü sulama ilerlemesini rakam ve ilerleme çubuğuyla gösterir.
- Bitki silme işlemi uyarı ve ayrı onay olmadan gerçekleştirilemez.
- Canlı saksılı bitki envantere kaldırılamaz; uyumlu boş bir balkon
  alanına taşınabilir. Boş saksılar ve dekorasyonlar envantere geri
  alınabilir.
- Balkon başlangıçta 3 zemin ve 1 duvar/korkuluk alanına sahiptir. İki
  yetişkin bitki sonrasında kapasite 4 zemin, 2 duvar/korkuluk ve 1
  tavandan asmalı alana; beş yetişkin bitki sonrasında 5 zemin, 3
  duvar/korkuluk ve 2 tavandan asmalı alana ulaşır.
- Android'de kullanıcı izin verdiğinde susamış ve solmaya yaklaşan
  bitkiler için birleştirilmiş olarak günde en fazla iki bakım bildirimi
  gönderilir; izin yoksa uygulama içi göstergeler çalışmaya devam eder.
- Web'de sekme açıkken tarayıcı bildirimi veya uygulama içi bakım uyarısı
  gösterilebilir; uygulama kapalıyken push bildirimi MVP kabul koşulu
  değildir.
- Kullanıcının harcamadığı Altın Yapraklar günler arasında korunur ve
  günlük bakım bittikten sonra da birikmeye devam eder.
- Balkon ve Balkon Pazarı ekranları güncel Altın Yaprak bakiyesini
  gösterir.
- Android ve Web sürümlerinde Balkon, Odaklanma, Balkon Pazarı ve
  İstatistikler ana hedeflerine responsive gezinme üzerinden
  erişilebilir.
- Aylık aktivite takvimi tamamlanmış çalışma bulunan günleri gösterir,
  pazartesiyle başlar ve izin verilen aylar arasında gezilebilir.
- Türkçe ve İngilizce arayüzler eksik veya taşan temel metin olmadan
  kullanılabilir.
- Temel işlemler Android'de TalkBack, Web'de klavye ve erişilebilirlik
  semantikleriyle kullanılabilir.
- Kullanıcı bütün yerel verilerini Ayarlar ekranından uyarı ve onayla
  sıfırlayabilir.
- İlk sürüm ücretsiz ve reklamsız çalışır.

## 11. Ürün Başarı Metrikleri

Fonksiyonel kabul ölçütleri uygulamanın doğru çalışıp çalışmadığını;
ürün başarı metrikleri ise uygulamanın kullanıcıya gerçekten fayda
sağlayıp sağlamadığını değerlendirmek için kullanılır.

İlk kullanılabilirlik testlerinde aşağıdaki metrikler gözlemlenmelidir:

- Başlangıç hikâyesini ve eğitimi tamamlama oranı
- İlk odaklanma oturumunu tamamlama oranı
- İlk bitkiyi filiz aşamasına ulaştırma oranı
- Oturum tamamlama ve iptal oranları
- Kullanıcı başına haftalık çalışılan gün sayısı
- Kullanıcı başına haftalık tamamlanan odaklanma süresi
- Birinci ve yedinci gün geri dönüş oranları
- İlk yetişkin bitkiye ulaşmak için geçen ortalama süre

İlk yerel MVP'de harici analiz servisi eklemek zorunlu değildir. Bu
metrikler küçük test gruplarında gözlem ve gönüllü geri bildirimle
değerlendirilebilir. Harici analiz servisi eklenirse veri toplama
gizlilik politikasında ve Google Play Data Safety beyanında
açıklanmalıdır. Sayısal başarı hedefleri ilk kullanıcı testlerinden
sonra belirlenmelidir.

## 12. Ürün İlkeleri

- Odaklanma, cezalandırmadan daha önemli olmalıdır.
- Oyunlaştırma kullanıcının çalışmasını desteklemeli, dikkatini dağıtmamalıdır.
- Bakımsızlık kullanıcının önceki emeğini tamamen yok etmemelidir.
- Görsel dil sakin, sıcak ve el çizimi hissine sahip olmalıdır.
- Ekonomi ilerleme hissi vermeli ancak kullanıcıyı gereksiz tekrara zorlamamalıdır.

## 13. Açık Kararlar

- MVP'de kaç bitki, saksı ve dekorasyon bulunacak?
- Android uygulamasının kesin paket kimliği ne olacak? Bu karar, yayıncı
  kimliği netleştiğinde ve Firebase ya da Google Play yapılandırılmadan
  önce verilmelidir.
- Hesap aşamasında hangi giriş yöntemleri ve eşitleme çakışma kuralları
  kullanılacak?
- Gizlilik politikasında açıklanacak kesin veri akışları, seçilecek
  yerel/bulut servislerinden sonra nasıl olacak?
- Ürün başarı metriklerinin hedef değerleri ilk kullanıcı testlerinden
  sonra ne olacak?
