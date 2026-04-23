DELIMITER //
CREATE TRIGGER trg_produk_insert 
AFTER INSERT ON Produk FOR EACH ROW 
BEGIN
    INSERT INTO Log_User (
        waktu, username, aksi, brgKode, 
        brgNama_baru, brgStok_baru, brgHarga_baru, brgIsi_baru, brgKeterangan_baru, brgGambar_baru
    ) VALUES (
        CURRENT_TIMESTAMP, IFNULL(@app_username, 'System'), 'INSERT', NEW.brgKode,
        NEW.brgNama, NEW.brgStok, NEW.brgHarga, NEW.brgIsi, NEW.brgKeterangan, NEW.brgGambar
    );
END //

CREATE TRIGGER trg_produk_update 
AFTER UPDATE ON Produk FOR EACH ROW 
BEGIN
    INSERT INTO Log_User (
        waktu, username, aksi, brgKode,
        brgNama_lama, brgNama_baru,
        brgStok_lama, brgStok_baru,
        brgHarga_lama, brgHarga_baru,
        brgIsi_lama, brgIsi_baru,
        brgKeterangan_lama, brgKeterangan_baru,
        brgGambar_lama, brgGambar_baru
    ) VALUES (
        CURRENT_TIMESTAMP, IFNULL(@app_username, 'System'), 'UPDATE', NEW.brgKode,
        OLD.brgNama, NEW.brgNama,
        OLD.brgStok, NEW.brgStok,
        OLD.brgHarga, NEW.brgHarga,
        OLD.brgIsi, NEW.brgIsi,
        OLD.brgKeterangan, NEW.brgKeterangan,
        OLD.brgGambar, NEW.brgGambar
    );
END //

CREATE TRIGGER trg_produk_delete 
AFTER DELETE ON Produk FOR EACH ROW 
BEGIN
    INSERT INTO Log_User (
        waktu, username, aksi, brgKode,
        brgNama_lama, brgStok_lama, brgHarga_lama, brgIsi_lama, brgKeterangan_lama, brgGambar_lama
    ) VALUES (
        CURRENT_TIMESTAMP, IFNULL(@app_username, 'System'), 'DELETE', OLD.brgKode,
        OLD.brgNama, OLD.brgStok, OLD.brgHarga, OLD.brgIsi, OLD.brgKeterangan, OLD.brgGambar
    );
END //
DELIMITER ;

DROP TRIGGER trg_produk_insert;
DROP TRIGGER trg_produk_update;
DROP TRIGGER trg_produk_delete;