import 'package:flutter/material.dart';
import '../models/work.dart';
import '../utils/constants.dart';

class Experiences with ChangeNotifier {
  List<Work> get workExperience => _workExperience;
  List<Work> _workExperience = [];

  Future<void> fetchWorkData() async {
    try {
      var ref = await adminRef.child('experience').once();
      var data = (ref.snapshot.value as Map);
      print("fetchWorkData " + data.toString());
      List<Work> _loadedWork = [];
      data.forEach((key, workData) {
        if (!workData['is_hidden']) {
          _loadedWork.add(
            Work(
              id: key,
              company: workData['company'],
              position: workData['position'],
              country: workData['country'],
              empType: workData['emp_type'],
              state: workData['state'],
              startDate: workData['start_date'],
              workDone: workData['work_done'].toString().split('#').toList(),
              createdDate: workData['created_at'],
              endDate: workData['end_date'],
              siteUrl: workData['site_url'],
              worksHere: workData['works_here'],
              isHidden: workData['is_hidden'],
            ),
          );
        }
      });
      _workExperience = _loadedWork;
    } catch (e) {
      throw e;
    }
    notifyListeners();
  }

  void triggerAnimation(String id, bool hover) {
    Work bs = _workExperience.firstWhere((element) => element.id == id);
    bs.isHovered = hover;
    notifyListeners();
  }
}
