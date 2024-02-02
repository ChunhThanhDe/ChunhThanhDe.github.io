import 'activity_model.dart';

class Extracurricular extends Activity {
  Extracurricular({
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
