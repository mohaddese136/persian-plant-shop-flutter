import 'package:intl/intl.dart';

class PersianNumbers {
  int input;
  PersianNumbers(this.input);

  String replace() {
    String result;
    var formatter = NumberFormat('##,000');
    result = formatter.format(input);

    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < english.length; i++) {
      result = result.replaceAll(english[i], farsi[i]);
    }
    return result;
  }
}
