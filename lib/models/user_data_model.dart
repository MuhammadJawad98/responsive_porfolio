class UserData {
  String? birthday;
  String? city;
  String? cvUrl;
  String? email;
  String? interest;
  String? name;
  String? phoneNumber;
  String? role;
  String? websiteUrl;

  UserData(
      {this.birthday,
      this.city,
      this.cvUrl,
      this.email,
      this.interest,
      this.name,
      this.phoneNumber,
      this.role,
      this.websiteUrl});

  UserData.fromJson(Map<String, dynamic> json) {
    birthday = json['birthday'];
    city = json['city'];
    cvUrl = json['cvUrl'];
    email = json['email'];
    interest = json['interest'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    role = json['role'];
    websiteUrl = json['websiteUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['birthday'] = this.birthday;
    data['city'] = this.city;
    data['cvUrl'] = this.cvUrl;
    data['email'] = this.email;
    data['interest'] = this.interest;
    data['name'] = this.name;
    data['phoneNumber'] = this.phoneNumber;
    data['role'] = this.role;
    data['websiteUrl'] = this.websiteUrl;
    return data;
  }
}
