
import 'package:todo_list/m_auth/business/interactors/auth_interactors.dart';

import 'login_events.dart';

class LoginCtrl{
  AuthInteractors interactor;

  LoginCtrl(this.interactor)

  void eventListener(LoginEvents type, [dynamic data] ){}
  void _handleSaisieNom(){}
  void _handleSaisieMotDePasse(){}
  void _handleValidation(){}
  void _handleSoumission(){
    bool res=interactor.authentifierUseCase.run("odc", "password");
  }


}