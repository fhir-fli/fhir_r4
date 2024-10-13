/// Actions that can be taken for the collection of specimen from a subject.
enum SpecimenCollectionEnum {
  /// Display: Aspiration - action
  value129316008,

  /// Display: Biopsy - action
  value129314006,

  /// Display: Puncture - action
  value129300006,

  /// Display: Excision - action
  value129304002,

  /// Display: Scraping - action
  value129323009,

  /// Display: Urine specimen collection, clean catch
  value73416001,

  /// Display: Timed urine collection
  value225113003,

  /// Display: Urine specimen collection, catheterized
  value70777001,

  /// Display: Collection of coughed sputum
  value386089008,

  /// Display: Finger-prick sampling
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

  /// Returns a [String] from a [SpecimenCollectionEnum] enum.
  String toJson() => toString();

  /// Returns a [SpecimenCollectionEnum] from a [String] enum.
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

  /// Returns a [SpecimenCollectionEnum] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SpecimenCollectionEnum fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
