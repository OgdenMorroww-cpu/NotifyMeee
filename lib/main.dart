// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';

void main() => runApp(NotifyMeee());

class NotifyMeee extends StatefulWidget {
  const NotifyMeee({Key? key}) : super(key: key);

  static Widget titleSection = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        // Icon(
        //   Icons.star,
        //   color: Colors.red[500],
        // ),
        Text("41"),
        FavouriteCount(),
      ],
    ),
  );

  static Widget textSection = Padding(
    padding: EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  static Widget imageSection = Image.asset(
    "assets/lake.jpeg",
    width: 600,
    height: 240,
    fit: BoxFit.cover,
  );

  @override
  State<NotifyMeee> createState() => _NotifyMeeeState();
}

class _NotifyMeeeState extends State<NotifyMeee> {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, "CALL"),
        _buildButtonColumn(color, Icons.near_me, "ROUTE"),
        _buildButtonColumn(color, Icons.share, "SHARE")
      ],
    );
    return MaterialApp(
      title: "NotifyMeee",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("NotifyMeee"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(
                      20.5,
                    ),
                  ),
                  color: Colors.red,
                ),
                accountName: Text("Shedrack"),
                accountEmail: Text("shedrackabel@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/lake.jpeg"),
                ),
              ),
              Card(
                elevation: 0.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.8),
                ),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text("Austria"),
                  subtitle: Text("vienna"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  trailing: Chip(
                    label: Text("trips"),
                    onDeleted: () {},
                    shadowColor: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                elevation: 0.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.8),
                ),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text("Germany"),
                  subtitle: Text("berlin"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  trailing: Chip(
                    label: Text("trips"),
                    onDeleted: () {},
                    shadowColor: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                elevation: 0.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.8),
                ),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text("Argentina"),
                  subtitle: Text("beunos aires"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  trailing: Chip(
                    label: Text("trips"),
                    onDeleted: () {},
                    shadowColor: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                elevation: 0.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.8),
                ),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text("Nigeria"),
                  subtitle: Text("abuja"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  trailing: Chip(
                    label: Text("trips"),
                    onDeleted: () {},
                    shadowColor: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                elevation: 0.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.8),
                ),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text("Russia"),
                  subtitle: Text("moscow"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  trailing: Chip(
                    label: Text("trips"),
                    onDeleted: () {},
                    shadowColor: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                elevation: 0.0,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.8),
                ),
                margin: EdgeInsets.all(12.0),
                child: ListTile(
                  title: Text("China"),
                  subtitle: Text("beijing"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  trailing: Chip(
                    label: Text("trips"),
                    onDeleted: () {},
                    shadowColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            NotifyMeee.imageSection,
            NotifyMeee.titleSection,
            buttonSection,
            NotifyMeee.textSection,
          ],
        ),
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class FavouriteCount extends StatefulWidget {
  const FavouriteCount({Key? key}) : super(key: key);

  @override
  State<FavouriteCount> createState() => _FavouriteCountState();
}

class _FavouriteCountState extends State<FavouriteCount> {
  bool _isFavourited = true;
  int _favouriteCount = 41;
  void _toggleFavourite() {
    setState(() {
      if (_isFavourited) {
        _favouriteCount -= 1;
        _isFavourited = false;
      } else {
        _favouriteCount += 1;
        _isFavourited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            alignment: Alignment.centerRight,
            onPressed: _toggleFavourite,
            icon: (_isFavourited
                ? Icon(Icons.star)
                : Icon(
                    Icons.star_border,
                  )),
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text("$_favouriteCount"),
          ),
        ),
      ],
    );
  }
}
