**Dal (Branch) Adlandırma Kuralları**
Her görev için kısa ömürlü dallar oluştururken issue numarası ve kısa bir İngilizce/Türkçe açıklama kullanmak takibi kolaylaştırır:

* **Yeni Özellik (Feature):** `feat/issue-no-kisa-isim` (Örn: `feat/12-login-ekrani`)
* **Hata Çözümü (Fix):** `fix/issue-no-kisa-isim` (Örn: `fix/15-renk-hatasi`)
* **Dokümantasyon (Docs):** `docs/issue-no-kisa-isim` (Örn: `docs/kurulum-adimlari`)
* **Teknik İşler/Bakım (Chore):** `chore/issue-no-kisa-isim` (Örn: `chore/paket-guncellemesi`)

**Commit Mesajı Standardı**
Değişikliklerin geçmişte kolayca okunabilmesi için eylemin türü başa yazılır:

* `feat: kullanıcı profil sayfası oluşturuldu`
* `fix: geçersiz şifre girildiğinde oluşan çökme giderildi`
* `docs: README dosyasına proje çalıştırma komutları eklendi`
* `chore: kullanılmayan import satırları temizlendi`

**Issue ve Pull Request (PR) Otomasyonu**
Geliştirme tamamlandıktan sonra açılan Pull Request'in açıklamasına (description) belirli anahtar kelimeleri eklemek, PR onaylanıp `main` dalına birleştiğinde (merge) ilgili issue'nun otomatik kapanmasını sağlar. PR açıklamasına şunlardan birini eklemek yeterlidir:

* `Closes #12`
* `Fixes #12`
* `Resolves #12`

**main Dalı ve Geliştirme Akışı Kuralları**

* `main` dalı her zaman kararlı ve anında derlenip çalıştırılabilir durumda olmalıdır.
* `main` dalına doğrudan kod itilmez (push). Tüm büyük geliştirmeler ve hata çözümleri PR üzerinden `main` dalına aktarılır.
* PR başarıyla `main` dalına birleştirildikten sonra, repo karmaşıklığını önlemek için üzerinde çalışılan özellik dalı (feature branch) tamamen silinir.
