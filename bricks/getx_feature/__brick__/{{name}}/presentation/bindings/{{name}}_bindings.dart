import 'package:get/get.dart';
import 'package:dev_fest/features/{{name}}/data/source/{{name.snakeCase()}}_remote_source.dart';
import 'package:dev_fest/features/{{name}}/presentation/controllers/{{name.snakeCase()}}_controller.dart';

class {{name.pascalCase()}}Bindings extends Bindings{
  @override
  void dependencies() {
    Get
      ..lazyPut(() => {{name.pascalCase()}}RemoteSource())
      ..put(
        {{name.pascalCase()}}Controller(
          remoteSource: Get.find<{{name.pascalCase()}}RemoteSource>(),
        ),
      );
  }

}
class {{name.pascalCase()}}Initializer {

  static void initialize(){
        Get
      ..lazyPut(() => {{name.pascalCase()}}RemoteSource())
      ..put(
        {{name.pascalCase()}}Controller(
          remoteSource: Get.find<{{name.pascalCase()}}RemoteSource>(),
        ),
      );
  }
  static void destroy(){
        Get
      ..delete<{{name.pascalCase()}}RemoteSource>()
      ..delete<{{name.pascalCase()}}Controller>();

  }
}