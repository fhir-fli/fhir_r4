import 'package:json_annotation/json_annotation.dart';

/// A categorisation for a clinical use information item.
enum ClinicalUseDefinitionCategory {
  /// Display: Pregnancy and Lactation
  @JsonValue('Pregnancy')
  Pregnancy,

  /// Display: Overdose
  @JsonValue('Overdose')
  Overdose,

  /// Display: Effects on Ability to Drive and Use Machines
  @JsonValue('DriveAndMachines')
  DriveAndMachines,
  ;

  @override
  String toString() {
    switch (this) {
      case Pregnancy:
        return 'Pregnancy';
      case Overdose:
        return 'Overdose';
      case DriveAndMachines:
        return 'DriveAndMachines';
    }
  }

  String toJson() => toString();
  ClinicalUseDefinitionCategory fromString(String str) {
    switch (str) {
      case 'Pregnancy':
        return ClinicalUseDefinitionCategory.Pregnancy;
      case 'Overdose':
        return ClinicalUseDefinitionCategory.Overdose;
      case 'DriveAndMachines':
        return ClinicalUseDefinitionCategory.DriveAndMachines;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ClinicalUseDefinitionCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
