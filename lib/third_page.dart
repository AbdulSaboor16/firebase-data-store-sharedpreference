// // third page
// import 'package:flutter/material.dart';

// class ThirdPage extends StatelessWidget {
//   /// Page Title
//   final String title;

//   /// second page constructor
//   const ThirdPage({Key? key, required this.title}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Page Transition Plugin"),
//       ),
//       body: Center(
//         child: Text('ThirdPage Page'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Page Transition Plugin"),
      ),
      body: Center(
        child: Text('ThirdPage Page'),
      ),
    );
  }
}