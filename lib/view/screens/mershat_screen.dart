import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/view/widgets/CustomButton.dart';
import 'package:gsg_lec12assignment/view/widgets/DropDownList.dart';
import 'package:gsg_lec12assignment/view/widgets/TextField_.dart';

class MershatScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyCustomTextField('Name'),
      MyCustomTextField('Password'),
      MyCustomTextField('ShopName'),
      MyCustomTextField('ShopCatg'),
      MyCustomTextField('Bio'),
      CustomDropDawn(),
      CustomElevatedButton('SignUp as a mershat')],);
  }
  }
