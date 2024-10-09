import 'package:json_annotation/json_annotation.dart';

/// This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
enum ParticipantType {
  @JsonValue('SPRF')
  SPRF,
  @JsonValue('PPRF')
  PPRF,
  @JsonValue('PART')
  PART,

  /// Display: Translator
  /// Definition: A translator who is facilitating communication with the patient during the encounter.
  @JsonValue('translator')
  translator,

  /// Display: Emergency
  /// Definition: A person to be contacted in case of an emergency during the encounter.
  @JsonValue('emergency')
  emergency,
  ;

  @override
  String toString() {
    switch (this) {
      case SPRF:
        return 'SPRF';
      case PPRF:
        return 'PPRF';
      case PART:
        return 'PART';
      case translator:
        return 'translator';
      case emergency:
        return 'emergency';
    }
  }

  String toJson() => toString();
  static ParticipantType fromString(String str) {
    switch (str) {
      case 'SPRF':
        return ParticipantType.SPRF;
      case 'PPRF':
        return ParticipantType.PPRF;
      case 'PART':
        return ParticipantType.PART;
      case 'translator':
        return ParticipantType.translator;
      case 'emergency':
        return ParticipantType.emergency;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ParticipantType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
