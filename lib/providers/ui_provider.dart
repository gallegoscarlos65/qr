import 'package:flutter/material.dart';
//Se necesita extender de ChangeNotifier para que pueda escuchar cuando halla un cmabio

class UiProvider extends ChangeNotifier{

  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int i){
    this._selectedMenuOpt = i;
    // Cuando se cambie el valor se ejecuta notifyListeners, el cual notificara a todos los widgets que estan escuchando
    notifyListeners();
  }
  

}