USE `PW`;

CREATE TABLE Produk (
    brgKode VARCHAR(15) NOT NULL PRIMARY KEY,
    brgNama VARCHAR(50),
    brgTanggal DATE,
    brgStok INT,
    brgHarga DECIMAL(10,2),
    brgIsi VARCHAR(25),
    brgGambar VARCHAR(255)
);

ALTER TABLE Produk
    ADD brgKeterangan varchar(1000)
;

ALTER TABLE Produk
    ADD brgHarga DECIMAL(10,2);