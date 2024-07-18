import 'dart:convert';

import 'package:natacademy/globals.dart';
import 'package:flutter/material.dart';
import 'package:natacademy/pages/login_page.dart';
import 'package:http/http.dart' as http;
import 'package:natacademy/widgets/custom_text_field.dart';
import 'package:natacademy/widgets/my_text_field.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({super.key});

  static String id = 'RegistrationPage';

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  List<String> genderList = ["M", "F"];
  String? gender;

  List<String> instromentList = ["Piano", "Guitar", "Drums"];
  String? instroment;

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1970, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _bdateController = TextEditingController();
  TextEditingController _instromentController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/logo.jpg',
                  height: 120,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Natatif Academy',
                      style: TextStyle(
                          fontFamily: 'calibri',
                          fontSize: titelFontSize,
                          color: titleColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'Registration',
                  style: TextStyle(
                      fontFamily: 'calibri',
                      fontSize: cardTitleSize,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                // CustomTextField(
                //   hintText: 'Name',
                //   controller: _nameController,
                // ),

                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Mobile'),
                  controller: _mobileController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your mobile';
                    }
                    return null;
                  },
                  // onSaved: (value) => _mobile = value!,
                ),
                // MyTextField(
                //   hintText: 'Mobile',
                // ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                      // prefixIcon: Icon(Icons.people),
                      ),
                  hint: const Text("Gender"),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  value: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                      _genderController.text = value.toString();
                    });
                  },
                  items: genderList.map((gdr) {
                    return DropdownMenuItem(
                      value: gdr,
                      child: Text(
                        gdr,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty || !value!.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  // onSaved: (value) => _email = value!,
                ),
                // MyTextField(
                //   hintText: 'E-Mail',
                // ),
                const SizedBox(
                  height: 5,
                ),
                // GestureDetector(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       const Text("Birth Date"),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Text(
                //             "${selectedDate.toLocal()}".split(' ')[0],
                //             style: const TextStyle(
                //               fontSize: 18,
                //               color: Colors.black87,
                //             ),
                //           ),
                //           ElevatedButton(
                //             onPressed: () => _selectDate(context),
                //             child: const Icon(Icons.calendar_month),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                //   onTap: () {
                //     _selectDate(context);
                //   },
                // ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 5.0,
                ),

                DropdownButtonFormField(
                  decoration: const InputDecoration(),
                  hint: const Text("Instroment"),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  value: instroment,
                  onChanged: (value) {
                    setState(() {
                      instroment = value.toString();
                      _instromentController.text = value.toString();
                    });
                  },
                  items: instromentList.map((instr) {
                    return DropdownMenuItem(
                      value: instr,
                      child: Text(
                        instr,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  // onSaved: (value) => _instroment = value!,
                ),
                const SizedBox(
                  height: 25.0,
                ),

                // MyButon(
                //   btnText: 'Register',
                // ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      _postDataToDatabase();
                    }
                  },
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'have an account ',
                      style: TextStyle(color: Colors.black87),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, LoginPage.id);
                      },
                      child: const Text(
                        'Login ',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _postDataToDatabase() async {
    String _name = _nameController.text;
    String _bdate = _bdateController.text;
    String _instroment = _instromentController.text;
    String _mobile = _mobileController.text;
    String _email = _emailController.text;
    String _gender = _genderController.text;
    String _age = _ageController.text;
    var url =
        'https://www.mescairo.com/app/nat/reg.php?name=${_name}&bdate=${_bdate}&instroment=${_instroment}&mobile=${_mobile}&email=${_email}&gender=${_gender}&age=${_age}';

    var response = await http.get(Uri.parse(url));

    // final headers = {'Content-Type': 'application/json'};

    // final data = {
    //   'name': _nameController.text,
    //   'bdate': _bdateController.text,
    //   'instroment': _instromentController.text,
    //   'mobile': _mobileController.text,
    //   'email': _emailController.text,
    //   // 'gender': _genderController,
    //   'gender': 'M',
    // };

    // final response = await http.post(Uri.parse(url),
    // headers: headers, body: jsonEncode(data));

    if (response.statusCode == 200) {
      // print('Data posted successfully!');
      Navigator.pop(context);
    } else {
      print('Error posting data: ${response.statusCode}');
    }
  }
}
