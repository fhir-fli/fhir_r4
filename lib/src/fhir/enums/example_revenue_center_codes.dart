/// This value set includes sample Revenue Center codes.
enum ExampleRevenueCenterCodes {
  /// Display: Anaesthesia
  /// Definition: Anaesthesia.
  value0370,

  /// Display: Physical Therapy
  /// Definition: Physical Therapy.
  value0420,

  /// Display: Physical Therapy -
  /// Definition: Physical Therapy - visit charge.
  value0421,

  /// Display: Speech-Language Pathology
  /// Definition: Speech-Language Pathology.
  value0440,

  /// Display: Speech-Language Pathology - Visit
  /// Definition: Speech-Language Pathology- visit charge
  value0441,

  /// Display: Emergency Room
  /// Definition: Emergency Room
  value0450,

  /// Display: Emergency Room - EM/EMTALA
  /// Definition: Emergency Room - EM/EMTALA
  value0451,

  /// Display: Emergency Room - beyond EMTALA
  /// Definition: Emergency Room - beyond EMTALA
  value0452,

  /// Display: Vision Clinic
  /// Definition: Vision Clinic
  value0010,
  ;

  @override
  String toString() {
    switch (this) {
      case value0370:
        return '0370';
      case value0420:
        return '0420';
      case value0421:
        return '0421';
      case value0440:
        return '0440';
      case value0441:
        return '0441';
      case value0450:
        return '0450';
      case value0451:
        return '0451';
      case value0452:
        return '0452';
      case value0010:
        return '0010';
    }
  }

  String toJson() => toString();
  static ExampleRevenueCenterCodes fromString(String str) {
    switch (str) {
      case '0370':
        return ExampleRevenueCenterCodes.value0370;
      case '0420':
        return ExampleRevenueCenterCodes.value0420;
      case '0421':
        return ExampleRevenueCenterCodes.value0421;
      case '0440':
        return ExampleRevenueCenterCodes.value0440;
      case '0441':
        return ExampleRevenueCenterCodes.value0441;
      case '0450':
        return ExampleRevenueCenterCodes.value0450;
      case '0451':
        return ExampleRevenueCenterCodes.value0451;
      case '0452':
        return ExampleRevenueCenterCodes.value0452;
      case '0010':
        return ExampleRevenueCenterCodes.value0010;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ExampleRevenueCenterCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
