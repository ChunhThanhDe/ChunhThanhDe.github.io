import 'activity_model.dart';

class Education extends Activity {
  Education({
    String? name,
    String? institution,
    String? date,
    String? endDate,
    String? description,
  }) : super(
          name: name,
          institution: institution,
          date: date,
          endDate: endDate,
          description: description,
        );
}
