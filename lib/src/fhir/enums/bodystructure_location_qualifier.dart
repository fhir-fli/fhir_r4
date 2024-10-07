import 'package:json_annotation/json_annotation.dart';

/// SNOMED-CT concepts modifying the anatomic location
enum BodystructureLocationQualifier {
  /// Display: Unilateral left
  @JsonValue('419161000')
  value419161000,
  /// Display: Unilateral right
  @JsonValue('419465000')
  value419465000,
  /// Display: Bilateral
  @JsonValue('51440002')
  value51440002,
  /// Display: Upper
  @JsonValue('261183002')
  value261183002,
  /// Display: Lower
  @JsonValue('261122009')
  value261122009,
  /// Display: Medial
  @JsonValue('255561001')
  value255561001,
  /// Display: Lateral
  @JsonValue('49370004')
  value49370004,
  /// Display: Superior
  @JsonValue('264217000')
  value264217000,
  /// Display: Inferior
  @JsonValue('261089000')
  value261089000,
  /// Display: Posterior
  @JsonValue('255551008')
  value255551008,
  /// Display: Below
  @JsonValue('351726001')
  value351726001,
  /// Display: Above
  @JsonValue('352730000')
  value352730000,
;

@override
  String toString() {
      switch(this) {
        case value419161000: return '419161000';
        case value419465000: return '419465000';
        case value51440002: return '51440002';
        case value261183002: return '261183002';
        case value261122009: return '261122009';
        case value255561001: return '255561001';
        case value49370004: return '49370004';
        case value264217000: return '264217000';
        case value261089000: return '261089000';
        case value255551008: return '255551008';
        case value351726001: return '351726001';
        case value352730000: return '352730000';
      }
      }
String toJson() => toString();
  BodystructureLocationQualifier fromString(String str) {
    switch(str) {
      case '419161000': return BodystructureLocationQualifier.value419161000;
      case '419465000': return BodystructureLocationQualifier.value419465000;
      case '51440002': return BodystructureLocationQualifier.value51440002;
      case '261183002': return BodystructureLocationQualifier.value261183002;
      case '261122009': return BodystructureLocationQualifier.value261122009;
      case '255561001': return BodystructureLocationQualifier.value255561001;
      case '49370004': return BodystructureLocationQualifier.value49370004;
      case '264217000': return BodystructureLocationQualifier.value264217000;
      case '261089000': return BodystructureLocationQualifier.value261089000;
      case '255551008': return BodystructureLocationQualifier.value255551008;
      case '351726001': return BodystructureLocationQualifier.value351726001;
      case '352730000': return BodystructureLocationQualifier.value352730000;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 BodystructureLocationQualifier fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

