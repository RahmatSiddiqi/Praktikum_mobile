class Contact {
  int? id;
  String? name;
  String? mobileNo;

  Contact({
    this.id,
    this.name,
    this.mobileNo,
  });

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['mobileNo'] = mobileNo;

    return map;
  }

  Contact.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.mobileNo = map['mobileNo'];
  }
}
