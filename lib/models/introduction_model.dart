class Introduction {
  String? description;
  String? headline;

  Introduction({this.description, this.headline});

  Introduction.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    headline = json['headline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['headline'] = this.headline;
    return data;
  }
}