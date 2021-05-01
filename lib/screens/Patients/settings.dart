import 'package:doctor/screens/Sign_In/signin.dart';
import 'package:flutter/material.dart';
import 'package:doctor/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

class settingsp extends StatefulWidget {
  @override
  _settingspState createState() => _settingspState();
}

class _settingspState extends State<settingsp> {
  final authentication auth = authentication(FirebaseAuth.instance);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          child: GestureDetector(
            onTap: () async {
              await auth.signOut();
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.white, style: BorderStyle.solid, width: 1.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffF0EFFE),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text('Sign Out',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff4C3C88),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')),
                    )
                  ],
                ),

              ),
            ),
          ),
        )

      ],
    );

  }
}
