import 'package:bilgiyarismasi/sorular.dart';

class Testler {

  int _gecerliIndex = 0;


  List <Sorular> _seviye1test = [
    Sorular(soru: "Kıbrıs 1974 yılında alınmıştır",yanit: true),
    Sorular(soru: "İstanbul 1453 yılında feth edilmiştir",yanit: true),
    Sorular(soru: "Türkiye'de toplam 12 Coğrafi bölge bulunmaktadır",yanit: false),
    Sorular(soru: "Pastırma Kayseri'de meşhur olmuş bir yiyecektir",yanit: false),
    Sorular(soru: "Gesi bağlarında dolanıyorsanız Kayseri'desiniz demektir",yanit: true),
    Sorular(soru: "Kalem kılıçtan keskindir",yanit: true),
  ];

  String getSoru () {
    return _seviye1test[_gecerliIndex].soru;
  }
  bool getYanit (){
    return _seviye1test[_gecerliIndex].yanit;
  }
  void sonrakiSoru(){
    if(_gecerliIndex<_seviye1test.length-1){
      _gecerliIndex++;
    }
  }

  bool testBittiMi() {
    if(_gecerliIndex >= _seviye1test.length-1){
      return true;
    }
    else{
      return false;
    }
  }

  void testiSifirla() {
    _gecerliIndex = 0;
  }

}