import 'package:cash_collector_02/firebase_instance.dart';
import 'package:cash_collector_02/firebase_options.dart';
import 'package:cash_collector_02/screens/code%20_entry_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// late FirebaseApp secondaryApp;
// late FirebaseFirestore secondaryFirestore;
// Future<void> initSecondaryFirebase() async {
//   secondaryApp = await Firebase.initializeApp(
//     name: 'SecondaryApp',
//     options: const FirebaseOptions(
//       apiKey: 'AIzaSyDMwEQ8opYqSuA19xdjYj5AKelG2xyJ5JU',
//       appId: '1:174048970421:android:6b1512839a16ec6efda0fc',
//       messagingSenderId: '174048970421',
//       projectId: 'cash-collector-app',
//       storageBucket: 'cash-collector-app.firebasestorage.app',
//     ),
//   );

//   secondaryFirestore = FirebaseFirestore.instanceFor(app: secondaryApp);
// }


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initSecondaryFirebase();
  print('✅ Firebase connected!');
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash collector 02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AccessCodeEntryScreen(),
    );
  }
}
