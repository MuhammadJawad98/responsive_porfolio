import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../models/experience.dart';
import '../../models/projects_data.dart';
import '../../models/skills.dart';
import '../../models/social_media.dart';
import '../../utils/colors.dart';

class Constants {
//https://demo.cocobasic.com/volos-wp/demo-3/
  //TextFormFieldType
  static const int nameField = 1;
  static const int emailField = 2;
  static const int subjectField = 3;
  static const int messageField = 4;

  static const String profileImage =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/84640753_148756503000084_5602563773509915072_n%20(2).jpg?alt=media&token=63e1b375-5efb-4ef1-8727-c57edbf03694';
      'https://i.ibb.co/JsGyhPP/84640753-148756503000084-5602563773509915072-n-2.jpg';
  static const String bgImage =
      'https://images.unsplash.com/photo-1576400883215-7083980b6193?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzd8fHRlY2hub2xvZ3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';
  static const String dummyImage =
      'https://images.unsplash.com/photo-1534665482403-a909d0d97c67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvZGluZ3xlbnwwfDB8MHx8&auto=format&fit=crop&w=400&q=60';

  static const String userImage =
      'https://images.unsplash.com/photo-1541855492-581f618f69a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60';

  //images link
  static const String projectNiffty =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/Screenshot_2021-12-27-00-47-18-46_9356d306aa2ceff80a83a0adb868fa34.jpg?alt=media&token=3fddfee7-9fb3-4e13-8bfe-997d47b96487';
      'https://i.ibb.co/n1q0T2m/Screenshot-2021-12-27-00-47-18-46-9356d306aa2ceff80a83a0adb868fa34.jpg';
  static const String projectNeighbourHub =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/Screenshot_2021-12-27-00-43-55-70_a7fb4e294e80f1af4c4e9eb129b8d8e6.jpg?alt=media&token=6e8aea4f-5d0b-4f06-936d-5506e7316526';
      'https://i.ibb.co/9qMY2W4/Screenshot-2021-12-27-00-43-55-70-a7fb4e294e80f1af4c4e9eb129b8d8e6.jpg';
  static const String projectGearsUnlimited =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/1640548351258.png?alt=media&token=f1fb9c0a-73ee-40aa-a854-3708f21c8ba6';
      'https://i.ibb.co/2ccKsQW/1640548351258.png';
  static const String projectFacebookClone =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/Screenshot_2021-12-27-00-45-16-75_1ae5d7f870a5420ea17fea142b6713b8.jpg?alt=media&token=0675642a-09f8-4fae-b6c0-68d35ec7a8f1';
      'https://i.ibb.co/LgbJ7vH/Screenshot-2021-12-27-00-45-16-75-1ae5d7f870a5420ea17fea142b6713b8.jpg';
  static const String projectPopeye =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/unnamed.webp?alt=media&token=01ed7566-115f-45b8-9552-0d3a7b4ad371';
      'https://i.ibb.co/kQPR5rk/unnamed-1.png';
  static const String projectMizdah =
      // 'https://firebasestorage.googleapis.com/v0/b/porfolio-336218.appspot.com/o/1640548351258.png?alt=media&token=f1fb9c0a-73ee-40aa-a854-3708f21c8ba6';
      'https://i.ibb.co/V3mSGYY/Screenshot-2021-12-27-01-04-23-17-f49ec91a244339f0b05a49d4bdba060b.jpg';

  static List<Projects> projectData = [
    Projects(name: 'Niffty', imageUrl: projectNiffty, description: ''),
    Projects(
        name: 'NeighbourHub.de',
        imageUrl: projectNeighbourHub,
        description: ''),
    Projects(
        name: 'GearsUnlimited',
        imageUrl: projectGearsUnlimited,
        description: ''),
    Projects(
        name: 'FacebookClone', imageUrl: projectFacebookClone, description: ''),
    Projects(name: 'Popeye', imageUrl: projectPopeye, description: ''),
    Projects(name: 'Mizdah', imageUrl: projectMizdah, description: ''),
  ];
  static List<Projects> projectsImages = [
    ...projectData,
    Projects(name: '', imageUrl: 'https://i.ibb.co/7GJYpc3/Screenshot-2021-12-27-00-44-03-46-a7fb4e294e80f1af4c4e9eb129b8d8e6.jpg', description: ''),
    Projects(name: '', imageUrl: 'https://i.ibb.co/TmjCGKg/Screenshot-2021-12-27-00-47-45-00-9356d306aa2ceff80a83a0adb868fa34.jpg', description: ''),
    Projects(name: '', imageUrl: 'https://i.ibb.co/qm12LWH/Screenshot-2021-12-27-00-47-29-55-9356d306aa2ceff80a83a0adb868fa34.jpg', description: ''),
    Projects(name: '', imageUrl: 'https://i.ibb.co/WGnCFWv/Screenshot-2021-12-27-00-45-39-58-8e7efc52f4e62b62c02054cee75ed1bb.jpg', description: ''),
    Projects(name: '', imageUrl: 'https://i.ibb.co/41TKckd/Screenshot-2021-12-27-00-45-48-34-8e7efc52f4e62b62c02054cee75ed1bb.jpg', description: ''),
  ];

  static List<Skills> skills = [
    Skills(percent: 70, percentage: '70%', title: 'Java'),
    Skills(percent: 65, percentage: '65%', title: 'Dart'),
    Skills(percent: 50, percentage: '50%', title: 'Android'),
    Skills(percent: 65, percentage: '65%', title: 'Flutter'),
    Skills(percent: 40, percentage: '40%', title: 'React native'),
  ];

  static const String nifftyDesc =
      '08/2020 to 09/2020. Niffy provides you with a book for the worker for a specific task. Also, a user can work as an employer by adding his/her profile. My role is to make this app UI. It includes activities, fragments, maps, SQLite, google login, Facebook login, Intents, and many more components.';
  static const String neighbourhubDesc =
      '11/2020 to 02/2021. Neighbourhub.de is an ecommerce project made on Flutter. Works as e-commerce for multiple vendors. My role is to customize it for their eCommerce website. API integration, UI modifications, google Facebook login integration, Firebase authentications, and adding new features are part of my role.';
  static const String gearsUnlimitedDesc =
      '10/2020 to 10/2020. Gears Unlimited is an android based app, an e-commerce platform for selling music instruments. Including selling purchasing also having events creation. My role is to add the comments section by using their API and also some UI modifications.';
  static const String facebookDesc =
      '03/2021 to 03/2021. During my professional career. I start taking interest in flutter. How it works? What can we do with flutter. So then i start making a clone of facebook but its a static page with all the basic functionality like post creation etc.';
  static const String popeyeDesc =
      '07/2020 to 08/2020. Popeye is an arabic food ordering app that allow user to order yummy fast food with awesome offers. My role is to resolve bugs like Facebook login, UI updating, data parsing, language change issues, SSL certifications, etc.';
  static const String mizdahDesc =
      '10/2021 to Continue. Mizdah is a secure, reliable, and high-performance video conferencing and online meeting solution. This app is based on flutter with webrtc feature. My role is to build it from scratch, integrating APIs and webrtc.';
  static const String ablohDesc =
      '04/2021 to 09/2021. Abloh is a social media type app. Build in React Native. My role is to work in the reat native team to support them by fixing the bugs and UI responsiveness. During this project i learn a-lot about javascript, it weird behaviours and some core concepts. ';
  static List<Experience> experienceList = [
    Experience(
      year: '2020',
      description: popeyeDesc,
      isLast: false,
    ),
    Experience(
      year: '2020',
      description: nifftyDesc,
      isLast: false,
    ),
    Experience(
      year: '2020',
      description: gearsUnlimitedDesc,
      isLast: false,
    ),
    Experience(
      year: '2021',
      description: neighbourhubDesc,
      isLast: false,
    ),
    Experience(
      year: '2021',
      description: facebookDesc,
      isLast: false,
    ),
    Experience(
      year: '2021',
      description: ablohDesc,
      isLast: false,
    ),
    Experience(
      year: '2021',
      description: mizdahDesc,
      isLast: true,
    ),
  ];
  static const String instaUrl =
      'https://instagram.com/marvelstudios?utm_medium=copy_link';
  static const String facebookUrl =
      'https://www.facebook.com/profile.php?id=100008796272224';
  static const String youtubeUrl =
      'https://www.youtube.com/channel/UC6kMl0JiGiKZlH9v3FjDlHg';
  static const String twitterUrl = 'https://twitter.com/Muhammad_Jawad9';
  static const String linkedinUrl =
      'https://www.linkedin.com/in/muhammad-jawad-22a14a136/';
  static const String githubUrl = 'https://github.com/MuhammadJawad98';
  static const String resumeLink =
  'https://drive.google.com/file/d/19903BEkQo53N_aKo_0aPEbOT5BJAxKJA/view?usp=sharing';
      // 'https://drive.google.com/file/d/1oWiwxYFLb552PfKlciyowoaC2Hq59L-z/view?usp=sharing';

  static const String hiIAmJawadText = 'Hi, I\'m \nMuhammad Jawad';
  static const String buildValueText = 'I build value through design.';
  static const String buildProductText =
      'I\'m a Pakistani who loves building digital products.';
  static const String introduceText = 'Introduce';
  static const String intro =
      'Hi, my name is Muhammad Jawad. Graduated as a computer science student from University of Education, Lahore.';
  static const String introDescription =
      'I started my career as an Android developer. Working on different projects fixing bugs , adding new features & updating Ui are part of my role. Then i start learning Flutter which create a-lot of interest in it. Its simplicity and flexibility makes me Flutter FAN. Then started my career as an Flutter developer. Working on different projects like e-commerce, educational apps and currently working on group conferencing app.';
  static const String downloadCv = 'Download CV';
  static const String myPortfolio = 'My Portfolio';
  static const String projects = 'Projects';
  static const String experience = 'Experience';
  static const String text2020 = '2020';
  static const String text2021 = '2021';
  static const String skillsText = 'Skills';
  static const String projectHighlights = 'Projects Highlights';
  static const String instagram = 'Instagram';
  static const String youtube = 'Youtube';
  static const String github = 'Github';
  static const String facebook = 'Facebook';
  static const String twitter = 'Twitter';
  static const String linkedin = 'Linkedin';
  static const String copyrighttext =
      'Copyright © 2022 Muhammad Jawad • Mobile App Developer';
  static const String portfolioLink='muhammadjawad98.github.io/portfolio/';

  static List<SocialMedia> socialMediaList = [
    SocialMedia(
        icon: AntDesign.instagram,
        text: Constants.instagram,
        iconColor: AppColors.instaColor,
        url: Constants.instaUrl),
    SocialMedia(
        icon: Entypo.youtube,
        text: Constants.youtube,
        iconColor: AppColors.youtubeColor,
        url: Constants.youtubeUrl),
    SocialMedia(
        icon: AntDesign.github,
        text: Constants.github,
        iconColor: AppColors.blackColor,
        url: Constants.githubUrl),
    SocialMedia(
        icon: FontAwesome.facebook,
        text: Constants.facebook,
        iconColor: AppColors.fbColor,
        url: Constants.facebookUrl),
    SocialMedia(
        icon: Entypo.twitter,
        text: Constants.twitter,
        iconColor: AppColors.twitterColor,
        url: Constants.twitterUrl),
    SocialMedia(
        icon: Entypo.linkedin,
        text: Constants.linkedin,
        iconColor: AppColors.linkedinColor,
        url: Constants.linkedinUrl),
  ];
}
