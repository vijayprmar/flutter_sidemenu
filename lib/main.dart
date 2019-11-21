import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sidemenu/new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String,WidgetBuilder>{
        "/a": (BuildContext context) => new NewPage("Contacts"),

      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Sidebar Demo"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: Text("Vijay Parmar"),
                accountEmail: Text("vspxcoder@gmail.com"),
               currentAccountPicture: CircleAvatar(
                 backgroundColor: Colors.red,
                  child: Text("V"),
               ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("a"),
                ),
              ],

            ),
            ListTile(
              title: new Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: new Text("Contacts"),
              trailing: Icon(Icons.contact_phone),
              onTap: () { Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/a");
              },
            ),
            ListTile(
              title: new Text("About"),
              trailing: Icon(Icons.info),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Exit"),
              trailing: Icon(Icons.arrow_back),
              onTap:  ()=> Navigator.of(context).pop(),
            )

          ],
        ),
      ),
      body: new Container(
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}

