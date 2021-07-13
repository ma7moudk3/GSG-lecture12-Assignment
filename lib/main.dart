import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/view/screens/customer_screen.dart';
import 'package:gsg_lec12assignment/view/screens/mershat_screen.dart';

void main() {
  runApp(MyApp());
}

enum Type { Customer, Mershat }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String email;
  bool visb = false;
  String password;
  Type typeValue = Type.Customer;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Lecture 12'),
          ),
          body: Form(
              key: formKey,
              child: Column(children: [
                Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text('Customer'),
                            value: Type.Customer,
                            groupValue: typeValue,
                            onChanged: (v) {
                              this.typeValue = v;
                              visb = false;
                              setState(() {});
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text('Mershat'),
                            value: Type.Mershat,
                            groupValue: typeValue,
                            onChanged: (v) {
                              this.typeValue = v;
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 2,
                  child: typeValue == Type.Mershat
                      ? MershatScreen()
                      : CustomerScreen(),
                ),
              ]))),
    );
  }
}
