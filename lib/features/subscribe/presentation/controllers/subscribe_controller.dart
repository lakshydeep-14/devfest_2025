import 'package:get/get.dart';
import 'package:dev_fest/features/subscribe/data/source/subscribe_remote_source.dart';

class SubscribeController extends GetxController{
  SubscribeController({required this.remoteSource}); 
  final SubscribeRemoteSource remoteSource;


 @override
  void onInit() {
    super.onInit();
   
  }
}
