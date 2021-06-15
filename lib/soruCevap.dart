import 'soru.dart';

class SoruCevap {
  int toplamPuan = 0;

  int _soruIndex = 0;
  // '_' bu alttire ifadesi private demek oluyor yani dışarıdan erişimi engellendi.x"

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "Türkiye Cumhuriyeti Devleti'nin başkenti Ankara'dır.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni:
            "Mercekler ışığın yayılma özelliğini kullanılarak yapılmıştır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni: "Türkiye’ de 7 tane coğrafi bölge bulunmaktadır.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni:
            "İçerisinde yüksek oranda demir minerali bulunduran sebze pırasadır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni:
            "Çanakkale Savaşı sırasında 215 kg’lık mermiyi tek başına kaldıran Türk askerimiz Seyit Onbaşı'dır.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni: "En büyük uydusu olan gezegen Dünya'dır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni:
            "Türkiye Cumhuriyeti Devleti'nin para birimi : Türk lirası (‎TRY‎ · ‎₺‎) 'dir.‎",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni:
            "Depremin büyüklüğünü ve süresini ölçen alete 'Simograf' adı verilir.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni: "Rumeli hisarını Kanuni Sultan Süleyman yaptırmıştır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni: "Türkçe 'Ural-Altay' dil grubuna girmektedir.",
        soruYaniti: true,
        puan: 10),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  int getSoruPuani() {
    return toplamPuan += 10;
  }

  void sonrakiSoru() {
    print(_soruIndex);
    if (_soruIndex <= _soruBankasi.length) {
      _soruIndex++;
    }
    print(_soruIndex);
    print(_soruBankasi.length);
  }

  bool soruBittiMi() {
    if (_soruIndex == _soruBankasi.length) {
      print("SORU INDEX" + _soruIndex.toString());
      print("SORU BANKASI" + _soruBankasi.length.toString());
      return true;
    } else {
      return false;
    }
  }

  void soruSifirla() {
    _soruIndex = 0;
  }

  void puanSifirla() {
    toplamPuan = 0;
  }
}




