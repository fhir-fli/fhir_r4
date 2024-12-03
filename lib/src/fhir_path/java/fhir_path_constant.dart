// ignore_for_file: public_member_api_docs

class FHIRPathConstant {
  static bool isFHIRPathConstant(String string) {
    return string.isNotEmpty &&
        (string[0] == "'" ||
            string[0] == '"' ||
            string[0] == '@' ||
            string[0] == '%' ||
            string[0] == '-' ||
            string[0] == '+' ||
            (string[0].compareTo('0') >= 0 && string[0].compareTo('9') <= 0) ||
            string == 'true' ||
            string == 'false' ||
            string == '{}');
  }

  static bool isFHIRPathFixedName(String string) {
    return string.isNotEmpty && (string[0] == '`');
  }

  static bool isFHIRPathStringConstant(String string) {
    return string[0] == "'" || string[0] == '"' || string[0] == '`';
  }
}
