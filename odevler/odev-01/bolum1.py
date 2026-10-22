# Soru 1.1 - İz Sürme

numbers = [4, 7, 2, 9, 5, 1, 8]
total = 0
result = []

for i in range(len(numbers)):
    if numbers[i] % 2 == 0:
        total = total + numbers[i]
    else:
        result.append(numbers[i])

print(total)
print(result)

# Tablo:
# i = 0 -> sayı: 4 (çift) -> total = 4,  result = []
# i = 1 -> sayı: 7 (tek)  -> total = 4,  result = [7]
# i = 2 -> sayı: 2 (çift) -> total = 6,  result = [7]
# i = 3 -> sayı: 9 (tek)  -> total = 6,  result = [7, 9]
# i = 4 -> sayı: 5 (tek)  -> total = 6,  result = [7, 9, 5]
# i = 5 -> sayı: 1 (tek)  -> total = 6,  result = [7, 9, 5, 1]
# i = 6 -> sayı: 8 (çift) -> total = 14, result = [7, 9, 5, 1]
#
# Sonuç: Kodu çalıştırdığımda total 14, result ise [7, 9, 5, 1] çıktı.
# Tahminim doğru çıktı.

# ------------------------------------------

# Soru 1.2 - En Uzun Seri 

# Sozde kod (Pseudocode):
# 1. count = 0 ve longest = 0 degiskenlerini olustur.
# 2. readings listesindeki her bir value degerini sirayla kontrol et.
# 3. Eger value > threshold ise count degerini 1 artir.
# 4. Eger count > longest ise longest degerini count'a esitle.
# 5. Eger value <= threshold ise seri bozuldugu icin count = 0 yap.
# 6. Dongu bitince longest degerini ekrana yazdir.

readings = [18, 21, 23, 25, 24, 26, 27, 19, 20, 22, 23, 24, 25, 26]
threshold = 22

count = 0
longest = 0

for value in readings:
    if value > threshold:
        count = count + 1
        if count > longest:
            longest = count
    else:
        count = 0

print(longest)

# ------------------------------------------

# Soru 1.3 - Elle Gruplama 

records = [
    {"student": "Ece", "course": "VTYS"},
    {"student": "Ali", "course": "Yapay Zeka"},
    {"student": "Ece", "course": "Yapay Zeka"},
    {"student": "Can", "course": "VTYS"},
    {"student": "Ali", "course": "VTYS"},
    {"student": "Ece", "course": "Robotik"},
]

course_counts = {}

for record in records:
    course = record["course"]
    if course in course_counts:
        course_counts[course] = course_counts[course] + 1
    else:
        course_counts[course] = 1

print(course_counts)