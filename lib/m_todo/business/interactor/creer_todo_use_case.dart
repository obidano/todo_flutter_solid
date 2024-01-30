
import 'package:todo_list/m_todo/business/datasource/todo_network_service.dart';

import '../entites/todo.dart';

class CreerTodoUseCase{
  TodoNetworkService service;
  CreerTodoUseCase(this.service);

  bool run(Todo todo){
    return service.creer_todo(todo);
  }

}