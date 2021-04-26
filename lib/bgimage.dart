import 'package:flutter/material.dart';
import 'package:practiceapp/main.dart';

class BgImage extends StatelessWidget {
  var index;
  var change_pic;
  BgImage(this.index, this.change_pic) {}

  @override
  Widget build(BuildContext context) {
    return Image.asset(change_pic[index]);
  }
}
