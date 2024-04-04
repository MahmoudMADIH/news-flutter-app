// import 'dart:async';
// import 'package:flutter/material.dart';
//
// import '../app_maneger.dart';
// import '../model/SoursesResponse.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   static String Route_Name = 'HomeScreen';
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<Result> result = [];
//   int currentindex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     APImanger.getSoureses().then((soursesResponse) {
//       result = soursesResponse.results ?? [];
//       setState(() {});
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: DefaultTabController(
//         length: result.length,
//         child: Column(
//           children: [
//             TabBar(
//               onTap: (index) {
//                 setState(() {
//                   currentindex = index;
//                 });
//               },
//               tabs: result.map((result) {
//                 return Tab(
//                   text: result.category as String ?? '', // Use text instead of TabItems
//                 );
//               }).toList(),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: result.map((result) => _buildTabContent(result)).toList(), // Fix content mapping
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTabContent(Result result) {
//     // Build the content for each tab based on the 'result' data
//     // TODO: Implement your content here, for example:
//     return Text(result.title as String ?? '');
//   }
// }
