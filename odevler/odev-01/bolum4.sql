-- Soru 1
SELECT COUNT(*) FROM llm_calls;
-- 15 kayıt, yani sistemde toplam 15 adet çağrı kaydedilmiş durumda.

-- Soru 2
SELECT COUNT(*) FROM llm_calls WHERE latency_ms > 2000;
-- 4 kayıt, yani 2 saniyeden (2000 ms) uzun süren toplam 4 yavaş çağrı var.

-- Soru 3
SELECT SUM(cost_usd) AS total_cost, SUM(prompt_tokens + completion_tokens) AS total_tokens FROM llm_calls;
-- Tüm çağrılar için toplam maliyet ve harcanan toplam token miktarını gösteriyor.

-- Soru 4
SELECT ROUND(AVG(latency_ms), 1) AS avg_latency FROM llm_calls;
-- 1245.3 ms, yani çağrıların ortalama yanıt gecikme süresi yaklaşık 1.25 saniye.

-- Soru 5
SELECT MIN(latency_ms) AS min_latency, MAX(latency_ms) AS max_latency FROM llm_calls;
-- En hızlı çağrı 320 ms sürerken, en yavaş çağrı 3100 ms sürmüş.

-- Soru 6
SELECT task_type, COUNT(*) FROM llm_calls GROUP BY task_type;
-- Farklı iş türlerine göre çağrı dağılımını ve her türden kaç adet yapıldığını gösteriyor.

-- Soru 7
SELECT model_name, COUNT(*) AS call_count, SUM(cost_usd) AS total_cost FROM llm_calls GROUP BY model_name ORDER BY total_cost DESC;
-- Modellere göre çağrı adetleri ve toplam maliyetler; en pahalıdan en ucuza doğru sıralandı.

-- Soru 8
SELECT user_name, task_type, COUNT(*) FROM llm_calls GROUP BY user_name, task_type;
-- Hangi kullanıcının hangi iş türünden kaçşar adet çağrı yaptığını detaylıca listeliyor.

-- Soru 9
SELECT model_name FROM llm_calls GROUP BY model_name HAVING COUNT(*) > 2;
-- 2'den fazla çağrı almış (yani 3 veya daha fazla kez kullanılmış) modelleri listeliyor.

-- Soru 10
SELECT model_name, ROUND(AVG(latency_ms), 1) AS avg_latency FROM llm_calls WHERE latency_ms > 500 GROUP BY model_name HAVING COUNT(*) >= 2;
-- 500 ms'den yavaş olan çağrılar hesaba katılarak, en az 2 çağrısı bulunan modellerin ortalama gecikmesini gösteriyor.

-- Soru 11
SELECT 
    COUNT(*) AS total_rows,
    COUNT(cost_usd) AS cost_filled,
    COUNT(*) - COUNT(cost_usd) AS cost_missing
FROM llm_calls;
-- Tablodaki cost_usd sütununda eksik veri olup olmadığını kontrol ediyor; tüm satırlar dolu.

-- Soru 12
SELECT * FROM llm_calls WHERE cost_usd IS NULL;
-- 0 satır döndü, çünkü maliyet bilgisi boş olan (eksik kayıt) çağrı bulunmuyor.

-- Soru 13
SELECT 
    ROUND(AVG(latency_ms), 1) AS avg_ignoring_nulls,
    ROUND(AVG(COALESCE(latency_ms, 0)), 1) AS avg_with_zero
FROM llm_calls;
-- Boş değerleri atlamak daha dürüst bir rapordur çünkü boş veriyi sıfır kabul etmek genel ortalamayı yapay olarak aşağı çeker.

-- Soru 14
SELECT 
    DATE(created_at) AS call_date,
    COUNT(*) AS call_count,
    SUM(cost_usd) AS total_cost
FROM llm_calls
GROUP BY DATE(created_at)
ORDER BY call_count DESC;
-- Günlük kullanım raporu; en çok çağrı alan gün en üstte listeleniyor.

-- Soru 15
SELECT 
    CASE 
        WHEN latency_ms < 1000 THEN 'Fast'
        WHEN latency_ms BETWEEN 1000 AND 2499 THEN 'Medium'
        ELSE 'Slow'
    END AS latency_category,
    COUNT(*) AS call_count,
    ROUND(AVG(latency_ms), 1) AS avg_latency
FROM llm_calls
GROUP BY latency_category;
-- Çağrıları hızlarına göre kategorilere ayırıp her gruptaki toplam çağrı sayısını ve ortalama gecikmeyi hesaplıyor.