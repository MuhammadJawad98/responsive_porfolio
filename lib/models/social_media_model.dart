class SocialMediaModel {
  String? facebookUrl;
  String? githubUrl;
  String? instaUrl;
  String? linkedinUrl;
  String? twitterUrl;
  String? youtubeUrl;

  SocialMediaModel(
      {this.facebookUrl,
        this.githubUrl,
        this.instaUrl,
        this.linkedinUrl,
        this.twitterUrl,
        this.youtubeUrl});

  SocialMediaModel.fromJson(Map<String, dynamic> json) {
    facebookUrl = json['facebookUrl'];
    githubUrl = json['githubUrl'];
    instaUrl = json['instaUrl'];
    linkedinUrl = json['linkedinUrl'];
    twitterUrl = json['twitterUrl'];
    youtubeUrl = json['youtubeUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facebookUrl'] = this.facebookUrl;
    data['githubUrl'] = this.githubUrl;
    data['instaUrl'] = this.instaUrl;
    data['linkedinUrl'] = this.linkedinUrl;
    data['twitterUrl'] = this.twitterUrl;
    data['youtubeUrl'] = this.youtubeUrl;
    return data;
  }
}