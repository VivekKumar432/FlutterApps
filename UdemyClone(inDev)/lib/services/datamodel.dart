class Course {
  Course({
    this.courseId,
    this.categoryId,
    this.trainer,
    this.title,
    this.slug,
    this.subTitle,
    this.deion,
    this.prerequisites,
    this.objectives,
    this.targetAudience,
    this.level,
    this.locale,
    this.courseImage,
    this.originalPrice,
    this.costPrice,
    this.totalNumChapters,
    this.createdAt,
    this.lastUpdated,
    this.isFree,
    this.promoAsset,
    this.isPublished,
  });

  String? courseId;
  String? categoryId;
  Trainer? trainer;
  String? title;
  String? slug;
  String? subTitle;
  String? deion;
  List<String>? prerequisites;
  List<String>? objectives;
  List<String>? targetAudience;
  int? level;
  String? locale;
  String? courseImage;
  String? originalPrice;
  int? costPrice;
  int? totalNumChapters;
  DateTime? createdAt;
  DateTime? lastUpdated;
  bool? isFree;
  dynamic? promoAsset;
  bool? isPublished;

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        courseId: json["courseId"],
        categoryId: json["categoryId"],
        trainer: Trainer.fromJson(json["trainer"]),
        title: json["title"] ?? 'N/A',
        slug: json["slug"],
        subTitle: json["subTitle"],
        deion: json["deion"],
        prerequisites: List<String>.from(json["prerequisites"].map((x) => x)),
        objectives: List<String>.from(json["objectives"].map((x) => x)),
        targetAudience: List<String>.from(json["targetAudience"].map((x) => x)),
        level: json["level"],
        locale: json["locale"],
        courseImage: json["courseImage"],
        originalPrice: json["originalPrice"],
        costPrice: json["costPrice"],
        totalNumChapters: json["totalNumChapters"],
        createdAt: DateTime.parse(json["createdAt"]),
        lastUpdated: DateTime.parse(json["lastUpdated"]),
        isFree: json["isFree"],
        promoAsset: json["promoAsset"],
        isPublished: json["isPublished"],
      );

  Map<String, dynamic> toJson() => {
        "courseId": courseId,
        "categoryId": categoryId,
        "trainer": trainer!.toJson(),
        "title": title,
        "slug": slug,
        "subTitle": subTitle,
        "deion": deion,
        "prerequisites": List<dynamic>.from(prerequisites!.map((x) => x)),
        "objectives": List<dynamic>.from(objectives!.map((x) => x)),
        "targetAudience": List<dynamic>.from(targetAudience!.map((x) => x)),
        "level": level,
        "locale": locale,
        "courseImage": courseImage,
        "originalPrice": originalPrice,
        "costPrice": costPrice,
        "totalNumChapters": totalNumChapters,
        "createdAt": createdAt!.toIso8601String(),
        "lastUpdated": lastUpdated!.toIso8601String(),
        "isFree": isFree,
        "promoAsset": promoAsset,
        "isPublished": isPublished,
      };
}

class Trainer {
  Trainer({
    this.fullName,
    this.about,
    this.developmentExperience,
    this.photo,
    this.trainingExperience,
    this.awardsOrAchivements,
    this.headline,
    this.biography,
  });

  String? fullName;
  String? about;
  String? developmentExperience;
  String? photo;
  String? trainingExperience;
  String? awardsOrAchivements;
  String? headline;
  String? biography;

  factory Trainer.fromJson(Map<String, dynamic> json) => Trainer(
        fullName: json["fullName"],
        about: json["about"],
        developmentExperience: json["developmentExperience"],
        photo: json["photo"],
        trainingExperience: json["trainingExperience"],
        awardsOrAchivements: json["awardsOrAchivements"],
        headline: json["headline"],
        biography: json["biography"],
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "about": about,
        "developmentExperience": developmentExperience,
        "photo": photo,
        "trainingExperience": trainingExperience,
        "awardsOrAchivements": awardsOrAchivements,
        "headline": headline,
        "biography": biography,
      };
}
