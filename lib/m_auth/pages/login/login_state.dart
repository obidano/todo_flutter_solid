class LoginState {
  String nom;
  String password;
  bool isLoading;
  bool? isFormValid;

  LoginState({
    this.nom = "",
    this.password = "",
    this.isFormValid,
    this.isLoading = false,
  });

  LoginState copyWith({
    String? nom,
    String? password,
    bool? isLoading,
    bool? isFormValid,
  }) {
    return LoginState(
      nom: nom ?? this.nom,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      isFormValid: isFormValid ?? this.isFormValid,
    );
  }
}