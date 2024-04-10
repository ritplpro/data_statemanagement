import 'package:flutter/cupertino.dart';

class  CounterProvider extends ChangeNotifier{
  var _count=0;

 void increment(){
    _count++;
    notifyListeners();

  }
  void decrement(){
   if(_count>0) {
     _count--;
     notifyListeners();
   }
  }

  getcount(){
   return _count;
  }


}

