### E01-T03: Web Sayfa Yenilemesi ve Kalıcılık Davranışı

**Kalıcılık Gözlemleri**
* **Normal Yenileme (Soft/Hard Refresh):** Tarayıcı yenilendiğinde (F5 veya Ctrl+F5) Flutter state'i sıfırlansa da, veriler OPFS üzerinden anında ve kayıpsız bir şekilde kurtarılmaktadır. Uygulamanın asset cache'inin silinmesi kullanıcı verisini etkilemez.
* **Tarayıcı ve Sekme Döngüsü:** Sekme veya tarayıcı tamamen kapatılıp yeniden açıldığında (aynı tarayıcı profili kullanıldığı sürece) veriler okunabilmektedir. 
* **Tarayıcı İzolasyonu:** Chrome'da oluşturulan veriler Opera gibi farklı bir tarayıcıdan (aynı localhost portuna gidilse dahi) okunamamaktadır. Her tarayıcının yerel kasası tamamen izoledir.

**Veri Kaybı Senaryoları (Yıkıcı Davranışlar)**
* Kullanıcı tarayıcı üzerinden "Site Verilerini Temizle (Clear site data)" işlemi yaptığında OPFS ve IndexedDB verileri kalıcı olarak yok olur ve kurtarılamaz.
* Web platformundaki yerel depolama %100 güvenilir, silinmez bir kasa olarak değerlendirilemez. Hassas kullanıcı verilerinin korunması için ileride yerel dışa aktarma (export/yedekleme) mekanizmasının eklenmesi gerekebilir.