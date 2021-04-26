import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "dart:convert";

import '../drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  TextEditingController _nameController = TextEditingController();
  var change_pic = ["assets/a.jpg", "assets/b.jpg"];
  var mytext = "chamge me";
  var link = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var res = await http.get(link);

    setState(() {
      data = jsonDecode(res.body);
    });

    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Aawesome App",
          ),
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("id = ${data[index]["id"]}"),
                        leading: Image.network(data[index]["url"]),
                      ),
                    );
                  },
                  itemCount: data.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              print("pressed");
              if (index == 1) {
                index = 0;
              } else {
                index = index + 1;
              }

              mytext = _nameController.text;
            });
          },
          child: Icon(Icons.refresh),
        ));
  }
}
