import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB5Z7Ow9dagFkXjiPNMuDYLg8bWfTJdKiI",
            authDomain: "medecora-e921a.firebaseapp.com",
            projectId: "medecora-e921a",
            storageBucket: "medecora-e921a.appspot.com",
            messagingSenderId: "1062169648695",
            appId: "1:1062169648695:web:4e1db02901226a1c37e9b2"));
  } else {
    await Firebase.initializeApp();
  }
}
