
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_list/m_auth/business/interactors/auth_interactors.dart';
import 'package:todo_list/m_auth/pages/login/login_state.dart';

import 'login_events.dart';

part "login_ctrl.g.dart";

@riverpod
class LoginCtrl extends _$LoginCtrl{
 late AuthInteractors interactor;

  @override
  LoginState build(){
    interactor=ref.watch(authInteractorProvider);
    return LoginState();
  }

 // LoginCtrl(this.interactor);

  void eventListener(LoginEvents type, [dynamic data] ){
    switch(type){
      case LoginEvents.saisieNom:
        print("data saisieNom $data");
        _handleSaisieNom(data as String);
       break;
      case LoginEvents.saisieMotDePasse:
        _handleSaisieMotDePasse(data as String);
        break;
      case LoginEvents.validation:
        _handleValidation();
        break;
      case LoginEvents.soumission:
        _handleSoumission();
        break;
    }
  }
  void _handleSaisieNom(String data){
    state=state.copyWith(nom: data);
  }
  void _handleSaisieMotDePasse(String data){
    state=state.copyWith(password: data);
  }
  void _handleValidation(){
    state=state.copyWith(isFormValid: false);
   // _handleSoumission();
  }
  void _handleSoumission() async{
    state=state.copyWith(isLoading: true);
    bool res=interactor.authentifierUseCase.run("odc", "password");
    await Future.delayed(Duration(seconds: 5));
    state=state.copyWith(isLoading: false);

  }


}