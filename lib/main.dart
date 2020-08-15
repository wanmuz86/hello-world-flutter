import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
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
    );
  }
}
// STateless

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hello World",
            style: TextStyle(color: Colors.green),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Hello World",
              style: TextStyle(color: Colors.amber, fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "This is my First app",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text("I hope you enjoy it"),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                Text("try one row"),
                SizedBox(width: 16),
                Text("Try anothe row")
              ],
            ),
            Image.network(
                "https://static.asiawebdirect.com/m/kl/portals/kuala-lumpur-ws/homepage/pagePropertiesOgImage/kuala-lumpur.jpg.jpg"),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              child: Text("Press Me", style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                Toast.show("Hello World", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

              },
            )
          ],
        ));
  }
}
