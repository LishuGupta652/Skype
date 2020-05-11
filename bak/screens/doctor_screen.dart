import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skype_clone/models/doctor.dart';
import 'package:skype_clone/resources/auth_methods.dart';

class DoctorPage extends StatefulWidget {
  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  final AuthMethods _authMethods = AuthMethods();
  List<Doctor> doctorList = [];

  @override
  void initState() {
    super.initState();

    _authMethods.fetchAllDoctor().then((List<Doctor> list) {
      setState(() {
        doctorList = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xffffeaa7));
    return Scaffold(
      // appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'D',
                    style: GoogleFonts.portLligatSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: 'octors',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10.0,
              ),
              _doctorList(),
              Divider(
                height: 50.0,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'M',
                    style: GoogleFonts.portLligatSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: 'eds',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ]),
              ),
              _doctorList(),
              SizedBox(height: 30.0),
              Divider(
                height: 50.0,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'P',
                    style: GoogleFonts.portLligatSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: 'atients',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ]),
              ),
              _doctorList(),
              SizedBox(height: 30.0)
            ],
          ),
        ),
      ),
    );
  }

  List<Doctor> doctor = [
    Doctor(name: "Jethalal gada", description: "Some text"),
    Doctor(name: "Akshay kumar", description: "Some text"),
    Doctor(
        name: "Tony Stark",
        description:
            "Large Desctiption Large DesctiptionLarge Desctiption Large Desctiption "),
    Doctor(name: "fourth Doctor", description: "Some text"),
    Doctor(name: "Fifth Doctor", description: "Some text"),
  ];

  Widget _doctorList() {
    return Container(
      height: 250.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: doctorList?.length ?? 0,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctxt, int i) {
            return Container(
              margin: EdgeInsets.only(right: 5.0),
              width: 210,
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        doctorList[i].name,
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      Divider(
                        height: 30.0,
                      ),
                      Text(
                        doctorList[i].description,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String description;

  const DoctorCard({Key key, @required this.name, @required this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: hp(13),
      // width: wp(100),
      padding: EdgeInsets.all(20),
      //margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          new BoxShadow(
              color: Colors.grey[100],
              blurRadius: 4.0,
              spreadRadius: 3.5,
              offset: Offset(0.0, 2)),
        ],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(name,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        SizedBox(height: 5),
                        Text(description,
                            style: TextStyle(color: Colors.grey, fontSize: 16))
                      ],
                    )
                  ]),
            )
          ]),
    );
  }
}
