import 'package:flutter/material.dart';
import 'package:practiceapp/bgimage.dart';
import 'package:practiceapp/drawer.dart';
import 'package:practiceapp/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var _nameController = TextEditingController();
  var _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      drawer: MyDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/a.jpg"),
          Center(
            child: Container(
              child: Card(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                    hintText: "Enter user Name",
                                    labelText: "User Name",
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password",
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/homepage");
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => HomePage(),
                                    //   ),
                                    // );
                                  },
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                  child: Text("Signin"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
