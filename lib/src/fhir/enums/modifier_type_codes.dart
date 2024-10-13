/// This value set includes sample Modifier type codes.
enum ModifierTypeCodes {
  /// Display: Repair of prior service or installation
  /// Definition: Repair of prior service or installation.
  a,

  /// Display: Temporary service or installation
  /// Definition: Temporary service or installation.
  b,

  /// Display: TMJ treatment
  /// Definition: Treatment associated with TMJ.
  c,

  /// Display: Implant or associated with an implant
  /// Definition: Implant or associated with an implant.
  e,

  /// Display: Rush or Outside of office hours
  /// Definition: A Rush service or service performed outside of normal office hours.
  rooh,

  /// Display: None
  /// Definition: None.
  x,
  ;

  @override
  String toString() {
    switch (this) {
      case a:
        return 'a';
      case b:
        return 'b';
      case c:
        return 'c';
      case e:
        return 'e';
      case rooh:
        return 'rooh';
      case x:
        return 'x';
    }
  }

  /// Returns a [String] from a [ModifierTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ModifierTypeCodes] from a [String] enum.
  static ModifierTypeCodes fromString(String str) {
    switch (str) {
      case 'a':
        return ModifierTypeCodes.a;
      case 'b':
        return ModifierTypeCodes.b;
      case 'c':
        return ModifierTypeCodes.c;
      case 'e':
        return ModifierTypeCodes.e;
      case 'rooh':
        return ModifierTypeCodes.rooh;
      case 'x':
        return ModifierTypeCodes.x;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ModifierTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ModifierTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
