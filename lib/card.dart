import 'package:flutter/material.dart';
import './bgimage.dart';

class BodyCard extends StatelessWidget {
  var mytext;
  var nameController;
  var bgindex, change_pic;
  BodyCard(this.mytext, this.nameController, this.change_pic, this.bgindex) {}
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          BgImage(
            bgindex,
            change_pic,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            mytext,
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: "enter here",
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
