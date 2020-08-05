import 'package:api_example/components/cusCircle.dart';
import 'package:api_example/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

class WalkThroughScreen extends StatelessWidget {
  const WalkThroughScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                height: 100,
              ),
              Container(
                height: 250,
                width: 250,
                child: Image.asset(
                  'assets/bulb.png',
                  fit: BoxFit.fill,
                  color: Colors.white,
                ),
              ),
              Text(
                'TuteeHub',
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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual demo.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton('SIGN UP'),
                  CustomButton('LOGIN IN'),
                ],
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                  width: 50,
                  child: Row(
                    children: [
                      CusCircle(true),
                      SizedBox(width: 5),
                      CusCircle(false),
                      SizedBox(width: 5),
                      CusCircle(false),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) => SignUpScreen(),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 21,
              color: Colors.pink[400],
            ),
          ),
        ),
      ),
    );
  }
}
