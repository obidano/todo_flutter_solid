
import 'package:todo_list/m_todo/business/datasource/todo_network_service.dart';
import 'package:todo_list/m_todo/business/interactor/creer_todo_use_case.dart';
import 'package:todo_list/m_todo/business/interactor/recuperer_network_todo_use_case.dart';

class TodoInteractor{
  CreerTodoUseCase creerTodoUseCase;
  RecupererNetworkTodoUseCase recupererNetworkTodoUseCase;

  TodoInteractor._(this.creerTodoUseCase, this.recupererNetworkTodoUseCase);

  factory TodoInteractor.build(TodoNetworkService service){
    return TodoInteractor._(CreerTodoUseCase(service),
        RecupererNetworkTodoUseCase(service));
  }

}