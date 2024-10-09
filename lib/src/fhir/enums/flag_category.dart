/// Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)
enum FlagCategory {
  /// Display: Diet
  /// Definition: Flags related to the subject's dietary needs.
  diet,

  /// Display: Drug
  /// Definition: Flags related to the subject's medications.
  drug,

  /// Display: Lab
  /// Definition: Flags related to performing laboratory tests and related processes (e.g. phlebotomy).
  lab,

  /// Display: Administrative
  /// Definition: Flags related to administrative and financial processes.
  admin,

  /// Display: Subject Contact
  /// Definition: Flags related to coming into contact with the patient.
  contact,

  /// Display: Clinical
  /// Definition: Flags related to the subject's clinical data.
  clinical,

  /// Display: Behavioral
  /// Definition: Flags related to behavior.
  behavioral,

  /// Display: Research
  /// Definition: Flags related to research.
  research,

  /// Display: Advance Directive
  /// Definition: Flags related to subject's advance directives.
  advance_directive,

  /// Display: Safety
  /// Definition: Flags related to safety precautions.
  safety,
  ;

  @override
  String toString() {
    switch (this) {
      case diet:
        return 'diet';
      case drug:
        return 'drug';
      case lab:
        return 'lab';
      case admin:
        return 'admin';
      case contact:
        return 'contact';
      case clinical:
        return 'clinical';
      case behavioral:
        return 'behavioral';
      case research:
        return 'research';
      case advance_directive:
        return 'advance-directive';
      case safety:
        return 'safety';
    }
  }

  String toJson() => toString();
  static FlagCategory fromString(String str) {
    switch (str) {
      case 'diet':
        return FlagCategory.diet;
      case 'drug':
        return FlagCategory.drug;
      case 'lab':
        return FlagCategory.lab;
      case 'admin':
        return FlagCategory.admin;
      case 'contact':
        return FlagCategory.contact;
      case 'clinical':
        return FlagCategory.clinical;
      case 'behavioral':
        return FlagCategory.behavioral;
      case 'research':
        return FlagCategory.research;
      case 'advance-directive':
        return FlagCategory.advance_directive;
      case 'safety':
        return FlagCategory.safety;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static FlagCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
