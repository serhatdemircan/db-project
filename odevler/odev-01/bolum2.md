# Bölüm 2: Veritabanı Kavramları

**1. Excel yerine veritabanı kullanmak**
Excel'de aynı anda çoklu kullanıcı çalıştığında veri çakışmaları ve kayıpları yaşanır; veritabanı ise eşzamanlı erişimle bunu engeller. Excel'de veriler dağınık tutulduğu için tutarsızlık oluşurken, veritabanı tabloları bağlayarak tekrarı önler. Ayrıca veritabanı veri tiplerini zorunlu kılarak yanlış veri girişini engeller ve büyük verileri çok daha hızlı sorgular.

**2. Birincil anahtar (Primary Key)**
Birincil anahtar, tablodaki her satırı tekil olarak ayırt etmemizi sağlayan ve tıpkı parmak izi gibi herkese özel olan bir kimlik sütunudur. Örneğin öğrenci numarası bu tanıma tam uyar ve harika bir birincil anahtardır. Ancak ad ve soyad aynı isimde birden çok insan olabileceği için benzersiz değildir ve birincil anahtar olamaz.

**3. DBMS ile veritabanı arasındaki fark**
Veritabanı, verilerin düzenli bir şekilde depolandığı alanın kendisidir. DBMS ise bu verilere erişmemizi, sorgulamamızı ve yönetmemizi sağlayan aracı yazılımdır. Bu mantıkla PostgreSQL verinin kendisi değil, birer DBMS yazılımıdır.

**4. Aynı anda iki kişinin aynı kaydı değiştirmesi**
Aynı anda iki kişi aynı kaydı değiştirmeye kalkarsa son kaydeden kişinin işlemi öncekini siler ve ilk yapılan değişiklik kaybolur.