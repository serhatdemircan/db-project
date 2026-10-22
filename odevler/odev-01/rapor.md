**Ödev no:** Ödev 1     **Hafta:** 5     **Tarih:** 22 / 10 / 2026

**Ad Soyad:** Serhat Demircan  **Öğrenci No:** 202607131020

**Program:** [x] Yapay Zeka Operatörlüğü  ☐ Robotik ve Yapay Zeka

**Kullandığım veritabanı:** [x] `llm_ops`  ☐ `robot_fleet`

**PR bağlantısı:** `https://github.com/` ______________________________________

**Commit sayısı:** 3

---

## 1. Ne yaptım

Bu ödevde neyi çözdüğünü 3-5 cümleyle anlat. Soru listesini tekrar yazma; **ne öğrendiğini** yaz.

Bu ödevde PostgreSQL kullanarak llm_ops veritabanı üzerinden SQL sorgularını tamamladım.

lk bölümlerde SELECT, WHERE, LIKE ve ORDER BY komutlarıyla verileri filtrelemeyi ve sıralamayı öğrendim.

Sonraki aşamalarda GROUP BY ile verileri gruplayıp COUNT, SUM, AVG gibi özet fonksiyonlarıyla analiz ettim.

---

## 2. Sonuçlar

Çözdüğüm soru sayısı: 37 / 37     Bonus: ☐ denedim [x] denemedim

En zorlandığım soru: Bölüm 3 ve 4 teki sorular.

Neden zorlandım:

SQL komutlarını sıfırdan yazarken ve eksik verilerin (NULL) mantığını kurarken tek başıma yapmakta çok zorlandım.

Nasıl çözdüm:

Yapay zekadan yardım alarak sorguların mantığını öğrendim; kodları terminalde tek tek çalıştırıp sonuçları ekranda görerek kontrol ettim.
---

## 3. Beklemediğim bir sonuç

Bir sorgu beklediğinden farklı sayıda satır döndürdü mü? Hangisi ve neden?

(Eksik veri, koşul önceliği, büyük/küçük harf, birim dönüşümü… Böyle bir durumla karşılaşmadıysan "karşılaşmadım" yaz, ama önce iyi bak.)

**Soru no:** Bölüm 4 - Soru 10

**Beklediğim:** 1 satır   **Gelen:** 3 satır

**Sebebi:**

Arama yaparken sadece bir model bekliyordum ama veritabanındaki diğer kelimelerin içinde de geçtiği için fazladan satırlar geldi.

---

## 4. Aldığım bir hata ve çözümü

Dönem boyunca hata mesajı okumayı öğreniyoruz. Bu hafta aldığın bir hatayı yaz.

**Hata mesajı:**

ERROR: relation "llm_calls" does not exist

ERROR: character with byte sequence 0x8d in encoding "WIN1254" has no equivalent in encoding "UTF8"

**Sebebi ve çözümü:**

Yanlış veritabanında (postgres) olduğum için tabloyu bulamadı. \c llm_ops komutuyla doğru veritabanına bağlanarak sorunu çözdüm.

Sorgu içinde Türkçe karakter kullandığım için terminal kodlaması hata verdi. Etiketleri İngilizceye (Fast, Slow) çevirerek düzelttim.

______________________________________________________________________

---

## 5. Yapay zeka kullanım beyanı

☐ Bu ödevde yapay zeka aracı **kullanmadım.**

☑ Kullandım, aşağıda belirttim:

Soru no: Bölüm 1-4

Araç: Gemini 4 Argon

Ne sordum (özet): Temel SQL komutlarını ve anlamadığım tüm soruların çözümlerini sordum, adım adım birlikte çıkardık.

Cevabı Nasıl Doğruladım : Kodları psql terminalinde tek tek çalıştırdım, dönen satır sayılarını ekranda görerek ve veritabanı tablosuyla karşılaştırarak doğruladım.
---

## 6. Öz Değerlendirme

| Ölçüt                  
| :--- | :---:           
| A, Doğruluk : 4 Tam            
| B, SQL kalitesi : 3 İyi       
| C, Yorum ve analiz : 3 İyi    
| D, Git ve PR disiplini : 3 İyi 
| E, Dürüstlük ve beyan : 4 Tam

Bir dahaki ödevde daha iyi yapacağım şey:

"Temel SQL sorgularını daha bağımsız yazmaya çalışacağım."

---

## 7. Bana sorun

Anlamadığın, merak ettiğin ya da derste tekrar görmek istediğin bir konu:

Sorguları sıfırdan yazmaya başlarken doğru adımları kurgulamakta zorlanıyorum.

---

**İmza:** Serhat

---

*Doğruluk beyanı: Bu çalışmayı kendim yaptım. Kullandığım tüm yardımcı kaynakları ve yapay zeka araçlarını yukarıda beyan ettim.*