
import 'package:todo_list/m_auth/business/interactors/auth_interactors.dart';

import 'login_events.dart';

class LoginCtrl{
  AuthInteractors interactor;

  LoginCtrl(this.interactor);

  void eventListener(LoginEvents type, [dynamic data] ){
    switch(type){
      case LoginEvents.saisieNom:
       break;
      case LoginEvents.saisieMotDePasse:
        break;
      case LoginEvents.validation:
        break;
      case LoginEvents.soumission:
        break;
    }
  }
  void _handleSaisieNom(){}
  void _handleSaisieMotDePasse(){}
  void _handleValidation(){}
  void _handleSoumission(){
    bool res=interactor.authentifierUseCase.run("odc", "password");
  }


}