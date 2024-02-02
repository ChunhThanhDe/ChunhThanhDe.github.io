import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

class Project {
  final String name;
  final String type;
  final String description;
  final String cover;
  final String githubLink;
  final String externalLink;
  final String playstoreLink;
  final String date;
  final List<String> images;
  final List<String> tech;
  final bool isPersonal;

  Project({
    required this.playstoreLink,
    required this.name,
    required this.date,
    required this.type,
    required this.cover,
    required this.githubLink,
    required this.externalLink,
    required this.description,
    required this.images,
    required this.tech,
    required this.isPersonal,
  });
}
