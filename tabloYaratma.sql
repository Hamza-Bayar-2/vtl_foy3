-- 1) Tabloları oluşturma

CREATE TABLE birimler (
    birim_id INT PRIMARY KEY,
    birim_ad CHAR(25) NOT NULL
);

CREATE TABLE calisanlar (
    calisan_id INT PRIMARY KEY,
    ad CHAR(25) NOT NULL,
    soyad CHAR(25) NOT NULL,
    maas INT,
    katilmaTarihi DATETIME,
    calisan_birim_id INT NOT NULL,
    FOREIGN KEY (calisan_birim_id) REFERENCES birimler(birim_id)
);

CREATE TABLE unvan (
    unvan_calisan_id INT NOT NULL,
    unvan_calisan CHAR(25) NOT NULL,
    unvan_tarih DATETIME NOT NULL,
    FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar(calisan_id)
);

CREATE TABLE ikramiye (
    ikramiye_calisan_id INT NOT NULL,
    ikramiye_ucret INT,
    ikramiye_tarih DATETIME,
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar(calisan_id)
);
