import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:todo_list/m_auth/pages/login/login_ctrl.dart";

import "login_events.dart";

class LoginPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state= ref.watch(loginCtrlProvider);
    ref.listen(loginCtrlProvider, (p, n){
      print("valeur precedente ${p?.isLoading}");
      print("Valeur actuelle ${n.isLoading}");
    });
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
                children: [
          SizedBox(
            height: 80,
          ),
          Text("Authentification", style:TextStyle(fontSize: 25)),
          if(state.isFormValid==false) Text("Formulaire invalide", style:TextStyle(fontSize: 15, color: Colors.red)),
         if(state.isLoading) CircularProgressIndicator(),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (value) {
              var ctrl= ref.read(loginCtrlProvider.notifier);
              ctrl.eventListener(LoginEvents.saisieNom, value);
            },
            decoration: InputDecoration(
              label: Text("Username"),
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (value) {
              var ctrl= ref.read(loginCtrlProvider.notifier);
              ctrl.eventListener(LoginEvents.saisieMotDePasse, value);
            },
            decoration: InputDecoration(
              label: Text("Password"),
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(width: double.infinity, height: 50,child: ElevatedButton(onPressed: () {
            var ctrl= ref.read(loginCtrlProvider.notifier);
            ctrl.eventListener(LoginEvents.validation);
          }, child: Text("Envoyer")))
                ],
              ),
        ));
  }
}
