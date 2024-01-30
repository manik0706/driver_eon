import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

class TermsAndConditionScreen extends StatelessWidget {
  TermsAndConditionScreen({super.key});

  bool isChecked = false;

  // this bool will check rememberMe is checked
  bool showErrorMessage = false;

  //for form Validation
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        //title: Text('Login'),
        toolbarHeight: 20,
        //backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                    child: Container(
                        child: Text(
                      'Terms Of Service',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 270,
                      width: 240,
                      child: Container(
                        child: Image.asset('assets/terms.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    ' Accept EonDrive\'s Terms \& Review \n Privacy Notice...',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  privacyPolicyLinkAndTermsOfService(),
                  Divider(
                    height: 50,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('I Agree'),
                      SizedBox(
                        width: 20,
                      ),
                      CheckboxExample(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buttonterms(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttonterms() {
  return SizedBox(
    height: 60,
    width: 0,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'SUBMIT',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.transparent;
    }

    return Checkbox(
      checkColor: Colors.black,
      activeColor: Colors.amber,
      //fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

Widget privacyPolicyLinkAndTermsOfService() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
    child: Center(
        child: Text.rich(TextSpan(
            text:
                'By selecting "I Agree" below, I have reviewed and agree to the ',
            style: TextStyle(fontSize: 13, color: Colors.black),
            children: <TextSpan>[
          TextSpan(
              text: 'Terms of use',
              style: TextStyle(
                fontSize: 13,
                color: Color.fromRGBO(251, 212, 10, 1),
                //decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // code to open / launch terms of service link here
                }),
          TextSpan(text: ' and acknowledge the'),
          TextSpan(
              text: ' ',
              style: TextStyle(fontSize: 18, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'Privacy Notice',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromRGBO(251, 212, 10, 1),
                      //decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // code to open / launch privacy policy link here
                      })
              ]),
          TextSpan(text: '. I am at least 18 years of age.'),
        ]))),
  );
}
