import 'package:json_annotation/json_annotation.dart';

/// Classification of relationship between a therapy and a contraindication or an indication.
enum TherapyRelationshipType {
  /// Display: Only contraindicated if the other therapy is given
  /// Definition: Only contraindicated if the other therapy is given
  @JsonValue('contraindicated-only-with')
  contraindicated_only_with,

  /// Display: Contraindicated unless the other therapy is given
  /// Definition: Contraindicated unless the other therapy is given
  @JsonValue('contraindicated-except-with')
  contraindicated_except_with,

  /// Display: Indicated only when the other therapy is given (co-occurrent)
  /// Definition: Indicated only when the other therapy is given (co-occurrent)
  @JsonValue('indicated-only-with')
  indicated_only_with,

  /// Display: Indicated except when the other therapy is given
  /// Definition: Indicated except when the other therapy is given
  @JsonValue('indicated-except-with')
  indicated_except_with,

  /// Display: Indicated only if the other therapy is planned to be given afterwards (prep)
  /// Definition: Indicated only if the other therapy is planned to be given afterwards (prep)
  @JsonValue('indicated-only-before')
  indicated_only_before,

  /// Display: Indicated to replace the other therapy
  /// Definition: Indicated to replace the other therapy
  @JsonValue('replace-other-therapy')
  replace_other_therapy,

  /// Display: Indicated to replace the other contraindicated therapy
  /// Definition: Indicated to replace the other contraindicated therapy.
  @JsonValue('replace-other-therapy-contraindicated')
  replace_other_therapy_contraindicated,

  /// Display: Indicated to replace the other therapy not well tolerated by patient
  /// Definition: Indicated to replace the other therapy not well tolerated by patient
  @JsonValue('replace-other-therapy-not-tolerated')
  replace_other_therapy_not_tolerated,

  /// Display: Indicated to replace the other therapy not effective on patient
  /// Definition: Indicated to replace the other therapy not effective on patient
  @JsonValue('replace-other-therapy-not-effective')
  replace_other_therapy_not_effective,
  ;

  @override
  String toString() {
    switch (this) {
      case contraindicated_only_with:
        return 'contraindicated-only-with';
      case contraindicated_except_with:
        return 'contraindicated-except-with';
      case indicated_only_with:
        return 'indicated-only-with';
      case indicated_except_with:
        return 'indicated-except-with';
      case indicated_only_before:
        return 'indicated-only-before';
      case replace_other_therapy:
        return 'replace-other-therapy';
      case replace_other_therapy_contraindicated:
        return 'replace-other-therapy-contraindicated';
      case replace_other_therapy_not_tolerated:
        return 'replace-other-therapy-not-tolerated';
      case replace_other_therapy_not_effective:
        return 'replace-other-therapy-not-effective';
    }
  }

  String toJson() => toString();
  TherapyRelationshipType fromString(String str) {
    switch (str) {
      case 'contraindicated-only-with':
        return TherapyRelationshipType.contraindicated_only_with;
      case 'contraindicated-except-with':
        return TherapyRelationshipType.contraindicated_except_with;
      case 'indicated-only-with':
        return TherapyRelationshipType.indicated_only_with;
      case 'indicated-except-with':
        return TherapyRelationshipType.indicated_except_with;
      case 'indicated-only-before':
        return TherapyRelationshipType.indicated_only_before;
      case 'replace-other-therapy':
        return TherapyRelationshipType.replace_other_therapy;
      case 'replace-other-therapy-contraindicated':
        return TherapyRelationshipType.replace_other_therapy_contraindicated;
      case 'replace-other-therapy-not-tolerated':
        return TherapyRelationshipType.replace_other_therapy_not_tolerated;
      case 'replace-other-therapy-not-effective':
        return TherapyRelationshipType.replace_other_therapy_not_effective;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  TherapyRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
