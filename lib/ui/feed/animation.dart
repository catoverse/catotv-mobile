// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => HomeState();
// }

// class HomeState extends State<Home> with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<Offset> offset;

//   @override
//   void initState() {
//     super.initState();

//     controller =
//         AnimationController(vsync: this, duration: Duration(seconds: 1));

//     offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 2.4))
//         .animate(controller);
//   }

//   void swipeDownAnimation() {
//     setState(() {
//       offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 2.4))
//           .animate(controller);
//     });

//     controller.forward().whenComplete(() {
//       setState(() {
//         offset = Tween<Offset>(end: Offset.zero, begin: Offset(0.0, 2.4))
//             .animate(controller);
//       });

//       controller.forward();
//     });
//   }

//   void swipeUpAnimation() {
//     setState(() {
//       offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, -2.4))
//           .animate(controller);
//     });

//     controller.forward().whenComplete(() {
//       setState(() {
//         offset = Tween<Offset>(end: Offset.zero, begin: Offset(0.0, -2.4))
//             .animate(controller);
//       });

//       controller.forward();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SimpleGestureDetector(
//         onVerticalSwipe: (direction) {
//           if (direction == SwipeDirection.up) {
//             swipeUpAnimation();
//           }

//           if (direction == SwipeDirection.down) {
//             swipeDownAnimation();
//           }
//         },
//         // onVerticalDragUpdate: (details) {
//         //   int sensitivity = 8;
//         //   if (details.delta.dy > sensitivity) {
//         //     swipeDownAnimation();
//         //   } else if (details.delta.dy < -sensitivity) {
//         //     swipeUpAnimation();
//         //   }
//         // },
//         child: Stack(
//           children: <Widget>[
//             Align(
//               alignment: Alignment.center,
//               child: SlideTransition(
//                 position: offset,
//                 child: Padding(
//                   padding: EdgeInsets.all(50.0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 200,
//                     color: Colors.indigo,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


