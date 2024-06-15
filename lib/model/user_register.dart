class Register {
  String full_name;
  String email;
  String password;

  Register({required this.full_name, required this.email, required this.password});

  factory Register.fromJson(Map<String, dynamic> map) {
    return Register(
      full_name: map['full_name'],
      email: map['email'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'full_name': full_name,
      'email': email,
      'password': password,
    };
  }
}