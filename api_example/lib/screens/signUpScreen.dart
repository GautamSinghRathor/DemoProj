import 'package:api_example/screens/homePage.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange.withOpacity(0.7),
              Colors.pink[400].withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.short_text,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      'SignUp',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'SignUp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Demo App from vcareAll',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: size.height * 0.40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  child: Column(
                    children: [
                      CustomInputField('Username'),
                      CustomInputField('Email'),
                      CustomInputField('Password'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton(
                              underline: SizedBox(),
                              onChanged: (_) {},
                              icon: Icon(Icons.expand_more),
                              hint: Text('Contry'),
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    'India',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'India1',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'India2',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            DropdownButton(
                              underline: SizedBox(),
                              onChanged: (_) {},
                              icon: Icon(Icons.expand_more),
                              hint: Text('City'),
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    'Delhi',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'Delhi1',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'Delhi2',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (ctx) => MyHomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Card(
                    child: Center(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.pink[400],
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'ALREADY HAVE AN ACCOUNT | lOG IN',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String lable;
  CustomInputField(this.lable);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        labelText: lable,
      ),
    );
  }
}
