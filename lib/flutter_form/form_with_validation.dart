import 'package:flutter/material.dart';

class FlutterFormWithValidation extends StatefulWidget {
  const FlutterFormWithValidation({Key? key}) : super(key: key);

  @override
  _FlutterFormWithValidationState createState() =>
      _FlutterFormWithValidationState();
}

class _FlutterFormWithValidationState extends State<FlutterFormWithValidation> {
  TextEditingController txtNameController = TextEditingController();
  TextEditingController txtEmailController = TextEditingController();
  TextEditingController txtPasswordController = TextEditingController();
  TextEditingController txtConfirmPasswordController = TextEditingController();
  String male = 'Male', female = 'Female', gender = 'Gender';
  bool cricket = false, footBall = true, tennis = false;
  final key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Form(
              key: key1,
              child: Column(
                children: [
                  verticalSpace(),
                  Text(
                    'Flutter Form With Validation',
                    style: style1(fontSize: 25, color: Colors.grey.shade700),
                  ),
                  //Common TextField For Name,Email,Password etc...
                  textField(
                    txtcontroller: txtNameController,
                    hintText: 'Enter Name',
                    labelText: 'Name',
                    validation: (p0) =>
                        p0!.isEmpty ? '*Name is required' : null,
                  ),
                  textField(
                    txtcontroller: txtEmailController,
                    hintText: 'Enter Email',
                    labelText: 'Email',
                    validation: (p0) => p0!.isEmpty
                        ? '*Email is required'
                        : p0.isValidEmail()
                            ? null
                            : 'Enter Proper Email Address',
                  ),
                  textFieldPassword(
                    txtcontroller: txtPasswordController,
                    hintText: 'Enter Password',
                    labelText: 'Password',
                    validation: (p0) =>
                        p0!.isEmpty ? '*Password is required' : null,
                  ),
                  textFieldPassword(
                    txtcontroller: txtConfirmPasswordController,
                    hintText: 'Re-enter Password',
                    labelText: 'confirm Password',
                    validation: (p0) =>
                        p0!.isEmpty ? '*Confirm Password is required' : null,
                  ),
                  verticalSpace(20),

                  // RadioButton
                  Row(
                    children: [
                      Text(
                        'Gender',
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 20),
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
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 18),
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
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 18),
                      ),
                    ],
                  ),

                  verticalSpace(20),
                  //CheckBox
                  Row(
                    children: [
                      Text(
                        'Hobby',
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 20),
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
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 15),
                      ),
                      checkBox(
                        value: footBall,
                        onChanged: (p0) => setState(() {
                          footBall = !footBall;
                        }),
                      ),
                      Text(
                        'FootBall',
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 15),
                      ),
                      checkBox(
                        value: tennis,
                        onChanged: (p0) => setState(() {
                          tennis = !tennis;
                        }),
                      ),
                      Text(
                        'Tennis',
                        style:
                            style1(color: Colors.grey.shade800, fontSize: 15),
                      ),
                    ],
                  ),
                  verticalSpace(),
                  //Material Button
                  MaterialButton(
                    onPressed: () {
                      key1.currentState!.validate();
                      setState(() {});
                    },
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
      ),
    );
  }
}

// All Common Widgets Here..

Widget textField(
        {required TextEditingController txtcontroller,
        required String hintText,
        required labelText,
        required String? Function(String?)? validation}) =>
    TextFormField(
      controller: txtcontroller,
      validator: validation,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
    );

//Textfield For Password Only

bool _showPassword = true;

Widget textFieldPassword(
        {required TextEditingController txtcontroller,
        required String hintText,
        required labelText,
        required String? Function(String?)? validation}) =>
    StatefulBuilder(
      builder: (context, setState) => TextFormField(
        controller: txtcontroller,
        validator: validation,
        obscureText: _showPassword,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            suffixIcon: IconButton(
              icon: _showPassword == true
                  ? Icon(
                      Icons.visibility_off,
                      color: Colors.grey.shade800,
                    )
                  : Icon(
                      Icons.visibility,
                      color: Colors.grey.shade800,
                    ),
              onPressed: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
            )),
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

extension CheckEmail on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
