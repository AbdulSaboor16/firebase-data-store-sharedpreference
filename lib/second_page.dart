// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:pratice/third_page.dart';

// class SecondPage extends StatelessWidget {
//   /// Page Title
//   final String title;

//   /// second page constructor
//   const SecondPage({required Key key, required this.title}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final args = ModalRoute.of(context)?.settings.arguments;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text( "Page Transition Plugin"),
//       ),
      
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pratice/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Second Page'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    type: PageTransitionType.topToBottom,
                    child: const ThirdPage(),
                  ),
                );
              },
              child: Text('Go Third Page'),
            )
          ],
        ),
      ),
    );
  }
}