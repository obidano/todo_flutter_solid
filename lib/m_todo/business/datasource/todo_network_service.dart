
import 'package:todo_list/m_todo/business/entites/todo.dart';

abstract class TodoNetworkService{
  List<Todo> recuperer_todo_list();
  bool creer_todo(Todo data);
  bool modifier_status(int id);
}