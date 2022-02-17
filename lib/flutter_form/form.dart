import 'package:flutter/material.dart';

class SimpleFlutterForm extends StatefulWidget {
  const SimpleFlutterForm({Key? key}) : super(key: key);

  @override
  _SimpleFlutterFormState createState() => _SimpleFlutterFormState();
}

class _SimpleFlutterFormState extends State<SimpleFlutterForm> {
  TextEditingController txtNameController = TextEditingController();
  TextEditingController txtEmailController = TextEditingController();
  TextEditingController txtPasswordController = TextEditingController();
  TextEditingController txtConfirmPasswordController = TextEditingController();
  String male = 'Male', female = 'Female', gender = 'Gender';
  bool cricket = false, footBall = true, tennis = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(),
                Text(
                  'Simple Flutter Form',
                  style: style1(fontSize: 30, color: Colors.grey.shade700),
                ),
                //Common TextField For Name,Email,Password etc...
                textField(
                  txtcontroller: txtNameController,
                  hintText: 'Enter Name',
                  labelText: 'Name',
                ),
                textField(
                  txtcontroller: txtEmailController,
                  hintText: 'Enter Email',
                  labelText: 'Email',
                ),
                textFieldPassword(
                  txtcontroller: txtPasswordController,
                  hintText: 'Enter Password',
                  labelText: 'Password',
                ),
                textFieldPassword(
                  txtcontroller: txtConfirmPasswordController,
                  hintText: 'Re-enter Password',
                  labelText: 'confirm Password',
                ),
                verticalSpace(20),

                // RadioButton
                Row(
                  children: [
                    Text(
                      'Gender',
                      style: style1(color: Colors.grey.shade800, fontSize: 20),
                    ),
                    radioButton(
                      value: male,
                      groupValue: gender,
                      onChanged: (p0) => setState(() {
                        gender = p0;
                      }),
                    ),
                    Text(
                      'Male',
                      style: style1(color: Colors.grey.shade800, fontSize: 18),
                    ),
                    radioButton(
                      value: female,
                      groupValue: gender,
                      onChanged: (p0) => setState(() {
                        gender = p0;
                      }),
                    ),
                    Text(
                      'Female',
                      style: style1(color: Colors.grey.shade800, fontSize: 18),
                    ),
                  ],
                ),

                verticalSpace(20),
                //CheckBox
                Row(
                  children: [
                    Text(
                      'Hobby',
                      style: style1(color: Colors.grey.shade800, fontSize: 20),
                    ),
                    horizontalSpace(),
                    checkBox(
                      value: cricket,
                      onChanged: (p0) => setState(() {
                        cricket = !cricket;
                      }),
                    ),
                    Text(
                      'Cricket',
                      style: style1(color: Colors.grey.shade800, fontSize: 15),
                    ),
                    checkBox(
                      value: footBall,
                      onChanged: (p0) => setState(() {
                        footBall = !footBall;
                      }),
                    ),
                    Text(
                      'FootBall',
                      style: style1(color: Colors.grey.shade800, fontSize: 15),
                    ),
                    checkBox(
                      value: tennis,
                      onChanged: (p0) => setState(() {
                        tennis = !tennis;
                      }),
                    ),
                    Text(
                      'Tennis',
                      style: style1(color: Colors.grey.shade800, fontSize: 15),
                    ),
                  ],
                ),
                verticalSpace(),
                //Material Button
                MaterialButton(
                  onPressed: () => setState(() {}),
                  color: Colors.black,
                  child: Text(
                    'Submit',
                    style: style1(color: Colors.white),
                  ),
                ),
                verticalSpace(),
                Column(
                  children: [
                    Text(
                      'Display Form Data',
                      style: style1(fontSize: 20),
                    ),
                    verticalSpace(),
                    Text(txtNameController.text),
                    Text(txtEmailController.text),
                    Text(txtPasswordController.text),
                    Text(txtConfirmPasswordController.text),
                    Text(gender),
                    cricket == true ? const Text('Cricket') : Container(),
                    footBall == true ? const Text('Football') : Container(),
                    tennis == true ? const Text('Tennis') : Container(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// All Common Widgets Here..

Widget textField({
  required TextEditingController txtcontroller,
  required String hintText,
  required labelText,
}) =>
    TextField(
      controller: txtcontroller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
    );

//Textfield For Password Only

bool _showPassword = false;

Widget textFieldPassword({
  required TextEditingController txtcontroller,
  required String hintText,
  required labelText,
}) =>
    StatefulBuilder(
      builder: (context, setState) => TextField(
        controller: txtcontroller,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            suffixIcon: IconButton(
              icon: _showPassword == true
                  ? const Icon(
                      Icons.visibility_off,
                      color: Color.fromARGB(255, 163, 19, 19),
                    )
                  : const Icon(
                      Icons.visibility,
                      color: Color.fromARGB(255, 214, 60, 60),
                    ),
              onPressed: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
            )),
        obscureText: _showPassword,
      ),
    );

Widget radioButton({
  required value,
  required groupValue,
  required void Function(dynamic)? onChanged,
}) =>
    Radio(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: Colors.grey.shade800,
    );

TextStyle style1({double fontSize = 15, Color color = Colors.black}) =>
    TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    );

SizedBox verticalSpace([double verticalSpace = 10]) => SizedBox(
      height: verticalSpace,
    );
SizedBox horizontalSpace([double horizontalSpace = 10]) => SizedBox(
      width: horizontalSpace,
    );

Widget checkBox(
        {required bool value, required void Function(bool?)? onChanged}) =>
    Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.grey.shade800,
    );
