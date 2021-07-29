import 'soru.dart';

class SoruCevap {
  int toplamPuan = 0;

  int _soruIndex = 0;
  // '_' bu alttire ifadesi private demek oluyor yani dışarıdan erişimi engellendi.x"

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "1. SORU: Türkiye Cumhuriyeti Devleti'nin başkenti Ankara'dır.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni:
            "2. SORU: Mercekler ışığın yayılma özelliğini kullanılarak yapılmıştır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni: "3. SORU: Türkiye’ de 7 tane coğrafi bölge bulunmaktadır.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni:
            "4. SORU: İçerisinde yüksek oranda demir minerali bulunduran sebze pırasadır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni:
            "5. SORU: Çanakkale Savaşı sırasında 215 kg’lık mermiyi tek başına kaldıran Türk askerimiz Seyit Onbaşı'dır.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni: "6. SORU: En büyük uydusu olan gezegen Dünya'dır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni:
            "7. SORU: Türkiye Cumhuriyeti Devleti'nin para birimi : Türk lirası (‎TRY‎ · ‎₺‎) 'dir.‎",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni:
            "8. SORU: Depremin büyüklüğünü ve süresini ölçen alete 'Simograf' adı verilir.",
        soruYaniti: true,
        puan: 10),
    Soru(
        soruMetni: "9. SORU: Rumeli hisarını Kanuni Sultan Süleyman yaptırmıştır.",
        soruYaniti: false,
        puan: 10),
    Soru(
        soruMetni: "10. SORU: Türkçe 'Ural-Altay' dil grubuna girmektedir.",
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




