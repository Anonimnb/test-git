class ResPaswords {
  String? email;

  ResPaswords({required this.email});

  factory ResPaswords.fromJson(Map<String, dynamic> map) {
    return ResPaswords(
      email: map['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
    };
  }
}
