import 'package:skype_clone/models/user.dart';

class Doctor extends User {
  String uid;
  String name;
  String email;
  String username;
  String status;
  int state;
  String profilePhoto;
  String registrationNumber;
  String gender;
  String title;
  String profileUrl;
  int phoneNumber;
  List<String> speciality;
  int experience;
  String description;
  int amount;

  Doctor(
      {this.uid,
      this.name,
      this.email,
      this.username,
      this.status,
      this.state,
      this.profilePhoto,
      this.registrationNumber,
      this.gender,
      this.title,
      this.profileUrl,
      this.phoneNumber,
      this.speciality,
      this.experience,
      this.description,
      this.amount});

  Map toMap(Doctor doctor) {
    var data = Map<String, dynamic>();
    data['uid'] = doctor.uid;
    data['name'] = doctor.name;
    data['email'] = doctor.email;
    data['username'] = doctor.username;
    data['status'] = doctor.status;
    data['state'] = doctor.state;
    data['profilePhoto'] = doctor.profilePhoto;
    data['registrationNumber'] = doctor.registrationNumber;
    data['gender'] = doctor.gender;
    data['title'] = doctor.title;
    data['profileUrl'] = doctor.profileUrl;
    data['phoneNumber'] = doctor.phoneNumber;
    data['speciality'] = doctor.speciality;
    data['experience'] = doctor.experience;
    data['description'] = doctor.description;
    data['amount'] = doctor.amount;
    return data;
  }

  Doctor.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'];
    this.name = mapData['name'];
    this.email = mapData['email'];
    this.username = mapData['username'];
    this.status = mapData['status'];
    this.state = mapData['state'];
    this.profilePhoto = mapData['profilePhoto'];
    this.registrationNumber = mapData['registrationNumber'];
    this.gender = mapData['gender'];
    this.title = mapData['title'];
    this.profilePhoto = mapData['profileUrl'];
    this.phoneNumber = mapData['phoneNumber'];
    this.speciality = mapData['speciality'];
    this.experience = mapData['experience'];
    this.description = mapData['description'];
    this.amount = mapData['amount'];
  }
}
