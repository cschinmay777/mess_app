import 'dart:convert';

import '../constants.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserDetails {
  String? email;
  String? name;
  String? uid;
  String? photourl;
  String? mob_no;
  String? addr;
  String? occupation;
  String? gender;
  String? category;
  String? messname;
  String? messadress;
  String? contact;
  bool? veg;
  String? description;
  UserDetails({
    this.email,
    this.name,
    this.uid,
    this.photourl,
    this.mob_no,
    this.addr,
    this.occupation,
    this.gender,
    this.category,
    this.messname,
    this.messadress,
    this.contact,
    this.veg,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'uid': uid,
      'photourl': photourl,
      'mob_no': mob_no,
      'addr': addr,
      'occupation': occupation,
      'gender': gender,
      'category': category,
      'messname': messname,
      'messadress': messadress,
      'contact': contact,
      'veg': veg,
      'description': description,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      email: map['email'] != null ? map['email'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      uid: map['uid'] != null ? map['uid'] as String : null,
      photourl: map['url'] != null ? map['url'] as String : null,
      mob_no: map['mob_no'] != null ? map['mob_no'] as String : null,
      addr: map['address'] != null ? map['address'] as String : null,
      occupation:
          map['occupation'] != null ? map['occupation'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      category: map['category'] != null ? map['category'] as String : null,
      messname: map['mess name'] != null ? map['mess name'] as String : null,
      messadress: map['add_mess'] != null ? map['add_mess'] as String : null,
      contact: map['contact'] != null ? map['contact'] as String : null,
      veg: map['veg'] != null ? map['veg'] as bool : null,
      description:
          map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetails.fromJson(String source) =>
      UserDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  void storedatatoBox(Map<String, dynamic> map) {
    Box.write('email', map['email'] != null ? map['email'] as String : null);
    Box.write('name', map['name'] != null ? map['name'] as String : null);
    Box.write('uid', map['uid'] != null ? map['uid'] as String : null);
    Box.write('photourl', map['url'] != null ? map['url'] as String : null);
    Box.write('mob_no', map['phone'] != null ? map['phone'] as String : null);
    Box.write('addr', map['address'] != null ? map['address'] as String : null);
    Box.write('occupation',
        map['occupation'] != null ? map['occupation'] as String : null);
    Box.write('gender', map['gender'] != null ? map['gender'] as String : null);
    Box.write(
        'category', map['category'] != null ? map['category'] as String : null);
    Box.write('messname',
        map['mess name']); //!= null ? map['mess name'] as String : null);
    Box.write('messadress',
        map['add_mess'] != null ? map['add_mess'] as String : null);
    Box.write(
        'contact', map['contact'] != null ? map['contact'] as String : null);
    Box.write('veg', map['veg'] != null ? map['veg'] as bool : null);
    Box.write('description',
        map['description'] != null ? map['description'] as String : null);
    // return 0;
  }
}
