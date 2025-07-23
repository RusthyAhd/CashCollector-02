// lib/firebase_instance.dart
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

late FirebaseApp secondaryApp;
late FirebaseFirestore secondaryFirestore;

Future<void> initSecondaryFirebase() async {
  secondaryApp = await Firebase.initializeApp(
    name: 'SecondaryApp',
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDMwEQ8opYqSuA19xdjYj5AKelG2xyJ5JU',
      appId: '1:174048970421:android:6b1512839a16ec6efda0fc',
      messagingSenderId: '174048970421',
      projectId: 'cash-collector-app',
      storageBucket: 'cash-collector-app.firebasestorage.app',
    ),
  );

  secondaryFirestore = FirebaseFirestore.instanceFor(app: secondaryApp);
}
