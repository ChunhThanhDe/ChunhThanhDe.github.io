class Project {
  String _name;
  String _type;
  String _description;
  String _cover;
  String _githubLink;
  String _externalLink;
  String _playstoreLink;
  String _date;
  List<String> _images;
  List<String> _tech;
  bool _isPersonal;

  String get name => _name;
  set name(String value) => _name = value;

  String get type => _type;
  set type(String value) => _type = value;

  String get description => _description;
  set description(String value) => _description = value;

  String get cover => _cover;
  set cover(String value) => _cover = value;

  String get githubLink => _githubLink;
  set githubLink(String value) => _githubLink = value;

  String get externalLink => _externalLink;
  set externalLink(String value) => _externalLink = value;

  String get playstoreLink => _playstoreLink;
  set playstoreLink(String value) => _playstoreLink = value;

  String get date => _date;
  set date(String value) => _date = value;

  List<String> get images => _images;
  set images(List<String> value) => _images = value;

  List<String> get tech => _tech;
  set tech(List<String> value) => _tech = value;

  bool get isPersonal => _isPersonal;
  set isPersonal(bool value) => _isPersonal = value;

  Project({
    required String playstoreLink,
    required String name,
    required String date,
    required String type,
    required String cover,
    required String githubLink,
    required String externalLink,
    required String description,
    required List<String> images,
    required List<String> tech,
    required bool isPersonal,
  })  : _playstoreLink = playstoreLink,
        _name = name,
        _date = date,
        _type = type,
        _cover = cover,
        _githubLink = githubLink,
        _externalLink = externalLink,
        _description = description,
        _images = images,
        _tech = tech,
        _isPersonal = isPersonal;
}