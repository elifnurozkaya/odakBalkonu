# odakBalkonu

## Geliştirme ortamı

Projede yerel geliştirme ve CI ortamlarının aynı SDK sürümünü kullanması için Flutter sürümü FVM ile sabitlenmiştir.

- Flutter: `3.44.8`
- Kanal: `stable`
- Dart: `3.12.2`
- Sürüm yapılandırması: `.fvmrc`

Dart SDK, seçilen Flutter SDK ile birlikte gelir; ayrıca kurulmaz veya bağımsız olarak sürümlendirilmez.

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

