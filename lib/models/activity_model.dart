class Activity {
  String? name;
  String? institution;
  String? date;
  String? endDate;
  String? description;

  Activity({
    this.name,
    this.institution,
    this.date,
    this.endDate,
    this.description,
  });

  Activity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    institution = json['institution'];
    date = json['start_date'];
    endDate = json['end_date'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['institution'] = institution;
    data['start_date'] = date;
    data['end_date'] = endDate;
    data['description'] = description;
    return data;
  }
}
