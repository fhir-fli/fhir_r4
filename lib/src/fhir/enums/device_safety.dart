import 'package:json_annotation/json_annotation.dart';

/// Codes used to identify medical devices safety characteristics. These codes are taken from the [NCI Thesaurus](https://ncit.nci.nih.gov/ncitbrowser/pages/home.jsf) and are provided here as a suggestive example.
enum DeviceSafety {
  /// Display: Magnetic Resonance Conditional
  @JsonValue('C106046')
  C106046,

  /// Display: Magnetic Resonance Safe
  @JsonValue('C106045')
  C106045,

  /// Display: Magnetic Resonance Unsafe
  @JsonValue('C106047')
  C106047,

  /// Display: Labeling does not Contain MRI Safety Information
  @JsonValue('C113844')
  C113844,

  /// Display: Labeled as Containing Natural Rubber Latex
  @JsonValue('C101673')
  C101673,

  /// Display: Not Made with Natural Rubber Latex
  @JsonValue('C106038')
  C106038,
  ;

  @override
  String toString() {
    switch (this) {
      case C106046:
        return 'C106046';
      case C106045:
        return 'C106045';
      case C106047:
        return 'C106047';
      case C113844:
        return 'C113844';
      case C101673:
        return 'C101673';
      case C106038:
        return 'C106038';
    }
  }

  String toJson() => toString();
  DeviceSafety fromString(String str) {
    switch (str) {
      case 'C106046':
        return DeviceSafety.C106046;
      case 'C106045':
        return DeviceSafety.C106045;
      case 'C106047':
        return DeviceSafety.C106047;
      case 'C113844':
        return DeviceSafety.C113844;
      case 'C101673':
        return DeviceSafety.C101673;
      case 'C106038':
        return DeviceSafety.C106038;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  DeviceSafety fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
