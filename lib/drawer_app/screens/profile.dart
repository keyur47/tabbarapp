// import 'package:flutter/material.dart';
//
// class profilePage extends StatefulWidget {
//   @override
//   profilePageState createState() => profilePageState();
// }
//
// class profilePageState extends State<profilePage> {
//
//
//   static const List<Tab> _tabs = [
//     Tab(
//       child: Text(
//         "Mon 22",
//       ),
//     ),
//     Tab(
//       child: Text(
//         "Tue 23",
//       ),
//     ),
//     Tab(
//       child: Text(
//         "Wed 24",
//
//       ),
//     ),
//     Tab(
//       child: Text(
//         "Thu 25",
//       ),
//     ),
//     Tab(
//       child: Text(
//         "Fri 26",
//       ),
//     ),
//     Tab(
//       child: Text(
//         "Sat 27",
//       ),
//     ),
//     Tab(
//       child: Text(
//         "Sun 28",
//       ),
//     ),
//   ];
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 7,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'My Weekly information',
//             style: TextStyle(fontSize: 16),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.purple,
//           elevation: 0,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20.0),
//               bottomRight: Radius.circular(20.0),
//             ),
//           ),
//           leading: const Icon(
//             Icons.menu,
//           ),
//         ),
//         body: Padding(
//           padding:  const EdgeInsets.only(left: 10,right: 10),
//           child: Column(
//             children: [
//               const SizedBox(height: 10,),
//               SizedBox(
//                 height: 45,
//                 child: TabBar(
//                     labelColor: Colors.white,
//                     unselectedLabelColor: Colors.grey,
//                     labelStyle: const TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                     unselectedLabelStyle: const TextStyle(
//                         fontStyle: FontStyle.italic),
//                     overlayColor: MaterialStateColor.resolveWith((
//                         Set<MaterialState> states) {
//                       if (states.contains(MaterialState.pressed)) {
//                         return Colors.transparent;
//                       }
//                       if (states.contains(MaterialState.focused)) {
//                         return Colors.orange;
//                       } else if (states.contains(MaterialState.hovered)) {
//                         return Colors.pinkAccent;
//                       }
//                       return Colors.transparent;
//                     }),
//                     indicatorWeight: 2,
//                     indicatorColor: Colors.red,
//                     indicatorSize: TabBarIndicatorSize.tab,
//                     indicator: BoxDecoration(
//                       border: Border.all(color: Colors.black12),
//                       borderRadius: const BorderRadius.only(
//                         topRight: Radius.circular(20.0),
//                         bottomLeft: Radius.circular(20.0),
//                       ), color: Colors.purple,
//                     ),
//                     physics: const BouncingScrollPhysics(),
//                     isScrollable: true,
//                     tabs: _tabs
//                 ),
//               ),
//
//               const Expanded(
//                 child: TabBarView(
//                     children: _tabs
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }