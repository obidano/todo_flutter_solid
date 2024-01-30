
class LoginState{
  String nom;
  String password;
  bool isLoading;
  bool? isFormValid;

  LoginState({this.nom="", this.password="",
  this.isFormValid, this.isLoading=false
  });
}