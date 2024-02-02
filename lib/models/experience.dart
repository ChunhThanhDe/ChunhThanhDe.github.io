class Experience {
  int id;
  String title;
  String workPlace;
  String duration;
  String location;
  String type;
  String? url;
  List<String> workDone;
  bool isHovered;

  Experience({
    required this.id,
    required this.title,
    required this.workPlace,
    required this.type,
    required this.workDone,
    required this.url,
    required this.location,
    required this.duration,
    this.isHovered = false,
  });
}
