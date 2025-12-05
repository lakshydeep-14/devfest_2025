import 'package:get/get.dart';
import 'package:dev_fest/features/subscribe/data/source/subscribe_remote_source.dart';
import 'package:dev_fest/features/subscribe/presentation/controllers/subscribe_controller.dart';

class SubscribeBindings extends Bindings{
  @override
  void dependencies() {
    Get
      ..lazyPut(() => SubscribeRemoteSource())
      ..put(
        SubscribeController(
          remoteSource: Get.find<SubscribeRemoteSource>(),
        ),
      );
  }

}
class SubscribeInitializer {

  static void initialize(){
        Get
      ..lazyPut(() => SubscribeRemoteSource())
      ..put(
        SubscribeController(
          remoteSource: Get.find<SubscribeRemoteSource>(),
        ),
      );
  }
  static void destroy(){
        Get
      ..delete<SubscribeRemoteSource>()
      ..delete<SubscribeController>();

  }
}