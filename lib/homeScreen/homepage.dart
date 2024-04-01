import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/app_maneger.dart';
import 'package:newsapp/model/SoursesResponse.dart';
import 'package:newsapp/tab_item/tab_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String Route_Name = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Result> result = [];

  @override
  void initState() {
    //todo: implement initial State
    super.initState();
    APImanger.getSoureses().then((soursesResponse) {
      result = soursesResponse.results ?? [];
      setState(() {});
      //this for the debuging
      //print(result[5].category);
    });
  }

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
        length: result.length,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: TabBar(
                isScrollable: true,
                onTap: (index) {
                  currentindex = index;
                },
                tabs: result.map((result) {
                  return TabItems(result, true);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
