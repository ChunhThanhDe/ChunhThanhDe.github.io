class Project {
  String? title;
  String? description;
  String? image;
  String? repository;
  List<String>? technologies;

  Project(
      {this.title,
      this.description,
      this.image,
      this.repository,
      this.technologies});

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
    repository = json['repository'];
    technologies = json['technologies'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['repository'] = repository;
    data['technologies'] = technologies;
    return data;
  }
}

const String github = 'https://www.github.com/AlexitoSnow';
const String imagePath = 'assets/images/projects';
