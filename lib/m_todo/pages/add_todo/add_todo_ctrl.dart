
import 'package:todo_list/m_auth/business/interactors/auth_interactors.dart';

import 'add_todo_events.dart';

class AddTodoCtrl{
  AuthInteractors interactor;

  AddTodoCtrl(this.interactor);

  void eventListener(AddTodoEvents type, [dynamic data] ){}
  void _handleSaisieNom(){}
  void _handleSaisieMotDePasse(){}
  void _handleValidation(){}
  void _handleSoumission(){
    bool res=interactor.authentifierUseCase.run("odc", "password");
  }


}