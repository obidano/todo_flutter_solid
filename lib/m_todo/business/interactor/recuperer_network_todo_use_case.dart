
import 'package:todo_list/m_todo/business/datasource/todo_network_service.dart';

import '../entites/todo.dart';

class RecupererNetworkTodoUseCase{
  TodoNetworkService service;
  RecupererNetworkTodoUseCase(this.service);

  List<Todo> run(){
    return service.recuperer_todo_list();
  }

}