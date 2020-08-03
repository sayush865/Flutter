import 'dart:js';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("clicked");
        },

        child: Icon(Icons.add),
        tooltip: "Add one more item",

      ),
      appBar: AppBar(title: Text("Text"),),
      body: getListView(),
    ),
  ));
}

void snackBar
(
BuildContext: context){
var snackbar = SnackBar(
content: Text(""),
action: SnackBarAction(
onPressed: (){
  debugPrint("pressed")
},
label: "undo",

),
);

Scaffold.of(context).showSnackBar(snackbar);
}

List<String> getList() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getList();


  var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text(listItems[index]),
          onTap: () {
            snackBar(listItems[index]);
            )
          },
        );
      }
  );
  return ListView()
  ;
}
