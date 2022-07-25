# Flutter GridView widget kullanilarak seçenekler üzerinde erisilip, farkli islemler gerçeklestiren bir uygulama\

[Bir Udemy Eğitimi](https://www.udemy.com/course/google-flutter-ve-dart-programlama-dili-temel-egitimi/learn/lecture/12128622#reviews) adresinden
erişilen Udemy eğitimindeki derslerden örnekler. Her Uygulama Gridview ile erişilen farklı branch olacak şekilde düzenledim.\

iconButton ve BottomNavigationBar Widget 'ları denendi.
<BR>
![ScreenShot](/screen_shots/img-01.png)
![ScreenShot](/screen_shots/img-02.png)
![ScreenShot](/screen_shots/img-03.png)
<BR>

StatefulWidget örneği farklı bir branch olarak eklendi.  
Sayı 0 dan büyük olunca farklı renk, küçük olunca farklı renk görünüyor.
<BR>
![ScreenShot](/screen_shots/img-04.png)
![ScreenShot](/screen_shots/img-05.png)

<BR>
Navigasyon eklendi

<BR>
GridView ile birkaç kutu için tek, çift tıklama ve uzun basma uygulandı.

<BR>
GridView arka plana internetten alınan resim ekleme,
Resim altına transparan bant ile yazı ekleme
<BR>

![ScreenShot](/screen_shots/img-06.png)

<BR>
GridView arka plana assets klasöründen resim ekleme,
Resim altına transparan bant ile koyu yazı ekleme
<BR>

![ScreenShot](/screen_shots/img-07.png)

Bir listview içinde internetten, lokalden ve bekletilirken değişen image gösterimi
<BR>
![ScreenShot](/screen_shots/img-08.png)
![ScreenShot](/screen_shots/img-09.png)
![ScreenShot](/screen_shots/img-10.png)
<BR>
Toast mesajı
Burada üç farklı noktada toast mesajı görülüyor.
![ScreenShot](/screen_shots/img-11-toast.png)
![ScreenShot](/screen_shots/img-12-toast2.png)
![ScreenShot](/screen_shots/img-13-toast3.png)

<BR>

TextField ve alertMessage örneği
<BR>
![ScreenShot](/screen_shots/img-14-textfield1.png)
![ScreenShot](/screen_shots/img-15-textfield2.png)

<BR>

Boş bırakırsak aşağıdaki mesaj çıkacak
<BR>
![ScreenShot](/screen_shots/img-16-textfield3.png)
<BR>
Bir isim yazıp devam edersek, aşağıdaki selamlama kutusu çıkacak
<BR>
![ScreenShot](/screen_shots/img-17-alertdialog.png)
<BR>
Shared Preference Uygulaması
Burada kayıt ekleme, gösterme ve silme yapılıyor.
Yapılan işlem bellekte tutulan değerler üzerinde yapılıyor.
<BR>
![ScreenShot](/screen_shots/img-18-sharedpref-1.png)
<BR>
![ScreenShot](/screen_shots/img-19-sharedpref-2.png)
<BR>
Eğer boş kayıt girilir ve kaydet düğmesine basılırsa aşağıdaki mesaj çıkıyor.
<BR>
![ScreenShot](/screen_shots/img-20-sharedpref-3.png)
<BR>
Kayıt girilince aşağıdaki mesaj çıkacaktır.
<BR>
![ScreenShot](/screen_shots/img-21-sharedpref-4.png)
<BR>
Getir düğmesine basılınca aşağıdaki gibi görünüyor.
<BR>
![ScreenShot](/screen_shots/img-22-sharedpref-5.png)
<BR>
Sil Düğmesine basılınca aşağıdaki gibi görünüyor.
<BR>
![ScreenShot](/screen_shots/img-23-sharedpref-6.png)
<BR>
Ancak bu aşamadan sonra getir düğmesine basılırsa kayıt boş gelmesi gerkirken dolu geliyor.
*** Bir yerde hata var.
<BR>
Yerel dosya İşlemleri
Burada telefonda bir dosya oluşturulup, okuma-yazma işlemi yapılıyor.
<BR>
![ScreenShot](/screen_shots/img-24-dosyaislemleri-1.png)
![ScreenShot](/screen_shots/img-25-dosyaislemleri-2.png)
<BR>
Kaydet düğmesine basılınca aşağıdaki gibi görünecektir.
<BR>
![ScreenShot](/screen_shots/img-26-dosyaislemleri-3.png)\
Bu bölümden çıkılıp, tekrar girilince kaydettiğimiz verileri oku düğmesi ile tekrar görebiliyoruz.\
Basit JSON işlemleri\
Burada internetten test için sahte JSON alacağız\
![ScreenShot](/screen_shots/img-27-JSON-1.png)\
Burada kısa bir yüklenme süreci sonrası bir JSON görüntülenmesi yapılıyor.\
![ScreenShot](/screen_shots/img-28-JSON-2.png)\
Lokal JSON işlemleri\
![ScreenShot](/screen_shots/img-29-localJSON-1.png)
![ScreenShot](/screen_shots/img-30-localJSON-2.png)\
Kod çalışıyor ancak garip bir hata var. *** \
Basit HTTP işlemleri. \  
GET Düğmesine basılınca verilen adresin body mesajı alınıyor. (Örneğin google.com)\
POST düğmesine basılınca karşı tarafa veri gönderiliyor.\
![ScreenShot](/screen_shots/img-31-basithttp-1.png)
![ScreenShot](/screen_shots/img-32-basithttp-2.png)\
![ScreenShot](/screen_shots/img-33-basithttp-3.png)
![ScreenShot](/screen_shots/img-34-basithttp-4.png)\
Flash Control Uygulaması\
Burada donanım izni ve donanım üzerinde denenecek bir uygulama var.\
![ScreenShot](/screen_shots/img-35-flashoff.png)
![ScreenShot](/screen_shots/img-36-flashon.png)\
Kendi widget 'ımızı yaratıp kodu kısalttık\
Bütün Uygulama fontlarını değiştirince aşağıdaki gibi oldu.\
![ScreenShot](/screen_shots/img-37-font-1.png)\
Aşağıdaki örnekte ise AlertText dosyasındaki "selamla" butonunun fontu değişiyor\
![ScreenShot](/screen_shots/img-38-font-2.png)\
SQLite Uygulaması Eklendi. Ancak hatalar var.\
BottomNavigationBar menülerini düzenleyip,statefulwidget haline çevirip, her butona basılışında farklı sayfa gelmesini sağladık.\
![ScreenShot](/screen_shots/img-39-bottomnavigationbar-1.png)
![ScreenShot](/screen_shots/img-40-bottomnavigationbar-2.png)
![ScreenShot](/screen_shots/img-41-bottomnavigationbar-3.png)\
Bu örnekte ise Drawer Menu oluşturuyoruz.\
Sol üstte Flutter logosu, menü ve alt menü seçenekleri görülüyor.\
![ScreenShot](/screen_shots/img-42-drawer-1.png)
![ScreenShot](/screen_shots/img-43-drawer-2.png)\
Sağ üst köşede pop up menü oluşturalım.\
![ScreenShot](/screen_shots/img-44-popup-1.png)
![ScreenShot](/screen_shots/img-45-popup-2.png)\
fontawesome kütüphanesinden ikon ekleyelim.\
![ScreenShot](/screen_shots/img-46-fontawesome-1.png)\
BottomNavigationBar için seçenek sayısını atttırıp, renk ve hareket verdik.\
![ScreenShot](/screen_shots/img-47-bottomnavigationbar-4.png)\
BottomMapBar ise BottomNavigationBar'a alternatif birkullanımdır.\
![ScreenShot](/screen_shots/img-48-bottommapbar-1.png)\
Snackbar ile alt bölümde mesaj verebiliyoruz.\
![ScreenShot](/screen_shots/img-49-snackbar.png)\
BottomSheet Uygulaması ile alttan açılan menü gösterebiliriz.\
![ScreenShot](/screen_shots/img-50-bottomsheet-1.png)
![ScreenShot](/screen_shots/img-51-bottomsheet-2.png)\
Navigasyon sırasında değer taşıyalım. Örneğin yeni sayfaya gelince sayfa başlığı, "Ana sayfadan Geldim Olsun"\
![ScreenShot](/screen_shots/img-52-valuecarry-1.png)
![ScreenShot](/screen_shots/img-53-valuecarry-2.png)\






