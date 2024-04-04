import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../model/source_response.dart';

class TabItems extends StatelessWidget {
  SourceResponse result;
  bool Selected;
  TabItems(this.result,this.Selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Selected? Colors.green:Colors.white,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(color: Colors.green),
      ),
      child: Text(
        result.results as String??'',
        style: TextStyle(
          color: Selected? Colors.white:Colors.green
        ),
      ),
    );
  }
}
