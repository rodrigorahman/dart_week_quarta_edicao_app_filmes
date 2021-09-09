
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class AuthService extends GetxService {

  User? user;

  void init() {
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