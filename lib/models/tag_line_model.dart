class TagLine {
  String? imageUrl;
  String? title1;
  String? title2;
  String? title3;

  TagLine({this.imageUrl, this.title1, this.title2, this.title3});

  TagLine.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title1 = json['title1'];
    title2 = json['title2'];
    title3 = json['title3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title1'] = this.title1;
    data['title2'] = this.title2;
    data['title3'] = this.title3;
    return data;
  }
}