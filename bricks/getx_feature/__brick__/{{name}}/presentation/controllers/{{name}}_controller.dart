import 'package:get/get.dart';
import 'package:dev_fest/features/{{name}}/data/source/{{name.snakeCase()}}_remote_source.dart';

class {{name.pascalCase()}}Controller extends GetxController{
  {{name.pascalCase()}}Controller({required this.remoteSource}); 
  final {{name.pascalCase()}}RemoteSource remoteSource;

 @override
  void onInit() {
    super.onInit();
   
  }
}
