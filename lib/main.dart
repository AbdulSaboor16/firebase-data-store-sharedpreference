import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pratice/controller.dart';
import 'package:pratice/login_page.dart';
import 'package:pratice/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SharedPreferences prefs =await SharedPreferences.getInstance();
  // await GetStorage.init();
  // WidgetsFlutterBinding.ensureInitialized();
  // await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Theme Animation Example',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          brightness: Brightness.light,
           primaryColor: Colors.green,
      
          
        ),
        home: RegisterPage() );
  }
}
