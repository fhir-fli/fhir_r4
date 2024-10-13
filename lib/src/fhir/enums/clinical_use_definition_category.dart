/// A categorisation for a clinical use information item.
enum ClinicalUseDefinitionCategory {
  /// Display: Pregnancy and Lactation
  Pregnancy,

  /// Display: Overdose
  Overdose,

  /// Display: Effects on Ability to Drive and Use Machines
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

  /// Returns a [String] from a [ClinicalUseDefinitionCategory] enum.
  String toJson() => toString();

  /// Returns a [ClinicalUseDefinitionCategory] from a [String] enum.
  static ClinicalUseDefinitionCategory fromString(String str) {
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

  /// Returns a [ClinicalUseDefinitionCategory] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ClinicalUseDefinitionCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
