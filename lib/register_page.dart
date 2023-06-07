// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'controller.dart';

// class MyHomePage extends StatelessWidget {
//   final UserController userController = Get.put(UserController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Auto Login Home Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Obx(() {
//               return !userController.isLoggedIn.value
//                   ? Column(
//                     children: [
//                       TextField(
//                           textAlign: TextAlign.center,
//                           controller: userController.nameController,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Please enter your name',
//                           ),
//                         ),
//                         TextField(
//                           textAlign: TextAlign.center,
//                           controller: userController.passwordController,
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: 'Please enter your name',
//                           ),
//                         ),
//                     ],
//                   )
//                   : Column(
//                     children: [
//                       Text('You are logged in as ${userController.name.value}'),
//                       Text('You are logged in as ${userController.password.value}'),
//                     ],
//                   );
//             }),
//             SizedBox(height: 10.0),
//             ElevatedButton(
//               onPressed: () {
//                 userController.isLoggedIn.value
//                     ? userController.logout()
//                     : userController.loginUser();
//               },
//               child: Obx(() {
//                 return userController.isLoggedIn.value
//                     ? Text('Logout')
//                     : Text('Login');
//               }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pratice/login_page.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
          Column(
            children: [
              ElevatedButton(onPressed: (){
                Get.to(LoginPage());
              }, child:Text("sign up")),
              ElevatedButton(
                  onPressed: () async {
                    try {
                      // ignore: unused_local_variable
                      UserCredential userCredential = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text);
                      Get.offAll(() => const LoginPage());
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
                  child: Text("register")),
            ],
          )
        ],
      )),
    );
  }
}