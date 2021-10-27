
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {

  User? user;

  Future<void> init() async {
    await 2.seconds.delay();
    FirebaseAuth.instance.authStateChanges().listen((User? user) { 
      this.user = user;
      if(user == null) {
        Get.offAllNamed('/login');
      }else {
        Get.offAllNamed('/home');
      }
    });
  }
}