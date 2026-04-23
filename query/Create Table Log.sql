CREATE TABLE Log_User (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    waktu DATETIME DEFAULT CURRENT_TIMESTAMP,
    username VARCHAR(50),
    aksi VARCHAR(10) NOT NULL,
    brgKode VARCHAR(50) NOT NULL,
    
    brgNama_lama VARCHAR(255), brgNama_baru VARCHAR(255),
    brgStok_lama INT, brgStok_baru INT,
    brgHarga_lama DECIMAL(15,2), brgHarga_baru DECIMAL(15,2),
    brgIsi_lama VARCHAR(100), brgIsi_baru VARCHAR(100),
    brgKeterangan_lama TEXT, brgKeterangan_baru TEXT,
    brgGambar_lama VARCHAR(255), brgGambar_baru VARCHAR(255)
);