import 'package:flutter/material.dart';

class Soru {
  String soruMetni;
  bool soruYaniti;
  int puan;

  Soru(
      {@required this.soruMetni,
      @required this.soruYaniti,
      @required this.puan});
}
