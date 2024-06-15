
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

class HiveService {
  static var myBox = Hive.box("email");

  static Future<void> storeInfo({required email}) async {
    myBox.put("email", email);
    Logger().i("EMAIL MUVOFAQYATLI SAQLANDI");
  }

  static String? getInfo({required String emailKey}) {
    var email = myBox.get(emailKey);
    Logger().i("MALUMOTLAR GET QILINDI: $email");
    return email;
  }
}
