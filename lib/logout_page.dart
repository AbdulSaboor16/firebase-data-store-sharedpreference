import 'package:flutter/material.dart';


class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.pop(
                  //   context,
                  //   MaterialPageRoute(builder: (context) =>  RegistrationPage()),
                  // );

                },
                child: Text("Logout Page"))
          ],
        ),
      ),
    );
  }
}
