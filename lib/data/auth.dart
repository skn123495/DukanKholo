import 'dart:collection';
import 'package:flutter/foundation.dart';



class AuthModel extends ChangeNotifier {  
  Map _auth = {
    "username": "",
    "token": "",
    "isVerified": false
  };
  UnmodifiableMapView get auth => UnmodifiableMapView(_auth);
  void add(Map authValue){
    _auth = {..._auth, ...authValue};
  }
}