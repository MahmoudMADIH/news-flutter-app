import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/SoursesResponse.dart';

class TabItems extends StatelessWidget {
  Result result;
  bool Selected;
  TabItems(this.result,this.Selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        
        color: Selected? Colors.green:Colors.white,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(color: Colors.green),
      ),
      child: Text(
        result.category as String??'',
        style: TextStyle(
          color: Selected? Colors.white:Colors.green
        ),
      ),
    );
  }
}
