

import 'package:todo_list/m_auth/business/datasource/auth_network_service.dart';

class AuthentifierUseCase{
  AuthNetworkService service;

  AuthentifierUseCase(this.service);

  bool run(String username, String password){
   return service.authentifier(username, password);
  }

}