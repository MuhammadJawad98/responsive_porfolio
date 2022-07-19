class Skills {
  String? title;
  double? percentage;
  // final double? percent;

  Skills({this.title, this.percentage});

  Skills.fromJson(Map<String, dynamic> json) {
    percentage = json['percentage'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['percentage'] = this.percentage;
    data['title'] = this.title;
    return data;
  }
}
