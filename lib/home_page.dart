import 'package:flutter/material.dart';
import 'package:navigation_and_keys/category.dart';

class HomePage extends StatelessWidget {
  late String fname, sname;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("N & K's"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountName: Text("gop"),
              accountEmail: Text("gop@g.c"),
            ),
            ListTile(
                leading: Icon(Icons.person),
                onTap: () => Navigator.of(context).pop()),
            ListTile(
                leading: Icon(Icons.close),
                onTap: () => Navigator.of(context).pop()),
          ],
        ),
      ),
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter value";
                }
              },
              onSaved: (value) {
                fname = value!;
              },
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "enter value";
                }
              },
              onSaved: (value) {
                sname = value!;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_key.currentState!.validate()) {
            _key.currentState!.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Category(
                  fname: fname,
                  sname: sname,
                ),
              ),
            );
          }
        },
        child: Icon(Icons.close_fullscreen),
      ),
    );
  }
}
