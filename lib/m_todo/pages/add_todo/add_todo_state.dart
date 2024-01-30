
class AddTodoState{
  String nom;
  bool isLoading;
  bool? isFormValid;

  AddTodoState({this.nom="",
  this.isFormValid, this.isLoading=false
  });
}