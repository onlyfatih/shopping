import 'package:flutter/cupertino.dart';

import '../sepetim.dart';
import '../urunler.dart';

class Content extends ChangeNotifier {

  int _aktifIcerikNo = 1;
  List<Widget> _icerikler = [
    Urunler(),
    Sepetim(),
  ];


void activeContent(int picked){
_aktifIcerikNo=picked;
notifyListeners();
}

List<Widget> get icerikler{
  return _icerikler;
}
int get aktifIcerikNo{
  return _aktifIcerikNo;
}


}
