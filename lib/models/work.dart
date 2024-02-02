class Work {
  String? id;
  bool isHidden;
  String company;
  String position;
  String country;
  String empType;
  String state;
  String? siteUrl;
  String startDate;
  String? createdDate;
  List<String> workDone;
  String? endDate;
  bool worksHere;
  bool isHovered;

  Work({
    required this.company,
    required this.position,
    required this.country,
    required this.empType,
    required this.state,
    this.createdDate,
    this.siteUrl,
    required this.startDate,
    required this.workDone,
    this.endDate,
    this.id,
    this.worksHere = false,
    this.isHidden = false,
    this.isHovered = false,
  });
}
