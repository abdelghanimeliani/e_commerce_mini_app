import 'package:flutter/cupertino.dart';

class AdminMod extends ChangeNotifier{
  bool isAdmin ;
  changeIsAdmin(bool value){
    this.isAdmin = value ;
    notifyListeners();
  }
}