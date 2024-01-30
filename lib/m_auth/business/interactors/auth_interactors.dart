
import 'package:todo_list/m_auth/business/datasource/auth_network_service.dart';
import 'package:todo_list/m_auth/business/interactors/authentifier_use_case.dart';

class AuthInteractors{
  AuthentifierUseCase authentifierUseCase;

  AuthInteractors._(this.authentifierUseCase);

  factory AuthInteractors.build(AuthNetworkService service, ){
    return AuthInteractors._(AuthentifierUseCase(service));
  }
}
