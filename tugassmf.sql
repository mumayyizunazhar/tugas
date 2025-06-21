CREATE DATABASE IF NOT EXISTS Nasabah;
USE Nasabah;

2. Create Table

-- Tabel Cabang
CREATE TABLE Cabang (
    Kd_cabang VARCHAR(10) PRIMARY KEY,
    Nama VARCHAR(50),
    Alamat VARCHAR(50),
    Jml_Nasabah INT
);

-- Tabel Nasabah
CREATE TABLE Nasabah (
    Kd_Nasabah VARCHAR(10) PRIMARY KEY,
    Nama VARCHAR(50),
    Alamat VARCHAR(50),
    Rekening VARCHAR(20),
    Kd_cabang VARCHAR(10),
    Saldo BIGINT,
    FOREIGN KEY (Kd_cabang) REFERENCES Cabang(Kd_cabang)
);

3. Insert Into Cabang

INSERT INTO Cabang (Kd_cabang, Nama, Alamat, Jml_Nasabah) VALUES
('KC001', 'KC AKAKOM', 'JANTI', 8),
('KC002', 'KC GEJAYAN', 'GEJAYAN', 5),
('KC003', 'KC WIROBRAJAN', 'WIROBRAJAN', 8),
('KC004', 'KC GEDUNG KUNING', 'GEDUNG KUNING', 7),
('KC005', 'KC BABARSARI', 'BABARSARI', 3);

4. Insert Into Nasabah

INSERT INTO Nasabah (Kd_Nasabah, Nama, Alamat, Rekening, Kd_cabang, Saldo) VALUES
('N0001', 'Januar', 'Condong Catur', '12340001', 'KC002', 1500000),
('N0002', 'Febri', 'Gejayan', '12340002', 'KC004', 950000),
('N0003', 'Marina', 'Gamping', '12340003', 'KC005', 1400000),
('N0004', 'Aprila', 'Janti', '12340004', 'KC001', 7000000),
('N0005', 'Memey', 'Kotabaru', '12340005', 'KC003', 2000000),
('N0006', 'Junita', 'Kalasan', '12340006', 'KC001', 1200000),
('N0007', 'Juliana', 'Terban', '12340007', 'KC002', 1300000),
('N0008', 'Agusto', 'Sleman', '12340008', 'KC005', 2800000),
('N0009', 'Septiana', 'Terban', '12340009', 'KC004', 900000),
('N0010', 'Oktavia', 'Sagan', '12340010', 'KC003', 450000),
('N0011', 'Novia', 'Monjali', '12340011', 'KC001', 750000),
('N0012', 'Desia', 'Timoho', '12340012', 'KC005', 1200000);

a) menampilkan semua nasabah,alamat dan saldonya

SELECT Nama, Alamat, Saldo FROM Nasabah;

b) menampilkan nama nasabah dengan dengan saldo > 2000000

SELECT Nama FROM Nasabah WHERE Saldo > 2000000;

c) menampilkan nama nasabah dengan alamat Gejayan

SELECT Nama FROM Nasabah WHERE Alamat = 'Gejayan';

d) menampilkan nama nasabah dengan kode cabang KC003

SELECT Nama FROM Nasabah WHERE Kd_cabang = 'KC003';

e) Menampilkan semua data kantor cabang (nama dan alamat)

SELECT Nama, Alamat FROM Cabang;

f) Menampilkan nama kantor cabang dengan alamat Janti

SELECT Nama FROM Cabang WHERE Alamat = 'JANTI';

g) Menampilkan nama kantor cabang dengan jumlah nasabah > 5

SELECT Nama FROM Cabang WHERE Jml_Nasabah > 5;

h) Update data kantor cabang dengan kode KC002

UPDATE Cabang
SET Nama = 'KC Ambarukmo',
    Alamat = 'Ambarukmo',
    Jumlah_Nasabah = 15
WHERE Kode_cabang = 'KC002';

i) Hapus data kantor cabang dengan jumlah nasabah kurang dari 5

DELETE FROM Cabang WHERE Jml_Nasabah < 5;

j) Update data nasabah dengan kode N0010

UPDATE Nasabah
SET Alamat = 'Monjali', Saldo = 9000000
WHERE Kd_Nasabah = 'N0010';

k) Hapus semua nasabah dengan alamat Terban

DELETE FROM Nasabah WHERE Alamat = 'Terban';

l) Menampilkan saldo maksimal

SELECT MAX(Saldo) AS Saldo_Maksimal FROM Nasabah;

m) Menampilkan rata-rata saldo nasabah

SELECT AVG(Saldo) AS Rata_rata_Saldo FROM Nasabah;

n) Menampilkan jumlah nasabah

SELECT COUNT(*) AS Jumlah_Nasabah FROM Nasabah;
