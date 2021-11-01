import 'package:firebase_core/firebase_core.dart';

initNetworkModule() async{
  await Firebase.initializeApp();
}