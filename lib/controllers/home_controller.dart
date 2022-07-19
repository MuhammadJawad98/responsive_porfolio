import 'dart:convert';
import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:portfolio/models/projects_model.dart';
import 'package:portfolio/models/skills.dart';
import 'package:portfolio/models/social_media_model.dart';
import 'package:portfolio/models/user_data_model.dart';
import 'package:portfolio/utils/printlogs.dart';

class HomeController extends GetxController {
  final databaseReference = FirebaseDatabase.instance;
  var projectsList = [].obs;
  var projectHighlights = [].obs;
  var skillsList = [].obs;
  var socialMediaUrlList = [].obs;

  UserData? userData;
  var isUserInfoLoading = false.obs;
  var isTagLineLoading = false.obs;
  var isIntroductionSectionLoading = false.obs;
  var isProjectsSectionLoading = false.obs;
  var isProjectHighlightSectionLoading = false.obs;
  var isGetInTOuchTextLoading = false.obs;
  var isSocialMediaLinksLoading = false.obs;
  var isSkillsLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    readProjects();
    readProjectsHighLights();
    readUserInfo();
    readTagLine();
    readIntroductionSection();
    readSkills();
    // readGetInTouchText();
    readSocialMediaLinks();
  }

  void readProjects() {
    isProjectsSectionLoading.value = true;
    try {
      databaseReference
          .ref('Projects')
          .get()
          .then((DataSnapshot snapshot) async {
        print('Data : ${snapshot.value}');

        var list = snapshot.value as List;

        for (int i = 0; i < list.length; i++) {
          var project = Projects.fromJson(list[i]);
          projectsList.add(project);
        }
        log('project length ::: ${projectsList.length}');
        isProjectsSectionLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isProjectsSectionLoading.value = false;
    }
  }

  void readProjectsHighLights() {
    isProjectHighlightSectionLoading.value = true;
    try {
      databaseReference
          .ref('ProjectHightlights')
          .get()
          .then((DataSnapshot snapshot) async {
        print('ProjectHightlights : ${snapshot.value}');

        var list = snapshot.value as List;

        for (int i = 0; i < list.length; i++) {
          var project = Projects.fromJson(list[i]);
          projectHighlights.add(project);
        }
        log('ProjectHightlights length ::: ${projectHighlights.length}');
        isProjectHighlightSectionLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isProjectHighlightSectionLoading.value = false;
    }
  }

  void readUserInfo() {
    isUserInfoLoading.value = true;
    try {
      databaseReference.ref('MyInfo').get().then((DataSnapshot snapshot) async {
        userData = UserData.fromJson(snapshot.value as Map<String,dynamic>);
        PrintLogs.printLog('UserData: ${userData?.toJson()}');
        isUserInfoLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isUserInfoLoading.value = false;
    }
  }

  void readTagLine() {
    isTagLineLoading.value = true;
    try {
      databaseReference
          .ref('TagLine')
          .get()
          .then((DataSnapshot snapshot) async {
        PrintLogs.printLog('readTagLine: ${jsonEncode(snapshot.value)}');
      });
      isTagLineLoading.value = false;
    } catch (e) {
      PrintLogs.printLog('error $e');
      isTagLineLoading.value = false;
    }
  }

  void readIntroductionSection() {
    isIntroductionSectionLoading.value = true;
    try {
      databaseReference
          .ref('Introduction')
          .get()
          .then((DataSnapshot snapshot) async {
        PrintLogs.printLog('readIntroductionSection: ${jsonEncode(snapshot.value)}');
        isIntroductionSectionLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isIntroductionSectionLoading.value = false;
    }
  }

  void readSkills() {
    isSkillsLoading.value = true;
    try {
      databaseReference.ref('skills').get().then((DataSnapshot snapshot) async {
        PrintLogs.printLog('readSkills: ${jsonEncode(snapshot.value)}');
        var list = snapshot.value as List;

        for (int i = 0; i < list.length; i++) {
          var project = Skills.fromJson(list[i]);
          skillsList.add(project);
        }
        isSkillsLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isSkillsLoading.value = false;
    }
  }

  void readGetInTouchText() {
    isGetInTOuchTextLoading.value = true;
    try {
      databaseReference
          .ref('GetInTouchText')
          .get()
          .then((DataSnapshot snapshot) async {
        PrintLogs.printLog('readGetInTouchText: ${jsonEncode(snapshot.value)}');
        isGetInTOuchTextLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isGetInTOuchTextLoading.value = false;
    }
  }

  void readSocialMediaLinks() {
    isSocialMediaLinksLoading.value = true;
    try {
      databaseReference
          .ref('SocialMedia')
          .get()
          .then((DataSnapshot snapshot) async {
        PrintLogs.printLog('readSocialMediaLinks: ${jsonEncode(snapshot.value)}');
        var list = snapshot.value as List;

        for (int i = 0; i < list.length; i++) {
          var project = SocialMediaModel.fromJson(list[i]);
          socialMediaUrlList.add(project);
        }
        log('ProjectHightlights length ::: ${projectHighlights.length}');
        isSocialMediaLinksLoading.value = false;
      });
    } catch (e) {
      PrintLogs.printLog('error $e');
      isSocialMediaLinksLoading.value = false;
    }
  }
}
