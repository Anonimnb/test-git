class Result {
  int? count;
  String? next;
  String? previous;
  List<ResultItem>? results;

  Result({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  Result.fromJson(Map<String, dynamic> map)
      : count = map["count"],
        next = map["next"],
        previous = map["previous"],
        results = (map["results"] as List<dynamic>?)
            ?.map((e) => ResultItem.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": results?.map((e) => e.toJson()).toList(),
  };
}

class ResultItem {
  Translate? translate;
  int? order;
  bool? isFree;

  ResultItem({
    required this.translate,
    required this.order,
    required this.isFree,
  });

  ResultItem.fromJson(Map<String, dynamic> map)
      : translate = Translate.fromJson(map["translate"]),
        order = map["order"],
        isFree = map["is_free"];

  Map<String, dynamic> toJson() => {
    "translate": translate?.toJson(),
    "order": order,
    "is_free": isFree,
  };
}

class Translate {
  Translation? ru;
  Translation? uz;

  Translate({required this.ru, required this.uz});

  Translate.fromJson(Map<String, dynamic> map)
      : ru = Translation.fromJson(map["ru"]),
        uz = Translation.fromJson(map["uz"]);

  Map<String, dynamic> toJson() => {
    "ru": ru?.toJson(),
    "uz": uz?.toJson(),
  };
}

class Translation {
  String? title;
  String? context;

  Translation({required this.title, required this.context});

  Translation.fromJson(Map<String, dynamic> map)
      : title = map["title"],
        context = map["context"];

  Map<String, dynamic> toJson() => {
    "title": title,
    "context": context,
  };
}