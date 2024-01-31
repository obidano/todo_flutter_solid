
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_list/m_auth/business/datasource/auth_network_service.dart';
import 'package:todo_list/m_auth/business/interactors/authentifier_use_case.dart';

part "auth_interactors.g.dart";

class AuthInteractors{
  AuthentifierUseCase authentifierUseCase;

  AuthInteractors._(this.authentifierUseCase);

  factory AuthInteractors.build(AuthNetworkService service, ){
    return AuthInteractors._(AuthentifierUseCase(service));
  }
}

@Riverpod(keepAlive: true)
AuthInteractors authInteractor(Ref ref){
  var service= ref.watch(authServiceProvider);
  return AuthInteractors.build(service);
}
