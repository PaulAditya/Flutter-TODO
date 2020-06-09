import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  String title = "";
  String description = "";
  List newTask = List();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Task"),
        ),
        body: Container(
          color: Colors.blue[100],
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.blue[100],
                    margin: EdgeInsets.all(10),
                    child: Row(children: [
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration:
                                    BoxDecoration(color: Colors.blue[100]),
                                child: TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    labelText: 'Title',
                                  ),
                                  onChanged: (text) {
                                    title = text;
                                  },
                                ),
                                margin: EdgeInsets.all(10),
                              ),
                              Container(
                                decoration:
                                    BoxDecoration(color: Colors.blue[100]),
                                child: TextField(
                                  maxLines: 10,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    alignLabelWithHint: true,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    labelText: 'Description',
                                  ),
                                  onChanged: (text) {
                                    description = text;
                                  },
                                ),
                                margin: EdgeInsets.all(10),
                              ),
                              Container(
                                child: RaisedButton(
                                  onPressed: () {
                                    newTask.add(title);
                                    newTask.add(description);
                                    Navigator.pop(context, newTask);
                                  },
                                  child: Text("ADD TASK"),
                                ),
                              )
                            ]),
                      )
                    ]),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
