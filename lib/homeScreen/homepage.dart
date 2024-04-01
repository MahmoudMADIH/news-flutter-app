import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/app_maneger.dart';
import 'package:newsapp/model/SoursesResponse.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
static String Route_Name='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Result> result=[];
  @override
  void initState() {
    //todo: implement initial State
    super.initState();
    APImanger.getSoureses().then((soursesResponse) {
    result = soursesResponse.results!;
    //this for the debuging
    //print(result[5].category);
  });
  }
  @override
  Widget build(BuildContext context)  {
    return Scaffold();
  }
}
