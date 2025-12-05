import 'package:get/get.dart';
import 'package:dev_fest/features/devfest/data/source/devfest_remote_source.dart';
import 'package:dev_fest/features/devfest/presentation/controllers/devfest_controller.dart';

class DevfestBindings extends Bindings{
  @override
  void dependencies() {
    Get
      ..lazyPut(() => DevfestRemoteSource())
      ..put(
        DevfestController(
          remoteSource: Get.find<DevfestRemoteSource>(),
        ),
      );
  }

}
class DevfestInitializer {

  static void initialize(){
        Get
      ..lazyPut(() => DevfestRemoteSource())
      ..put(
        DevfestController(
          remoteSource: Get.find<DevfestRemoteSource>(),
        ),
      );
  }
  static void destroy(){
        Get
      ..delete<DevfestRemoteSource>()
      ..delete<DevfestController>();

  }
}