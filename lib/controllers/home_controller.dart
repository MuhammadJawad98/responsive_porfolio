import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:portfolio/models/projects_model.dart';

class HomeController extends GetxController {
  final databaseReference = FirebaseDatabase.instance;
  var projectsList = [];
  var projectHighlights = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    readProjects();
    readProjectsHighLights();
  }

  void readProjects() {
    databaseReference.ref('Projects').get().then((DataSnapshot snapshot) async {
      print('Data : ${snapshot.value}');

      var list = snapshot.value as List;

      for (int i = 0; i < list.length; i++) {
        var project = Projects.fromJson(list[i]);
        projectsList.add(project);
      }
      log('project length ::: ${projectsList.length}');
    });
  }

  void readProjectsHighLights() {
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
    });
  }
}
