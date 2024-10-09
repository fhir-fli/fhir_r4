import 'package:json_annotation/json_annotation.dart';

/// Actions that can be taken for the collection of specimen from a subject.
enum SpecimenCollectionEnum {
  /// Display: Aspiration - action
  @JsonValue('129316008')
  value129316008,

  /// Display: Biopsy - action
  @JsonValue('129314006')
  value129314006,

  /// Display: Puncture - action
  @JsonValue('129300006')
  value129300006,

  /// Display: Excision - action
  @JsonValue('129304002')
  value129304002,

  /// Display: Scraping - action
  @JsonValue('129323009')
  value129323009,

  /// Display: Urine specimen collection, clean catch
  @JsonValue('73416001')
  value73416001,

  /// Display: Timed urine collection
  @JsonValue('225113003')
  value225113003,

  /// Display: Urine specimen collection, catheterized
  @JsonValue('70777001')
  value70777001,

  /// Display: Collection of coughed sputum
  @JsonValue('386089008')
  value386089008,

  /// Display: Finger-prick sampling
  @JsonValue('278450005')
  value278450005,
  ;

  @override
  String toString() {
    switch (this) {
      case value129316008:
        return '129316008';
      case value129314006:
        return '129314006';
      case value129300006:
        return '129300006';
      case value129304002:
        return '129304002';
      case value129323009:
        return '129323009';
      case value73416001:
        return '73416001';
      case value225113003:
        return '225113003';
      case value70777001:
        return '70777001';
      case value386089008:
        return '386089008';
      case value278450005:
        return '278450005';
    }
  }

  String toJson() => toString();
  static SpecimenCollectionEnum fromString(String str) {
    switch (str) {
      case '129316008':
        return SpecimenCollectionEnum.value129316008;
      case '129314006':
        return SpecimenCollectionEnum.value129314006;
      case '129300006':
        return SpecimenCollectionEnum.value129300006;
      case '129304002':
        return SpecimenCollectionEnum.value129304002;
      case '129323009':
        return SpecimenCollectionEnum.value129323009;
      case '73416001':
        return SpecimenCollectionEnum.value73416001;
      case '225113003':
        return SpecimenCollectionEnum.value225113003;
      case '70777001':
        return SpecimenCollectionEnum.value70777001;
      case '386089008':
        return SpecimenCollectionEnum.value386089008;
      case '278450005':
        return SpecimenCollectionEnum.value278450005;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SpecimenCollectionEnum fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
