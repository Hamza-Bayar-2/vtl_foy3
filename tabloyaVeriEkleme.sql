-- 2) Tablolara veri ekle

INSERT INTO birimler (birim_id, birim_ad) VALUES
(1, 'Yazılım'),
(2, 'Donanım'),
(3, 'Güvenlik');

INSERT INTO calisanlar (calisan_id, ad, soyad, maas, katilmaTarihi, calisan_birim_id) VALUES
(1, 'İsmail', 'İçeri', 100000, '2014-02-20 00:00:00', 1),
(2, 'Hami', 'Saltmış', 80000, '2014-06-11 00:00:00', 1),
(3, 'Durmuş', 'Şahin', 300000, '2014-02-20 00:00:00', 2),
(4, 'Kağan', 'Yazar', 500000, '2014-02-20 00:00:00', 3),
(5, 'Meryem', 'Soysaldı', 500000, '2014-06-11 00:00:00', 3),
(6, 'Duygu', 'Akşehir', 200000, '2014-06-11 00:00:00', 2),
(7, 'Kübra', 'Seyhan', 75000, '2014-01-20 00:00:00', 1),
(8, 'Gülcan', 'Yıldız', 90000, '2014-04-11 00:00:00', 3);

INSERT INTO ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih) VALUES
(1, 5000, '2016-02-20 00:00:00'),
(2, 3000, '2016-06-11 00:00:00'),
(3, 4000, '2016-02-20 00:00:00'),
(1, 4500, '2016-02-20 00:00:00'),
(2, 3500, '2016-06-11 00:00:00');

INSERT INTO unvan (unvan_calisan_id, unvan_calisan, unvan_tarih) VALUES
(1, 'Yönetici', '2016-02-20 00:00:00'),
(2, 'Personel', '2016-06-11 00:00:00'),
(8, 'Personel', '2016-06-11 00:00:00'),
(5, 'Müdür', '2016-06-11 00:00:00'),
(4, 'Yönetici Yardımcısı', '2016-06-11 00:00:00'),
(7, 'Personel', '2016-06-11 00:00:00'),
(6, 'Takım Lideri', '2016-06-11 00:00:00'),
(3, 'Takım Lideri', '2016-06-11 00:00:00');
