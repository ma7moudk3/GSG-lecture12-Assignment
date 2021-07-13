import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/view/widgets/CustomButton.dart';
import 'package:gsg_lec12assignment/view/widgets/DropDownList.dart';
import 'package:gsg_lec12assignment/view/widgets/TextField_.dart';

class CustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCustomTextField('Name'),
        MyCustomTextField('Password'),
        CustomDropDawn(),
        CustomElevatedButton('SignUp as a customer')
      ],
    );
  }
}
