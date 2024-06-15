class ResPasword {
  String email;
  String activation_code;
  String new_password;
  String confirm_password;

  ResPasword({
    required this.email,
    required this.activation_code,
    required this.new_password,
    required this.confirm_password,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'activation_code': activation_code,
      'new_password': new_password,
      'confirm_password': confirm_password,
    };
  }
}