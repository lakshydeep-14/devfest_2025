import 'package:get/get.dart';
import 'package:dev_fest/features/devfest/data/source/devfest_remote_source.dart';

class DevfestController extends GetxController{
  DevfestController({required this.remoteSource}); 
  final DevfestRemoteSource remoteSource;

 @override
  void onInit() {
    super.onInit();
   
  }
}
