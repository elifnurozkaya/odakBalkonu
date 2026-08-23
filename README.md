# odakBalkonu

## Geliştirme ortamı

Projede yerel geliştirme ve CI ortamlarının aynı SDK sürümünü kullanması için Flutter sürümü FVM ile sabitlenmiştir.

- Flutter: `3.44.8`
- Kanal: `stable`
- Dart: `3.12.2`
- Sürüm yapılandırması: `.fvmrc`

Dart SDK, seçilen Flutter SDK ile birlikte gelir; ayrıca kurulmaz veya bağımsız olarak sürümlendirilmez.

### Android SDK yapılandırması

Android yapılandırması `android/app/build.gradle.kts` dosyasında tutulur.

- Minimum SDK: API 24 — Android 7.0
- Compile SDK: API 36 — Android 16
- Target SDK: API 36 — Android 16

Minimum SDK, ürünün desteklediği en eski Android sürümü olduğu için açıkça `24` olarak tanımlanmıştır. Compile ve target SDK değerleri, sabitlenmiş Flutter 3.44.8 araç zincirinden alınır ve bu sürümde API 36 değerine çözülür.

Google Play, 31 Ağustos 2026 itibarıyla yeni uygulama ve güncellemelerin API 36 veya üzerini hedeflemesini istemektedir. Güncel şart yayın öncesinde yeniden kontrol edilmelidir.

Android 13 (API 33) ve üzerinde bildirim göndermek için `POST_NOTIFICATIONS` çalışma zamanı izni gerekir. Bildirim özelliği uygulanırken izin, kullanıcı özelliğin neden gerekli olduğunu anlayabileceği bir anda istenmeli; izin reddedildiğinde temel uygulama işlevleri çalışmaya devam etmelidir.

Android 12 (API 31) ve üzerinde uygulamalar, tanımlı istisnalar dışında arka plandayken foreground service başlatamaz. Bu nedenle ileride geliştirilecek odak zamanlayıcısı, arka plandan sınırsız biçimde foreground service başlatabileceğini varsaymamalıdır. API 34 ve üzerinde kullanılacak foreground service türü ile ilgili izinlerin ayrıca tanımlanması gerekir.

23 Ağustos 2026 tarihinde `fvm flutter build apk --debug` komutu başarıyla çalıştırılmış ve debug APK oluşturulmuştur.

### İlk kurulum

FVM kurulduktan sonra depo kökünde aşağıdaki komut çalıştırılır:

    fvm use 3.44.8

Kurulum şu komutlarla doğrulanabilir:

    fvm flutter --version
    fvm dart --version
    fvm flutter doctor -v

Projeye ait Flutter ve Dart komutları, `.fvmrc` içinde belirtilen SDK’nın kullanılması için `fvm flutter ...` ve `fvm dart ...` biçiminde çalıştırılmalıdır.

### CI sürüm bilgisi

Gelecekteki CI yapılandırması Flutter `3.44.8` sürümünü açıkça kullanmalıdır. Dart `3.12.2`, bu Flutter sürümüyle birlikte geldiğinden CI ortamında ayrıca Dart SDK kurulmasına gerek yoktur.

### Ortam doğrulaması

22 Ağustos 2026 tarihinde `fvm flutter doctor -v` ile yapılan kontrolde Android geliştirme ortamı ile Chrome ve Edge Web hedefleri kullanılabilir durumdadır. Geliştirmeyi engelleyen bilinen bir ortam sorunu bulunmamaktadır.

Kaynaklar: [Google Play hedef API şartı](https://developer.android.com/google/play/requirements/target-sdk), [Android 13 bildirim izni](https://developer.android.com/develop/ui/compose/notifications/notification-permission), [foreground service kısıtlamaları](https://developer.android.com/develop/background-work/services/fgs/restrictions-bg-start).