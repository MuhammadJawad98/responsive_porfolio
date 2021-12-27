import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/projects_data.dart';
import 'package:portfolio/models/skills.dart';

class Constants {
//https://demo.cocobasic.com/volos-wp/demo-3/
  //TextFormFieldType
  static const int nameField = 1;
  static const int emailField = 2;
  static const int subjectField = 3;
  static const int messageField = 4;

  static const String profileImage =
      'https://i.ibb.co/JsGyhPP/84640753-148756503000084-5602563773509915072-n-2.jpg';
  static const String bgImage =
      'https://images.unsplash.com/photo-1576400883215-7083980b6193?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzd8fHRlY2hub2xvZ3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';

  static const String userImage =
      'https://images.unsplash.com/photo-1541855492-581f618f69a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60';
  static const String iconDesign = 'assets/icons/icon_design_x2_green.png';
  static const String iconDevelop = 'assets/icons/icon_develop_x2_green.png';
  static const String iconPromote = 'assets/icons/icon_promote_x2_green.png';
  static const String iconWrite = 'assets/icons/icon_write_x2_green.png';

  //images link
  static const String projectNiffty = 'https://i.ibb.co/n1q0T2m/Screenshot-2021-12-27-00-47-18-46-9356d306aa2ceff80a83a0adb868fa34.jpg';
  static const String projectNeighbourHub = 'https://i.ibb.co/9qMY2W4/Screenshot-2021-12-27-00-43-55-70-a7fb4e294e80f1af4c4e9eb129b8d8e6.jpg';
  static const String projectGearsUnlimited = 'https://i.ibb.co/2ccKsQW/1640548351258.png';
  static const String projectFacebookClone = 'https://i.ibb.co/LgbJ7vH/Screenshot-2021-12-27-00-45-16-75-1ae5d7f870a5420ea17fea142b6713b8.jpg';
  static const String projectPopeye = 'https://i.ibb.co/kQPR5rk/unnamed-1.png';
  static const String projectMizdah = 'https://i.ibb.co/V3mSGYY/Screenshot-2021-12-27-01-04-23-17-f49ec91a244339f0b05a49d4bdba060b.jpg';

  static const String text =
      '2015 - 2017 Turpis metus sit diam purus leo in varius ac quam. Nunc amet tristique volutpat adipiscing vulputate phasellus. Eget enim aliquam euismod mauris in vitae viverra blandit lectus diam feugiat. Nunc amet tristique volutpat adipiscing vulputate phasellus. Eget enim aliquam.';

static List<Projects> projectData=[
  Projects(name: 'Niffty', imageUrl: projectNiffty, description: ''),
  Projects(name: 'NeighbourHub.de', imageUrl: projectNeighbourHub, description: ''),
  Projects(name: 'GearsUnlimited', imageUrl: projectGearsUnlimited, description: ''),
  Projects(name: 'FacebookClone', imageUrl: projectFacebookClone, description: ''),
  Projects(name: 'Popeye', imageUrl: projectPopeye, description: ''),
  Projects(name: 'Mizdah', imageUrl: projectMizdah, description: ''),
];

static List<Skills> skills=[
  Skills(percent: 70, percentage: '70%', title: 'Java'),
  Skills(percent: 65, percentage: '65%', title: 'Dart'),
  Skills(percent: 50, percentage: '50%', title: 'Android'),
  Skills(percent: 65, percentage: '65%', title: 'Flutter'),
  Skills(percent: 40, percentage: '40%', title: 'React native'),
];

static const String nifftyDesc='08/2020 to 09/2020. Niffy provides you with a book for the worker for a specific task. Also, a user can work as an employer by adding his/her profile. My role is to make this app UI. It includes activities, fragments, maps, SQLite, google login, Facebook login, Intents, and many more components.';
static const String neighbourhubDesc='11/2020 to 02/2021. Neighbourhub.de is an ecommerce project made on Flutter. Works as e-commerce for multiple vendors. My role is to customize it for their eCommerce website. API integration, UI modifications, google Facebook login integration, Firebase authentications, and adding new features are part of my role.';
static const String gearsUnlimitedDesc='10/2020 to 10/2020. Gears Unlimited is an android based app, an e-commerce platform for selling music instruments. Including selling purchasing also having events creation. My role is to add the comments section by using their API and also some UI modifications.';
static const String facebookDesc='03/2021 to 03/2021. During my professional career. I start taking interest in flutter. How it works? What can we do with flutter. So then i start making a clone of facebook but its a static page with all the basic functionality like post creation etc.';
static const String popeyeDesc='07/2020 to 08/2020. Popeye is an arabic food ordering app that allow user to order yummy fast food with awesome offers. My role is to resolve bugs like Facebook login, UI updating, data parsing, language change issues, SSL certifications, etc.';
static const String mizdahDesc='10/2021 to Continue. Mizdah is a secure, reliable, and high-performance video conferencing and online meeting solution. This app is based on flutter with webrtc feature. My role is to build it from scratch, integrating APIs and webrtc.';
static const String ablohDesc='04/2021 to 09/2021. Abloh is a social media type app. Build in React Native. My role is to work in the reat native team to support them by fixing the bugs and UI responsiveness. During this project i learn a-lot about javascript, it weird behaviours and some core concepts. ';
static List<Experience> experienceList=[
  Experience(year: '2020', description: popeyeDesc,isLast:false,),
  Experience(year: '2020', description: nifftyDesc,isLast:false,),
  Experience(year: '2020', description: gearsUnlimitedDesc,isLast:false,),
  Experience(year: '2021', description: neighbourhubDesc,isLast:false,),
  Experience(year: '2021', description: facebookDesc,isLast:false,),
  Experience(year: '2021', description: ablohDesc,isLast:false,),
  Experience(year: '2021', description: mizdahDesc,isLast:true,),
];

}
