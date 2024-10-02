import pymysql

# MySQL veritabanına bağlanma
def connect_to_db():
    return pymysql.connect(
        host="localhost",
        user="root",  # Kendi MySQL kullanıcı adını ve şifreni buraya gir
        password="1391",
        database="kitap_katalogu",
        cursorclass=pymysql.cursors.DictCursor
    )

# Kitap Ekleme
def kitap_ekle(kitap_adi, yazar, yayin_tarihi, tur, isbn):
    db = connect_to_db()
    cursor = db.cursor()
    sql = "INSERT INTO kitaplar (kitap_adi, yazar, yayin_tarihi, tur, isbn) VALUES (%s, %s, %s, %s, %s)"
    values = (kitap_adi, yazar, yayin_tarihi, tur, isbn)
    cursor.execute(sql, values)
    db.commit()
    print(f"{cursor.rowcount} kitap eklendi.")
    db.close()

# Kitap Güncelleme
def kitap_guncelle(kitap_id, yeni_kitap_adi, yeni_yazar, yeni_yayin_tarihi, yeni_tur, yeni_isbn):
    db = connect_to_db()
    cursor = db.cursor()
    sql = "UPDATE kitaplar SET kitap_adi=%s, yazar=%s, yayin_tarihi=%s, tur=%s, isbn=%s WHERE id=%s"
    values = (yeni_kitap_adi, yeni_yazar, yeni_yayin_tarihi, yeni_tur, yeni_isbn, kitap_id)
    cursor.execute(sql, values)
    db.commit()
    print(f"{cursor.rowcount} kitap güncellendi.")
    db.close()

# Kitap Silme
def kitap_sil(kitap_id):
    db = connect_to_db()
    cursor = db.cursor()
    sql = "DELETE FROM kitaplar WHERE id=%s"
    values = (kitap_id,)
    cursor.execute(sql, values)
    db.commit()
    print(f"{cursor.rowcount} kitap silindi.")
    db.close()

# Kitapları Listeleme
def kitaplari_listele():
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM kitaplar")
    kitaplar = cursor.fetchall()
    for kitap in kitaplar:
        print(kitap)
    db.close()

# Ana Menü
def ana_menu():
    while True:
        print("\n1. Kitap Ekle")
        print("2. Kitap Güncelle")
        print("3. Kitap Sil")
        print("4. Kitapları Listele")
        print("5. Çıkış")
        secim = input("Bir işlem seçin: ")

        if secim == "1":
            kitap_adi = input("Kitap adı: ")
            yazar = input("Yazar: ")
            yayin_tarihi = input("Yayın tarihi (YYYY-MM-DD): ")
            tur = input("Tür: ")
            isbn = input("ISBN: ")
            kitap_ekle(kitap_adi, yazar, yayin_tarihi, tur, isbn)
        
        elif secim == "2":
            kitap_id = input("Güncellenecek kitabın ID'si: ")
            yeni_kitap_adi = input("Yeni kitap adı: ")
            yeni_yazar = input("Yeni yazar: ")
            yeni_yayin_tarihi = input("Yeni yayın tarihi (YYYY-MM-DD): ")
            yeni_tur = input("Yeni tür: ")
            yeni_isbn = input("Yeni ISBN: ")
            kitap_guncelle(kitap_id, yeni_kitap_adi, yeni_yazar, yeni_yayin_tarihi, yeni_tur, yeni_isbn)
        
        elif secim == "3":
            kitap_id = input("Silinecek kitabın ID'si: ")
            kitap_sil(kitap_id)
        
        elif secim == "4":
            kitaplari_listele()
        
        elif secim == "5":
            print("Çıkılıyor...")
            break

        else:
            print("Geçersiz seçim! Lütfen tekrar deneyin.")

# Programı başlat
if __name__ == "__main__":
    ana_menu()
    