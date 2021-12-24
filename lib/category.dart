import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String fname, sname;
  Category({
    required this.fname,
    required this.sname,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(fname),
            Text(sname),
          ],
        ),
      ),
    );
  }
}
