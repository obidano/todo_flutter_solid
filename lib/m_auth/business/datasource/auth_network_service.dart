
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_network_service_final.dart';
import 'auth_network_service_test.dart';

part "auth_network_service.g.dart";

abstract class AuthNetworkService{
  bool authentifier(String username, String password);
}

@Riverpod(keepAlive: true)
AuthNetworkService authService(Ref ref){
  return AuthNetworkServiceTest();
}
