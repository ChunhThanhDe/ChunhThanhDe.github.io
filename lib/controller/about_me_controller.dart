import '../../generated/translations.g.dart';
import '../models/about_card.dart';

class AboutMeController {
  String get name => texts.about.name;

  String get aboutMe => texts.about.aboutMe;

  AboutCardModel aboutCard(int i) {
    return AboutCardModel(
      content: texts.about.aboutCard[i].content,
      iconPath: texts.about.aboutCard[i].iconPath,
      title: texts.about.aboutCard[i].title,
    );
  }
}
