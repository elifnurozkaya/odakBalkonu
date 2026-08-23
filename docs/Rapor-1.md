# Rapor-1

> **Rapor tarihi:** 21 Ağustos 2026  
> **Proje:** Yeşeren Zaman  
> **Yerel proje / GitHub reposu:** `odakBalkonu`  
> **Teknik proje adı:** `odak_balkonu`  
> **Platformlar:** Android ve Web  
> **Belge durumu:** İlk ürün planlama görüşmelerinin özeti

## Görüşmenin Amacı

Yeşeren Zaman'ın uygulama geliştirmeye başlamadan önce ihtiyaç duyduğu
ürün kurallarını belirlemek ve yapısal PRD taslağını hazırlamak. Görüşme
sonunda alınan kararlar `prd.md` dosyasının 0.3 sürümüne işlendi.

## Ürün Kimliği ve Temel Fikir

- Uygulama adı **Yeşeren Zaman**, sloganı **“Odağını büyüt, balkonunu
  yeşert”** olarak belirlendi.
- Kullanıcı odaklanarak **Altın Yaprak** kazanacak; bu para birimi,
  içinde yaprak sembolü bulunan altın madeni para olarak çizilecek.
- Altın Yapraklar bitkilere otomatik harcanmayacak. Kullanıcı bunlarla
  bitki, saksı, toprak, sulama kabı ve dekorasyon alırken özgür olacak.
- Mağazanın adı **Balkon Pazarı** olacak.
- Başlangıç hikâyesi ve eğitim, kısa slaytlar ve ardından etkileşimli
  yönlendirme şeklinde sunulacak.

## Zamanlayıcı ve Ödül Sistemi

- Kullanıcı kronometre veya geri sayım modunu seçebilecek.
- Geri sayımda 30, 60, 90 ve 120 dakikalık hazır seçenekler ile 1 dakika
  ile 12 saat arasında elle süre girişi bulunacak.
- Geri sayım başlamadan önce kazanılabilecek ödül; kronometrede ise o an
  tamamlanırsa kazanılacak ödül, zamanlayıcının altında gösterilecek.
- Duraklamalar çalışma süresine eklenmeyecek; oturum yeniden
  başlatıldığında kaldığı yerden devam edecek.
- Tamamlanmış aktif süre 30 dakikadan azsa ödül yok; 30–59 dakika için 1
  Altın Yaprak; 60 dakika ve üzerinde tamamlanan her tam saat için 3
  Altın Yaprak verilecek. Artan dakikalar ödül üretmeyecek.
- Kısa fakat kullanıcı tarafından tamamlanan oturumlar çalışma
  istatistiklerine eklenecek.
- Geri sayım bittiğinde oturum otomatik tamamlanacak ve ödül doğrudan
  eklenecek. Kullanıcı isterse yeni bir oturum başlatacak.
- Gece yarısını geçen çalışma, istatistikte aktif dakikalarına göre ilgili
  günlere bölünecek; ödül yalnızca bir kez hesaplanacak.
- Yarım kalan oturumlar kendiliğinden silinmeyecek veya
  ödüllendirilmeyecek. Kullanıcı devam etme, mevcut aktif süreyle
  tamamlama ya da iptal etme seçeneklerinden birini seçecek.

## Balkon ve Bitki Sistemi

- Balkon 4 alanla başlayacak, 2 yetişkin bitkide 7 alana ve 5 yetişkin
  bitkide 10 alana ulaşacak.
- Son kapasite 5 zemin, 3 duvar/korkuluk ve 2 tavandan asmalı alandan
  oluşacak. Böylece balkon daha dinamik görünecek.
- Her bitkinin tohum, filiz, genç ve yetişkin olmak üzere 4 büyüme aşaması
  bulunacak. Her aşamanın sağlıklı ve solgun çizimiyle bitki başına 8
  temel görsel hazırlanacak.
- Toprak için ıslak ve kuru olmak üzere 2 çizim yeterli olacak.
- Büyüme için sulama gereksinimleri sırasıyla 3, 5 ve 5 olarak
  belirlendi. Her sulama bitkiyi doğrudan bir sonraki aşamaya
  geçirmeyecek.
- Sulama durumu üç aşamalı olacak: nemli, susamış ve solmuş. Yaklaşık 24
  saat sonra bitki susamış, 48 saat sonra solmuş sayılacak.
- Solan bitki ölmeyecek ve büyüme aşamasını kaybetmeyecek; yalnızca o
  aşamadaki sulama ilerlemesi sıfırlanacak.
- Bitki Günlüğü mevcut durum, son sulama, kalan süre ve aşama ilerlemesini
  hem sayı hem dolan bir çubukla gösterecek.
- Canlı saksılı bitki envantere kaldırılamayacak, ancak uyumlu balkon
  alanları arasında taşınabilecek. Boş saksılar ve dekorasyonlar
  envantere geri alınabilecek.
- Bitki yalnızca Bitki Günlüğündeki ikincil menüden, açık uyarı ve ayrı
  onay sonrasında kalıcı olarak silinebilecek. Satış veya para iadesi
  olmayacak.

## Ekonomi ve İlerleme

- Yeni bitki açmak, günlük sulamadan belirgin biçimde daha pahalı olacak;
  böylece balkon hemen dolmayacak.
- Harcanmayan Altın Yapraklar günlük bakım bittikten sonra da birikmeye
  devam edecek.
- Başlangıç fiyatları ortalama günde 1,5 saatlik kullanım ve yaklaşık
  10 bitkilik balkon kapasitesi dikkate alınarak PRD'de tanımlandı.
- Yetersiz bakiye durumunda eksik miktarı hesaplamak yerine sade bir
  uyarı gösterilecek.

## Ses, Bildirim ve Yaşam Döngüsü

- Uygulamada rahat bir ortam sesi ve sulama gibi eylemlerde efekt sesleri
  bulunacak. Ortam sesi çalışma ekranından hızlıca, tüm sesler ise
  Ayarlar'dan kapatılabilecek.
- Geri sayım sonunda kullanıcı ses, titreşim veya sessiz bildirim
  seçeneklerinden birini kullanabilecek.
- Android'de ekranın kapanması oturumu durdurmayacak; başka uygulamaya
  geçiş oturumu duraklatacak. Ekranı açık tutma tercihi isteğe bağlı
  olacak ve şarj tüketimi konusunda açıklama gösterilecek.
- Bitki bakım bildirimleri eğitimden sonra bağlama uygun biçimde
  istenecek. Susayan bitkiler yaklaşık 24. saatte, solmaya yaklaşanlar
  yaklaşık 44. saatte birleştirilmiş bildirimle hatırlatılacak; günlük
  üst sınır iki olacak.
- Web sekmesi açıkken tarayıcı bildirimi veya uygulama içi uyarı
  kullanılacak. Uygulama kapalıyken push bildirimi PWA aşamasına
  bırakıldı.

## Arayüz, İstatistik ve Erişilebilirlik

- Android ana menüsünde Balkon, Odaklanma, Balkon Pazarı ve İstatistikler
  için alt gezinme çubuğu kullanılacak. Web'de genişliğe göre yan veya
  üst menü kullanılabilecek.
- Balkon Android'de yatay kaydırılabilir bir sahne, Web'de ise geniş
  ekrandan yararlanan responsive bir yerleşim olacak.
- Aylık takvim yalnızca o gün çalışılıp çalışılmadığını gösterecek. Hafta
  pazartesi başlayacak; kullanıcı ilk kullanım ayı ile mevcut ay arasında
  gezinebilecek.
- Aktivite rengi ayarlardan yeşil, sarı, kırmızı veya mavi seçilebilecek;
  renk tek gösterge olmayacak.
- Türkçe ve İngilizce desteklenecek. TalkBack, klavye ile kullanım,
  semantik etiketler, yeterli kontrast ve metin ölçekleme temel
  erişilebilirlik gereksinimleri olacak.

## Platform, Veri ve Yayın Kararları

- İlk kapsam Android ve Web olacak; native masaüstü uygulamaları kapsam
  dışında kalacak.
- İlk çalışan MVP yerel veriyle geliştirilecek. Android ve Web arasında
  gerçek eşitleme, hesap ve çakışma yönetimi zorunlu ikinci aşama olacak.
- Uygulama ücretsiz ve reklamsız başlayacak. Gelecekte reklam eklenebilme
  olasılığı iş kurallarından ayrılmış bir mimariyle karşılanacak.
- Web için Chrome, Edge, Firefox, Safari ve Opera birincil test kapsamına
  alındı. Brave, Vivaldi, Opera GX ve diğer modern Chromium tarayıcıları
  en iyi çaba kapsamında değerlendirilecek.
- Yerel veri sıfırlama MVP'de bulunacak. Hesap silme ve çoklu cihaz veri
  silme akışları hesap sistemiyle birlikte eklenecek.
- Gizlilik politikası ve Google Play Data Safety açıklamaları gerçek veri
  akışlarına göre yayın öncesinde hazırlanacak.

## Sonraya Bırakılan Kararlar

- Kesin bitki, saksı ve dekorasyon listesi ile çizim kapsamı
- Android paket kimliği
- Hesap giriş yöntemi ve eşitleme çakışma kuralları
- Kullanılacak servisler netleştikten sonraki kesin gizlilik metni
- Kullanıcı testleri sonrasındaki sayısal başarı hedefleri
- PWA kurulumu, kapalı Web uygulamasına push bildirimi ve olası reklam
  modeli

## Sonuç

Uygulamanın temel kimliği, odaklanma ve ödül kuralları, bitki büyüme
döngüsü, balkon kapasitesi, platform kapsamı ve MVP sınırları belirlendi.
Bir sonraki aşamada teknik mimari ve kullanılacak teknolojiler karara
bağlanabilir; bitki ve dekorasyon içerik listesi ise diğer temel işler
tamamlandıktan sonra hazırlanacaktır.
