class Activate {
  String? email;
  int? activate_code;

  Activate({required this.email, required this.activate_code});

  factory Activate.fromJson(Map<String, dynamic> json) {
    return Activate(
      email: json['email'],
      activate_code: json['activate_code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'activate_code': activate_code,
    };
  }
}
