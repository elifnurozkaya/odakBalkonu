### E01-T04: Android Ekran Kilidi ve Uygulama Değiştirme Karar Ağacı

**Gözlemler ve Kısıtlamalar**
* Ana ekrana dönme (Home) ve cihazı kilitleme (Güç Tuşu) eylemlerinin her ikisi de Flutter tarafında birebir aynı yaşam döngüsünü (`inactive` -> `hidden` -> `paused`) üretmektedir.
* Yalnızca Flutter'ın yerleşik `AppLifecycleState` bildirimleri kullanılarak kullanıcının niyeti (başka uygulamaya geçmek veya ekranı kapatmak) ayırt edilemez. Bu alternatif (yalnızca Flutter döngüsünü kullanmak) yetersizliği kanıtlanarak reddedilmiştir .
* Platform kanalından (EventChannel) dinlenen Android `Intent.ACTION_SCREEN_OFF` ve `Intent.ACTION_SCREEN_ON` sinyalleri ekran kilidi durumunu kesin olarak yakalayabilmektedir . Seçilen yaklaşım budur.

**E06 İçin Karar Ağacı Taslağı (Decision Tree)**
Uygulama `AppLifecycleState.paused` durumuna geçtiğinde şu mantık işletilecektir :
1. Flutter `paused` olayını yakala .
2. Hemen karar verme; yaklaşık 500ms'lik bir bekleme penceresi (grace period) aç .
3. Bu pencere içinde platform kanalından `screen_off` sinyali **gelirse** :
   * **Karar:** Kullanıcı cihazı kilitledi .
   * **Aksiyon:** Odaklanma sayacını durdurma, çalışmaya devam etmesine izin ver .
4. Bu pencere içinde `screen_off` sinyali **gelmezse** :
   * **Karar:** Kullanıcı ana ekrana döndü veya başka uygulamaya geçti .
   * **Aksiyon:** Odaklanma sayacını duraklat ve kural ihlali olarak kaydet .

**Yanlış Pozitif ve Yanlış Negatif Riskleri**
* **Yanlış Negatif (False Negative):** Android işletim sistemi yoğun yük altındayken `ACTION_SCREEN_OFF` sinyalini gecikmeli gönderebilir. Bekleme penceresi bu yüzden gereklidir.
* **Yanlış Pozitif (False Positive):** Kullanıcı tam ana ekrana dönerken aynı salisede güç tuşuna basarsa meydana gelebilir. Göz ardı edilebilir seviyededir.