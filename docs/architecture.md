# Mimari ve Klasör Yapısı

Bu belge, Yeşeren Zaman Flutter projesinde kodun hangi sorumlulukla nereye
yerleştirileceğini tanımlar. Amaç; özellikleri birbirinden ayırmak, bağımlılıkları
kontrol altında tutmak ve ihtiyaç oluşmadan gereksiz soyutlamalar üretmemektir.

## Mimari Yaklaşım

Projede **feature-first** yaklaşımı kullanılır. Kod önce ait olduğu ürün
özelliğine, daha sonra o özellik içindeki sorumluluğuna göre ayrılır.

Layer-first yapıda uygulamanın bütün ekranları, modelleri ve repository'leri
birbirinden uzak, ortak katman klasörlerinde toplanır. Feature-first yapıda ise bir
özelliği geliştirmek veya incelemek için gereken kod aynı feature klasöründe
bulunur. Bu nedenle zamanlayıcı, pazar ve balkon gibi özellikler birbirlerinin
iç ayrıntılarına bağlanmadan geliştirilebilir.

Her feature ihtiyacına göre şu katmanlara ayrılabilir:

- `presentation`: Ekranlar, widget'lar ve arayüz durumunu yöneten yapılar.
- `domain`: İş kuralları, domain modelleri ve repository sözleşmeleri.
- `data`: Verinin saklanmasına veya alınmasına ilişkin somut uygulamalar.

Bir feature bu katmanların tamamına ihtiyaç duymuyorsa boş katman klasörleri
oluşturulmaz.

## Üst Düzey Sorumluluklar

### `main.dart`

Uygulamanın çalışma giriş noktasıdır. Başlatma akışını tetikler ve mümkün
olduğunca küçük tutulur. Başlangıçta yalnızca ana uygulama widget'ını
çalıştırması yeterlidir.

Veri tabanını hazırlama, tercihleri yükleme veya servisleri başlatma gibi
asenkron başlangıç işlemleri ortaya çıktığında bu akış `app/bootstrap.dart`
dosyasına ayrılabilir. Bu ihtiyaç oluşmadan boş bir bootstrap sınıfı
oluşturulmaz.

### `app`

Uygulama kabuğunu ve farklı parçaların bir araya getirilmesini yönetir.

Bu alanda zamanla şunlar bulunabilir:

- Kök `MaterialApp` yapısı
- Tema yapılandırması
- Yönlendirme yapılandırması
- Uygulama genelindeki dependency injection bağlantıları
- Uygulama başlangıç ve hata yakalama akışı

`app`, iş kurallarını uygulamaz. Feature'ların somut uygulamalarını birbirine
bağlayan composition root görevini üstlenir.

### `core`

Birden fazla feature tarafından gerçekten kullanılan, herhangi bir ürün
özelliğine ait olmayan temel yapıları içerir. Örnekler:

- Merkezi uygulama ve dengeleme yapılandırması
- Ortak hata türleri
- Sistem saatine erişimi soyutlayan yapılar
- Kimlik üretimi gibi ortak teknik sözleşmeler

`core`; rastgele yardımcı fonksiyonların toplandığı bir alan değildir. Bir kod
yalnızca tek feature tarafından kullanılıyorsa ilgili feature içinde kalır.
`common`, `utils` veya `helpers` gibi sorumluluğu belirsiz klasörler oluşturulmaz.

### `features`

Kullanıcıya sunulan ürün yeteneklerini içerir. Odaklanma zamanlayıcısı,
balkon, pazar, envanter ve istatistikler ayrı feature'lar olarak ele alınabilir.

Bir feature kendi presentation, domain ve data kodunun sahibidir. Başka bir
feature'ın iç klasörlerine doğrudan bağlanmak yerine gerektiğinde açık bir
domain sözleşmesi kullanılır.

### `platform`

Android veya Web'e özel API'lere doğrudan erişen adaptörleri içerir. Örneğin
Android yaşam döngüsü ile Web sekme koordinasyonu aynı domain sözleşmesinin
farklı platform uygulamaları olabilir.

Platformdan bağımsız sözleşme ilgili feature'ların `domain` katmanında veya
gerçekten ortaksa `core` içinde bulunur. Somut Android ve Web uygulamaları
`platform` altında yer alır ve `app` tarafından sisteme bağlanır.

Platform adaptörleri ancak doğrudan platform API'si kullanılmaya başlandığında
oluşturulur.

### `l10n`

Türkçe ve İngilizce yerelleştirme kaynaklarını içerir. Kullanıcıya gösterilen
metinler yerelleştirme altyapısı kurulduktan sonra kaynak kodun farklı
noktalarına sabit metin olarak dağıtılmaz.

## Bağımlılık Yönü

Aşağıdaki oklar import bağımlılığını gösterir:

```text
app ────────────────► presentation
 │                      │
 ├──► data ─────────────┤
 │                      ├──► domain
 └──► platform ─────────┤
                         └──► core (yalnızca ortak temel yapılar)
```

Temel kurallar:

1. `domain`, yalnızca Dart iş kurallarını içerir; Flutter widget'larına,
   veritabanına veya platform API'lerine bağımlı olmaz.
2. `presentation`, `domain` sözleşmelerini kullanabilir fakat `data` veya
   `platform` uygulamalarına doğrudan erişmez.
3. `data`, `domain` tarafında tanımlanan repository sözleşmelerini uygular.
   Widget veya ekran koduna bağımlı olmaz.
4. `platform`, domain veya core sözleşmelerini uygulayabilir; presentation
   katmanını bilmez.
5. `app`, somut data ve platform uygulamalarını presentation tarafına enjekte
   eder.

Bu kurallar sayesinde UI doğrudan Drift, Android veya tarayıcı API'lerine
bağlanmaz. Domain kuralları Flutter olmadan unit testlerle çalıştırılabilir.

## Zamanlayıcı Feature'ı Örnek Klasör Ağacı

Aşağıdaki ağaç hedef yapıyı açıklar. Dosya ve klasörler ilgili işlev
geliştirilmeden önce boş iskelet olarak oluşturulmaz.

```text
lib/
├── main.dart
├── app/
│   ├── app.dart
│   ├── router/                         # Yönlendirme eklendiğinde
│   └── theme/                          # Tema oluşturulduğunda
├── core/
│   ├── config/                         # Merkezi ayarlar gerektiğinde
│   ├── errors/                         # Ortak hata türleri gerektiğinde
│   └── time/                           # Clock soyutlaması eklendiğinde
├── features/
│   └── focus_timer/
│       ├── presentation/
│       │   ├── pages/
│       │   │   └── focus_timer_page.dart
│       │   ├── widgets/
│       │   └── view_models/
│       │       └── focus_timer_view_model.dart
│       ├── domain/
│       │   ├── models/
│       │   │   └── focus_session.dart
│       │   ├── repositories/
│       │   │   └── focus_session_repository.dart
│       │   └── services/
│       │       └── reward_calculator.dart
│       └── data/
│           ├── data_sources/
│           └── repositories/
│               └── drift_focus_session_repository.dart
├── platform/
│   ├── android/
│   │   └── focus_timer/
│   │       └── android_focus_lifecycle_adapter.dart
│   └── web/
│       └── focus_timer/
│           └── web_focus_lifecycle_adapter.dart
└── l10n/                                  # Yerelleştirme eklendiğinde
```

## Başlangıçta Oluşturulacak Yapı

T05 tamamlanırken yalnızca çalışan kodun kullandığı yapı oluşturulur:

```text
lib/
├── main.dart
└── app/
    └── app.dart
```

Ana uygulama widget'ı `app/app.dart` içinde bulunur. `main.dart` yalnızca
uygulamayı başlatır. Diğer üst düzey klasörler ilk gerçek dosyalarına ihtiyaç
duyulduğunda oluşturulur.

Boş klasörleri Git'e eklemek için `.gitkeep` kullanılmaz. Henüz davranışı
olmayan service, repository, manager veya base sınıfları oluşturulmaz.

## Test Klasörlerinin Kaynak Kodla İlişkisi

`test` altındaki unit ve widget testleri mümkün olduğunca `lib` altındaki kaynak
dosyanın yolunu yansıtır:

```text
lib/features/focus_timer/domain/services/reward_calculator.dart
test/features/focus_timer/domain/services/reward_calculator_test.dart

lib/features/focus_timer/presentation/pages/focus_timer_page.dart
test/features/focus_timer/presentation/pages/focus_timer_page_test.dart
```

Birden fazla testin kullandığı fake, fixture ve test yardımcıları ancak gerçek
bir tekrar oluştuğunda `test/support/` altına alınır. Kullanıcı akışlarını bir
bütün olarak doğrulayan testler `integration_test/` altında tutulur.

Test klasörleri ve boş test dosyaları, test edilecek davranıştan önce
oluşturulmaz.

## Adlandırma Kuralları

- Klasör ve Dart dosya adları `snake_case` kullanır.
- Sınıf, enum, extension ve typedef adları `UpperCamelCase` kullanır.
- Değişken, parametre, fonksiyon ve metot adları `lowerCamelCase` kullanır.
- Test dosyası, kaynak dosya adını `_test.dart` son ekiyle tekrarlar.
- Route hedefi olan tam ekran widget'lar `_page.dart` son ekini kullanır.
- Tekrar kullanılabilir alt arayüz parçaları amacını anlatan adla `widgets`
  altında bulunur.
- View model dosyaları `_view_model.dart` son ekini kullanır.
- Repository sözleşmeleri `_repository.dart` son ekini kullanır.
- Somut repository adı kullandığı teknolojiyi veya kaynağı belirtir;
  örneğin `drift_focus_session_repository.dart`.
- Platform uygulamaları `_adapter.dart` son ekini kullanır ve platform adını
  açıkça belirtir.
- Dosya adları `manager`, `helper` veya `util` gibi belirsiz sorumluluklar yerine
  gerçek davranışı ifade eder.
- Aynı kavram için proje boyunca aynı terim kullanılır. Odaklanma
  zamanlayıcısı feature adı `focus_timer`, tamamlanan veya aktif çalışma kaydı
  ise `focus_session` olarak adlandırılır.

## Gereksiz Soyutlamadan Kaçınma

Yeni bir klasör, katman veya soyutlama yalnızca somut bir sorumluluk ortaya
çıktığında eklenir. Gelecekte kullanılabilir düşüncesiyle boş mimari iskelet
kurulmaz.

Bir soyutlama eklenmeden önce şu sorular sorulur:

1. Bu yapı bugün var olan hangi bağımlılığı veya iş kuralını ayırıyor?
2. Testlerde somut bir uygulamayı değiştirmemiz gerekiyor mu?
3. Kodun ait olduğu feature ve sorumluluk açık mı?
4. Yeni yapı, mevcut kodu sadeleştiriyor mu; yoksa yalnızca dosya sayısını mı
   artırıyor?

Bu soruların somut bir cevabı yoksa kod en basit çalışan yapıda tutulur.
