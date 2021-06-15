import 'package:flutter/material.dart';
import 'package:general_culture_app/soruCevap.dart';
import 'const_icon.dart';

void main() => runApp(GenelKultur());

class GenelKultur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white38,
              title: Text(
                'GENEL KÜLTÜR SORULARI',
                style: TextStyle(fontSize: 25),
              ),
            ),
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> iconlar = [];

  SoruCevap soruCevap_1 = SoruCevap();

  var puan;
  void buttonFonksiyonu(bool secilenButton) {
    if (soruCevap_1.soruBittiMi()) {
      //alertDialog gösterecek
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("SORULARI TAMAMLADINIZ."),
              content: new Text(
                "Puanınız : " + puan,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
              actions: [
                new FlatButton(
                  child: new Text("İlk Soruya Dön."),
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      soruCevap_1.soruSifirla(); //index sıfırla
                      soruCevap_1.puanSifirla();
                      iconlar = []; //seçimleri sıfırla
                    });
                  },
                ),
              ],
            );
          });
    } else {
      setState(() {
        if (soruCevap_1.getSoruYaniti() == secilenButton) {
          iconlar.add(dogruIconu);
          puan = soruCevap_1.getSoruPuani().toString();
        } else {
          iconlar.add(yanlisIconu);
        }
        soruCevap_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                soruCevap_1.soruBittiMi() != true
                    ? soruCevap_1.getSoruMetni()
                    : "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 3,
          spacing: 3,
          children: iconlar,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Icon(Icons.thumb_down, size: 30.0),
                      onPressed: () {
                        buttonFonksiyonu(false);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Icon(Icons.thumb_up, size: 30.0),
                      onPressed: () {
                        buttonFonksiyonu(true);
                      },
                    ),
                  ),
                ),
              ])),
        )
      ],
    );
  }
}
