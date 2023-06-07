import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pratice/logout_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Enter your name",
                  labelText: "Enter your name")),
          TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Enter your password",
                  labelText: "Enter your password")),
          ElevatedButton(
              onPressed: () async {
                try {
                  // ignore: unused_local_variable
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);
                  Get.to(() => const LogoutPage());
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (_) => AlertDialog(
                              title:
                                  const Text("No user found for that email."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Ok"))
                              ],
                            ));
                  } else if (e.code == 'wrong-password') {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text(
                            "Wrong password provided for that user."),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Ok"))
                        ],
                      ),
                    );
                  }
                }
              },
              child: Text("login"))
        ],
      )),
    );
  }
}
