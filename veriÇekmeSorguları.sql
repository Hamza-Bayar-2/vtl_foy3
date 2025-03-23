-- 3) “Yazılım” veya “Donanım” birimlerinde çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusunu yazınız.

SELECT c.ad, c.soyad, c.maas FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
WHERE b.birim_ad IN ('Yazılım', 'Donanım');

-- 4) Maaşı en yüksek olan çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusunu yazınız.

SELECT ad, soyad, maas FROM calisanlar
WHERE maas = (SELECT MAX(maas) FROM calisanlar);

-- 5) Birimlerin her birinde kaç adet çalışan olduğunu ve birimlerin isimlerini listeleyen sorguyu yazınız. 

SELECT b.birim_ad, COUNT(c.calisan_id) AS calisan_sayisi FROM birimler b
LEFT JOIN calisanlar c ON b.birim_id = c.calisan_birim_id
GROUP BY b.birim_ad;

-- 6) Birden fazla çalışana ait olan unvanların isimlerini ve o unvan altında çalışanların sayısını listeleyen sorguyu yazınız.

SELECT unvan_calisan, COUNT(unvan_calisan_id) AS calisan_sayisi FROM unvan
GROUP BY unvan_calisan
HAVING COUNT(unvan_calisan_id) > 1;

-- 7) Maaşları “50000” ve “100000” arasında değişen çalışanların ad, soyad ve maaş bilgilerini listeleyen sorguyu yazınız.

SELECT ad, soyad, maas FROM calisanlar
WHERE maas BETWEEN 50000 AND 100000;

-- 8) İkramiye hakkına sahip çalışanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorguyu yazınız. 

SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
JOIN ikramiye i ON c.calisan_id = i.ikramiye_calisan_id;

-- 9) Ünvanı “Yönetici” ve “Müdür” olan çalışanların ad, soyad ve ünvanlarını listeleyen sorguyu yazınız.

SELECT c.ad, c.soyad, u.unvan_calisan FROM calisanlar c
JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Yönetici', 'Müdür');

-- 10) Her bir birimde en yüksek maaş alan çalışanların ad, soyad ve maaş bilgilerini listeleyen sorguyu yazınız.

SELECT c.ad, c.soyad, c.maas, b.birim_ad FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
WHERE c.maas = (
    SELECT MAX(maas)
    FROM calisanlar c2
    WHERE c2.calisan_birim_id = c.calisan_birim_id
);
