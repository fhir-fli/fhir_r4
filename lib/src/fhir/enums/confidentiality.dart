import 'package:json_annotation/json_annotation.dart';

/// Set of codes used to value Act.Confidentiality and Role.Confidentiality attribute in accordance with the definition for concept domain "Confidentiality".
enum Confidentiality {
  @JsonValue('L')
  L,
  @JsonValue('M')
  M,
  @JsonValue('N')
  N,
  @JsonValue('R')
  R,
  @JsonValue('U')
  U,
  @JsonValue('V')
  V,
  ;

  @override
  String toString() {
    switch (this) {
      case L:
        return 'L';
      case M:
        return 'M';
      case N:
        return 'N';
      case R:
        return 'R';
      case U:
        return 'U';
      case V:
        return 'V';
    }
  }

  String toJson() => toString();
  Confidentiality fromString(String str) {
    switch (str) {
      case 'L':
        return Confidentiality.L;
      case 'M':
        return Confidentiality.M;
      case 'N':
        return Confidentiality.N;
      case 'R':
        return Confidentiality.R;
      case 'U':
        return Confidentiality.U;
      case 'V':
        return Confidentiality.V;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  Confidentiality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
