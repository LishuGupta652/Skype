import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:skype_clone/resources/auth_methods.dart';
import 'package:skype_clone/screens/login_screen.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xffff7675));
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text("UserDetails", style: TextStyle(fontSize: 30)),
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: FlatButton(
                            color: Colors.green,
                            onPressed: () {
                              AuthMethods repository = AuthMethods();
                              repository.signOut();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen()));
                            },
                            child: Text(
                              "Sign Out",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
