import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();
  final txtSenha = TextEditingController();
  final txtConfirmarSenha = TextEditingController();
  final txtTelefone = TextEditingController();
  final txtDataNascimento = TextEditingController();

  bool _aceitouTermos = false;

  bool get aceitouTermos => _aceitouTermos;

  void atualizarAceitouTermos(bool valor) {
    _aceitouTermos = valor;
    notifyListeners();
  }

  void limpar() {
    txtNome.clear();
    txtEmail.clear();
    txtSenha.clear();
    txtConfirmarSenha.clear();
    txtTelefone.clear();
    txtDataNascimento.clear();
    _aceitouTermos = false;
    notifyListeners();
  }
}
