class Work {
  String? _id;
  String _company;
  String _position;
  String _country;
  String _empType;
  String _state;
  String? _siteUrl;
  String _startDate;
  String? _createdDate;
  List<String> _workDone;
  String? _endDate;
  bool _worksHere;
  bool _isHovered;

  String? get id => _id;
  set id(String? value) => _id = value;

  String get company => _company;
  set company(String value) => _company = value;

  String get position => _position;
  set position(String value) => _position = value;

  String get country => _country;
  set country(String value) => _country = value;

  String get empType => _empType;
  set empType(String value) => _empType = value;

  String get state => _state;
  set state(String value) => _state = value;

  String? get siteUrl => _siteUrl;
  set siteUrl(String? value) => _siteUrl = value;

  String get startDate => _startDate;
  set startDate(String value) => _startDate = value;

  String? get createdDate => _createdDate;
  set createdDate(String? value) => _createdDate = value;

  List<String> get workDone => _workDone;
  set workDone(List<String> value) => _workDone = value;

  String? get endDate => _endDate;
  set endDate(String? value) => _endDate = value;

  bool get worksHere => _worksHere;
  set worksHere(bool value) => _worksHere = value;

  bool get isHovered => _isHovered;
  set isHovered(bool value) => _isHovered = value;

  Work({
    required String company,
    required String position,
    required String country,
    required String empType,
    required String state,
    String? createdDate,
    String? siteUrl,
    required String startDate,
    required List<String> workDone,
    String? endDate,
    String? id,
    bool worksHere = false,
    bool isHovered = false,
  }) : _company = company,
        _position = position,
        _country = country,
        _empType = empType,
        _state = state,
        _createdDate = createdDate,
        _siteUrl = siteUrl,
        _startDate = startDate,
        _workDone = workDone,
        _endDate = endDate,
        _id = id,
        _worksHere = worksHere,
        _isHovered = isHovered;
}
