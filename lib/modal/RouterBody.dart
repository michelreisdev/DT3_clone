import 'package:flutter/cupertino.dart';

class RouterBody extends  ChangeNotifier {
  var _intRouter = 0;

  get intRouter => _intRouter;

  router(intRouter){
    _intRouter = intRouter;
    notifyListeners();
  }
}