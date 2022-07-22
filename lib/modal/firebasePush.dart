import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class FirebasePush extends ChangeNotifier {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  FirebasePush() {
    messaging.getToken().then((token) {
      print(token);
      notifyListeners();
    });

    messaging.getToken().then((token) {
      print(token);
    });

    messaging.requestPermission(
      alert: true,
      carPlay: true,
    );
  }
}
