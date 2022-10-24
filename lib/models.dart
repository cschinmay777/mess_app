import 'package:cloud_firestore/cloud_firestore.dart';

class MessModel {
  String? docId;
  String? name;
  String? address;
  String? messname;
  String? description;
  String? mob_no;
  String? contact;
  String? category;
  // String? url;

  MessModel({
    this.docId,
    this.name,
    this.address,
    this.messname,
    this.description,
    this.mob_no,
    this.contact,
    this.category,
    // this.url
  });

  MessModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    name = data["name"];
    address = data["address"];
    messname = data["mess name"];
    description = data["description"];
    mob_no = data["phone"];
    contact = data["contact"];
    // url = data["url"];
    category = data["category"];
    // print(category);
  }
}
