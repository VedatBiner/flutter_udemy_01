class Ogrenci{
  int no = 0;
  String _isim = "";
  String _soyisim = "";
  String _sinif = "";

  Ogrenci(this.no, this._isim, this._soyisim, this._sinif);

  Ogrenci.map(dynamic nesne){
    _isim = nesne["isim"];
    _soyisim = nesne["soyisim"];
    _sinif = nesne["sinif"];
  }

  String get isim => _isim; // isim istenince bu şekilde dönecek
  String get soyisim => _soyisim;
  String get sinif => _sinif;

  Map<String, dynamic> haritaYap(){
    // Ogrenci nesnesini dışardan harita olarak istiyorsak bunu yapıyoruz
    var map = <String, dynamic>{};
    map["isim"] = _isim;
    map["soyisim"] = _soyisim;
    map["sinif"] = _sinif;
    return map;
}

  void numaraVer(int no){
    // Öğrenciye numara vermek için bu fonksiyon çağırılacak
    this.no = no;
  }

}

