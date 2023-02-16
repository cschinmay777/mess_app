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
  String url = "";
  MessModel({
    this.docId,
    this.name,
    this.address,
    this.messname,
    this.description,
    this.mob_no,
    this.contact,
    this.category,
    required this.url,
  });

  // MessModel(
  //     {this.docId,
  //     this.name,
  //     this.address,
  //     this.messname,
  //     this.description,
  //     this.mob_no,
  //     this.contact,
  //     this.category,
  //     this.url});

  MessModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    name = data["name"];
    address = data["address"];
    messname = data["mess name"];
    description = data["description"];
    mob_no = data["phone"];
    contact = data["contact"];
    url = (data['url'] != null ? data['url'] as String : null)!;
    category = data["category"];
    // print(category);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docId': docId,
      'name': name,
      'address': address,
      'messname': messname,
      'description': description,
      'mob_no': mob_no,
      'contact': contact,
      'category': category,
      'url': url,
    };
  }

  // factory MessModel.fromMap(Map<String, dynamic> map) {
  //   return MessModel(
  //     docId: map['docId'] != null ? map['docId'] as String : null,
  //     name: map['name'] != null ? map['name'] as String : null,
  //     address: map['address'] != null ? map['address'] as String : null,
  //     messname: map['messname'] != null ? map['messname'] as String : null,
  //     description: map['description'] != null ? map['description'] as String : null,
  //     mob_no: map['mob_no'] != null ? map['mob_no'] as String : null,
  //     contact: map['contact'] != null ? map['contact'] as String : null,
  //     category: map['category'] != null ? map['category'] as String : null,
  //     url: map['url'] != null ? map['url'] as String : null,
  //   );
  // }

  // String toJson() => json.encode(toMap());
  //
  // factory MessModel.fromJson(String source) => MessModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
