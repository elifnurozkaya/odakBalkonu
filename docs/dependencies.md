**Yeşeren Zaman - Bağımlılık (Paket) Kararları**

Projenin mimari bütünlüğünü korumak adına eklenen paketlerin gerekçeleri ve durumları aşağıda listelenmiştir.

**Onaylanan Temel Paketler (approved)**

| Paket | Çözdüğü Problem | Alternatif / SDK Karşılığı | Destek (Android/Web) | Lisans | Domain Etkisi |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Riverpod** | Karmaşık state yönetimi ve DI. | Provider, Bloc / InheritedWidget | Tam Destek | MIT | Sızmamalı. |
| **go_router** | Derin bağlantılar ve URL geçmişi. | AutoRoute / Navigator 2.0 | Tam Destek | BSD-3 | Sızmaz. |
| **Drift** | SQL yetenekleri ve tür güvenliği. | sqflite, Isar / SDK karşılığı yok | Tam Destek | MIT | Sızmamalı. |
| **shared_preferences** | Basit key-value verilerini saklar. | Hive / SDK karşılığı yok | Tam Destek | BSD-3 | Sızmamalı. |
| **intl & flutter_l10n** | Çeviri ve tarih formatlaması. | easy_localization / Temel SDK eklentisi | Tam Destek | BSD-3 | Sızmaz. |

**Teknik Prototip Bekleyen Paketler (spike required)**

* **Bildirim Yönetimi:** `flutter_local_notifications` (Android API 36 Doze kısıtlamaları ve Web desteği test edilecek).
* **Ses Oynatımı:** Web platformu tarayıcı otomatik oynatma (autoplay) kısıtlamaları test edilecek.
* **Web Çoklu Sekme Koordinasyonu:** Aynı oturumun birden fazla ödül üretmemesi için sekme arası iletişim prototipi hazırlanacak.
* **Ekranı Açık Tutma:** `wakelock_plus` paketi test edilecek.
* **Saat Soyutlaması:** `clock` paketi eklenecek.
* **UUID Üretimi:** İşlem ve bitki kimlikleri için `uuid` paketi ileride değerlendirilecek.