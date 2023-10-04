import 'package:flutter/material.dart';
import 'package:flutter_application_4/background_image.dart';
import 'package:flutter_application_4/inherited.dart';
import 'package:flutter_application_4/styles.dart';
import 'package:flutter_application_4/widgets/textfield.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String? name, email, phonenumber, password, confirmpassword;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    inherited.of(context);
    return Stack(children: [
      const Backgroundimage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(children: [
          SafeArea(
            child: Column(children: [
        
              divide,
              Login(),
              divide,
              Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(children: [
                      textfield(
                        icon: Icons.person,
                        keyboardtype: TextInputType.name,
                        occurtext: false,
                        hint: 'Name',
                        isempty: 'Please enter name',
                        error: 'Please enter at least 4 letters',
                        regexp: '^([^a-zA-Z]*[A-Za-z]){4}',
                        onsaved: (newValue) {
                          name = newValue;
                        },
                      ),
                      divide,
                      textfield(
                     
                        icon: Icons.numbers,
                        keyboardtype: TextInputType.number,
                        occurtext: false,
                       
                        hint: 'Number',
                        isempty: 'Please enter Number',
                        error: 'Please enter a valid Number',
                        regexp: r'^[0-9]+$',
                        onsaved: (newValue) {
                          phonenumber = newValue;
                        },
                      ),
                      divide,
                      textfield(

                        icon: Icons.email,
                        keyboardtype: TextInputType.emailAddress,
                        occurtext: false,
                        hint: 'Email',
                        isempty: 'Please enter Email',
                        error: 'Please enter a valid Email',
                        regexp:
                            r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                        onsaved: (newValue) {
                          email = newValue;
                        },
                      ),
                      divide,
                      textfield(
                        icon: Icons.password,
                        keyboardtype: TextInputType.visiblePassword,
                        occurtext: true,
                        hint: 'Password',
                        isempty: 'Enter your password',
                        error:
                            'Minimum eight characters, at least one uppercase letter,\n one lowercase letter, one number, one special character',
                        regexp:
                            r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                        onsaved: (newValue) {
                          password = newValue;
                        },
                      ),
                      textfield(
                        icon: Icons.password,
                        keyboardtype: TextInputType.visiblePassword,
                        isempty: "ENter your password",
                        error:
                            "'Minimum eight characters, at least one uppercase letter,\n one lowercase letter, one number, one special character',",
                        regexp:
                            r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                        onsaved: (newvalue) {
                          confirmpassword = newvalue;
                        },
                        hint: 'confirm password',
                        occurtext: true,
                      ),
                      divide,
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: TextButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                        title: Text('Success'),
                                        content: Text('$confirmpassword'),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              setState(
                                                () {
                                                  formkey.currentState!.reset();
                                                },
                                              );
                                            },
                                            child: Text('OK'),
                                          ),
                                        ]);
                                  },
                                );
                              } else {
                                print('Form is invalid');
                              }
                            },
                            child: Text('Login', style: bodytext),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              )
            ]),
          ),
        ]),
      ),
    ]);
  }
}
