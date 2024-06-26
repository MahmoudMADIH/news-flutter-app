import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/app_maneger.dart';

import 'package:newsapp/tab_item/tab_item.dart';

import '../model/source_response.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String Route_Name = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Results> result = [];
  int currentindex = 0;

  @override
  void initState() {
    //todo: implement initial State
    super.initState();
    APImanger.getSoureses().then((soursesResponse) {
<<<<<<< HEAD
<<<<<<< HEAD
    result = soursesResponse.results!;
    //this for the debuging
    for(int i=0 ; i<=result.length ;i++) {
      print(result[i].category);
    }
  });
=======
      result = soursesResponse.results ?? [];
=======
      result = soursesResponse.results??[];
>>>>>>> 659ff8d0183254eb5b6adb8bcc7095011aa4c19f
      setState(() {});
      //this for the debuging
      print(result.length);
      // for(int i=0 ;i<=10 ;i++){
      //   print(result[i].category);
      // }
    });
>>>>>>> 3ed02bd8a2e924425114377e5f80fcd2e9b72bd4
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: DefaultTabController(
          length: result.length,
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  currentindex = index;
                },
                tabs: result.map((result) {
                  return Tab(
                    text: (result.category as String??''),
                  );
                }).toList(),
              ),
              Expanded(
                  child: TabBarView(
                children: result
                    .map((e) => Text(result[5].category as String))
                    .toList(),
              ))
            ],
          ),
        )
        // DefaultTabController(
        //   length: result.length,
        //   child: Column(
        //     children: [
        //       Container(
        //         margin: const EdgeInsets.all(12),
        //         child: TabBar(
        //           isScrollable: true,
        //           onTap: (index) {
        //             currentindex = index;
        //           },
        //           tabs: result.map((result) {
        //             return TabItems(result, true);
        //           }).toList(),
        //
        //         ),
        //
        //       )
        //       ,
        //     ],
        //   ),
        // ),
        );
  }
}
