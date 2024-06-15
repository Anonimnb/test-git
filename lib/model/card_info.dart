class Infos {
  int? count;
  String? next;
  String? previous;
  Results? results;

  Infos({this.count, this.next, this.previous, this.results});

  factory Infos.fromJson(Map<String, dynamic> json) {
    return Infos(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: json['results'] != null ? Results.fromJson(json['results']) : null,
    );
  }
}

class Results {
  int? id;
  String? card;
  String? ownerName;

  Results({this.id, this.card, this.ownerName});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      id: json['id'],
      card: json['card'],
      ownerName: json['owner_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'card': card,
      'owner_name': ownerName,
    };
  }
}
