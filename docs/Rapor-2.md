# Rapor-2 — Teknik Planlama ve GitHub Projects Kurulumu

> **Rapor tarihi:** 21 Ağustos 2026  
> **Proje:** Yeşeren Zaman  
> **Repository:** `elifnurozkaya/odakBalkonu`  
> **Planlama platformu:** GitHub Projects  
> **Kapsam:** PRD 0.3 sonrası teknik kararlar, görev planı ve issue başlıkları

## Görüşmenin özeti

Bu görüşmede `prd.md` sürüm 0.3 teknik açıdan incelendi ve geliştirmeye
başlamadan önce verilmesi gereken temel kararlar netleştirildi. Flutter ile
Android ve Web geliştirilmesine; feature-first MVVM, Repository ve gerekli
yerlerde Domain katmanı kullanılmasına karar verildi. State management ve
dependency injection için Riverpod, yerel veri için Drift, navigasyon için
`go_router` seçildi. Balkonun oyun motoru yerine mantıksal slotlara bağlı
Flutter widget'larıyla hazırlanması kararlaştırıldı.

Android paket kimliği `io.github.elifnurozkaya.yeserenzaman`, teknik Flutter
proje adı `odak_balkonu` olarak belirlendi. Planlama kapasitesi haftalık
yaklaşık 40 saat kabul edildi. MVP içeriği 3 bitki, 4 saksı ve 6 dekorasyonla
sınırlandırıldı. Geliştirmede önce geçici görseller kullanılmasına, Android ve
Web'in aynı özellik akışları içinde birlikte kontrol edilmesine karar verildi.

Geliştirme planı günlük veya haftalık takvim yerine teknik bağımlılıklara göre
E00–E16 arasında 17 epiğe bölündü. Her epik, tek başına tamamlanabilen ve kabul
ölçütü bulunan alt görevlere ayrıldı.

Planlama için GitHub Projects seçildi. `Yeşeren Zaman — MVP` adlı Project,
`elifnurozkaya/odakBalkonu` repository'sine bağlandı. Project durumları
`Backlog`, `Ready`, `In Progress`, `Review / Test`, `Blocked` ve `Done` olarak
yapılandırıldı. Görev büyüklüğü için `Size`, öncelik için `Priority` alanları
eklendi. Issue'lar için epik, görev, platform ve teknik alan etiketleri
oluşturuldu. E00 epiği ile E00-T01–E00-T11 alt görevleri GitHub Issues üzerinde
epik–sub-issue ilişkisiyle hazırlandı.

