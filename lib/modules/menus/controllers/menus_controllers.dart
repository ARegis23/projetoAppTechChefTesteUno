import 'package:flutter/material.dart';

class MenusControllers extends ChangeNotifier{

  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();

  bool _aceito = false;

  bool get aceito => _aceito;

  void atualizarAceito(value){
    _aceito = value;
    notifyListeners();
  }

  void limpar(){
    txtNome.clear();
    txtEmail.clear();
    _aceito = false;
    notifyListeners();
  }

}