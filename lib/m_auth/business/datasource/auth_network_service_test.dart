
import 'package:todo_list/m_auth/business/datasource/auth_network_service.dart';

class AuthNetworkServiceTest implements AuthNetworkService{

  @override
  bool authentifier(String username, String password) {
    // TODO: implement authentifier
    return true;
  }
}

void main(){
  var service=AuthNetworkServiceTest();
  bool res=service.authentifier("odc", "password");
  if (res) print("Connexion reussie");
}