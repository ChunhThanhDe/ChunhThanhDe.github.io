import '../../generated/translations.g.dart';

class AboutMeController {
  String get name => texts.about.name;

  String get aboutMe => texts.about.aboutMe;

  AboutCardModel aboutCard(int i) {
    return AboutCardModel(
      content: texts.about.aboutCard2[i].content,
      iconPath: texts.about.aboutCard2[i].iconPath,
      title: texts.about.aboutCard2[i].title,
    );
  }
}

class AboutCardModel {
  final String content;
  final String iconPath;
  final String title;

  AboutCardModel({
    required this.content,
    required this.iconPath,
    required this.title,
  });

  factory AboutCardModel.fromJson(Map<String, dynamic> json) {
    return AboutCardModel(
      content: json['content'],
      iconPath: json['iconPath'],
      title: json['title'],
    );
  }
}
