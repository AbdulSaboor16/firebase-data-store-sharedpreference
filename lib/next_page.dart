// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pratice/second_page.dart';

class NextPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            // ElevatedButton(
            //   child: Text('Fade Second Page - Default'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.fade,
            //         child: SecondPage(),
            //         isIos: true,
            //         duration: Duration(milliseconds: 400),
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Left To Right Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.leftToRight,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Right To Left Transition Second Page Ios SwipeBack'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.rightToLeft,
            //         isIos: true,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Left To Right with Fade Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.leftToRightWithFade,
            //         alignment: Alignment.topCenter,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Right To Left Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.leftToRight,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Right To Left with Fade Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.rightToLeftWithFade,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Top to Bottom Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         curve: Curves.linear,
            //         type: PageTransitionType.topToBottom,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Bottom to Top Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         curve: Curves.linear,
            //         type: PageTransitionType.bottomToTop,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Scale Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         type: PageTransitionType.scale,
            //         alignment: Alignment.topCenter,
            //         duration: Duration(milliseconds: 400),
            //         isIos: true,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Rotate Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         curve: Curves.bounceOut,
            //         type: PageTransitionType.rotate,
            //         alignment: Alignment.topCenter,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Size Transition Second Page'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //         alignment: Alignment.bottomCenter,
            //         curve: Curves.bounceOut,
            //         type: PageTransitionType.size,
            //         child: SecondPage()
            //       ),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Right to Left Joined'),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         PageTransition(
            //             alignment: Alignment.bottomCenter,
            //             curve: Curves.easeInOut,
            //             duration: Duration(milliseconds: 600),
            //             reverseDuration: Duration(milliseconds: 600),
            //             type: PageTransitionType.rightToLeftJoined,
            //             child: SecondPage(),
            //             childCurrent: this));
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Left to Right Joined'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //           alignment: Alignment.bottomCenter,
            //           curve: Curves.easeInOut,
            //           duration: Duration(milliseconds: 600),
            //           reverseDuration: Duration(milliseconds: 600),
            //           type: PageTransitionType.leftToRightJoined,
            //           child: SecondPage(),
            //           childCurrent: this),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Top to Bottom Joined'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //           alignment: Alignment.bottomCenter,
            //           curve: Curves.easeInOut,
            //           duration: Duration(milliseconds: 600),
            //           reverseDuration: Duration(milliseconds: 600),
            //           type: PageTransitionType.topToBottomJoined,
            //           child: SecondPage(),
            //           childCurrent: this),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Bottom to Top Joined'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //           alignment: Alignment.bottomCenter,
            //           curve: Curves.easeInOut,
            //           duration: Duration(milliseconds: 600),
            //           reverseDuration: Duration(milliseconds: 600),
            //           type: PageTransitionType.bottomToTopJoined,
            //           child: SecondPage(),
            //           childCurrent: this),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Right to Left Pop'),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         PageTransition(
            //             alignment: Alignment.bottomCenter,
            //             curve: Curves.easeInOut,
            //             duration: Duration(milliseconds: 600),
            //             reverseDuration: Duration(milliseconds: 600),
            //             type: PageTransitionType.rightToLeftPop,
            //             child: SecondPage(),
            //             childCurrent: this));
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Left to Right Pop'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //           alignment: Alignment.bottomCenter,
            //           curve: Curves.easeInOut,
            //           duration: Duration(milliseconds: 600),
            //           reverseDuration: Duration(milliseconds: 600),
            //           type: PageTransitionType.leftToRightPop,
            //           child: SecondPage(),
            //           childCurrent: this),
            //     );
            //   },
            // ),
            // ElevatedButton(
            //   child: Text('Top to Bottom Pop'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //           alignment: Alignment.bottomCenter,
            //           curve: Curves.easeInOut,
            //           duration: Duration(milliseconds: 600),
            //           reverseDuration: Duration(milliseconds: 600),
            //           type: PageTransitionType.topToBottomPop,
            //           child: SecondPage(),
            //           childCurrent: this),
            //     );
            //   },
            // ),
            ElevatedButton(
              child: Text('Bottom to Top Pop'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment. center,
                      curve: Curves.easeInOut,
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.leftToRightPop,
                      child: SecondPage(),
                      childCurrent: this),
                );
              },
            ),
            // ElevatedButton(
            //   child: Text('PushNamed With arguments'),
            //   onPressed: () {
            //     Navigator.pushNamed(
            //       context,
            //       "/second",
            //       arguments: "with Arguments",
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
