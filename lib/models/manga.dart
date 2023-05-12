import 'dart:convert';

class Manga {
  List<Chapter> chapters;
  String date;
  String imageUrl;
  String title;
  String url;
  String viewers;

  Manga({
    required this.chapters,
    required this.date,
    required this.imageUrl,
    required this.title,
    required this.url,
    required this.viewers,
  });

  factory Manga.fromRawJson(String str) => Manga.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Manga.fromJson(Map<String, dynamic> json) => Manga(
        chapters: List<Chapter>.from(json["chapters"]
            .map((x) => Chapter.fromJson(Map<String, dynamic>.from(x)))),
        date: json["date"],
        imageUrl: json["image_url"],
        title: json["title"],
        url: json["url"],
        viewers: json["viewers"],
      );

  Map<String, dynamic> toJson() => {
        "chapters": List<dynamic>.from(chapters.map((x) => x.toJson())),
        "date": date,
        "image_url": imageUrl,
        "title": title,
        "url": url,
        "viewers": viewers,
      };
}

class Chapter {
  String chapDate;
  List<String> chapImages;
  String chapViewers;
  String title;
  String url;

  Chapter({
    required this.chapDate,
    required this.chapImages,
    required this.chapViewers,
    required this.title,
    required this.url,
  });

  factory Chapter.fromRawJson(String str) => Chapter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        chapDate: json["chap_date"],
        chapImages: List<String>.from(json["chap_images"].map((x) => x)),
        chapViewers: json["chap_viewers"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "chap_date": chapDate,
        "chap_images": List<dynamic>.from(chapImages.map((x) => x)),
        "chap_viewers": chapViewers,
        "title": title,
        "url": url,
      };
}
