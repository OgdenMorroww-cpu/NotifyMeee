// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:notifymeee/screens/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotifyMeee"),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => Container(
              height: 330.0,
              child: ListView(
                padding: EdgeInsets.all(12.0),
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                    child: SizedBox(
                      width: 210.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Task title",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                    child: SizedBox(
                      width: 210.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: "Title",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                    child: SizedBox(
                      width: 210,
                      child: MaterialButton(
                        elevation: 0.0,
                        height: 55.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text("Add Task"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        tooltip: "Add task",
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
