part of 'family_member_history.dart';

/// The actual or approximate date of birth of the relative.
sealed class BornXFamilyMemberHistoryFamilyMemberHistory {}

/// The actual or approximate date of birth of the relative.
class PeriodBornFamilyMemberHistoryFamilyMemberHistory extends Period
    implements BornXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor for super class
  factory PeriodBornFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodBornFamilyMemberHistoryFamilyMemberHistory;
}

/// The actual or approximate date of birth of the relative.
class DateBornFamilyMemberHistoryFamilyMemberHistory extends FhirDate
    implements BornXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateBornFamilyMemberHistoryFamilyMemberHistory.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateBornFamilyMemberHistoryFamilyMemberHistory;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateBornFamilyMemberHistoryFamilyMemberHistory.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateBornFamilyMemberHistoryFamilyMemberHistory;

  /// Factory constructor for super class
  factory DateBornFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateBornFamilyMemberHistoryFamilyMemberHistory;
}

/// The actual or approximate date of birth of the relative.
class StringBornFamilyMemberHistoryFamilyMemberHistory extends FhirString
    implements BornXFamilyMemberHistoryFamilyMemberHistory {
  /// Constructor for [StringBornFamilyMemberHistoryFamilyMemberHistory]
  StringBornFamilyMemberHistoryFamilyMemberHistory(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringBornFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringBornFamilyMemberHistoryFamilyMemberHistory;
}

/// The age of the relative at the time the family member history is
/// recorded.
sealed class AgeXFamilyMemberHistoryFamilyMemberHistory {}

/// The age of the relative at the time the family member history is
/// recorded.
class AgeAgeFamilyMemberHistoryFamilyMemberHistory extends Age
    implements AgeXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor for super class
  factory AgeAgeFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeAgeFamilyMemberHistoryFamilyMemberHistory;
}

/// The age of the relative at the time the family member history is
/// recorded.
class RangeAgeFamilyMemberHistoryFamilyMemberHistory extends Range
    implements AgeXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor for super class
  factory RangeAgeFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeAgeFamilyMemberHistoryFamilyMemberHistory;
}

/// The age of the relative at the time the family member history is
/// recorded.
class StringAgeFamilyMemberHistoryFamilyMemberHistory extends FhirString
    implements AgeXFamilyMemberHistoryFamilyMemberHistory {
  /// Constructor for [StringAgeFamilyMemberHistoryFamilyMemberHistory]
  StringAgeFamilyMemberHistoryFamilyMemberHistory(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAgeFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringAgeFamilyMemberHistoryFamilyMemberHistory;
}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
sealed class DeceasedXFamilyMemberHistoryFamilyMemberHistory {}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
class BooleanDeceasedFamilyMemberHistoryFamilyMemberHistory extends FhirBoolean
    implements DeceasedXFamilyMemberHistoryFamilyMemberHistory {
  /// Constructor for [BooleanDeceasedFamilyMemberHistoryFamilyMemberHistory]
  BooleanDeceasedFamilyMemberHistoryFamilyMemberHistory(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanDeceasedFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanDeceasedFamilyMemberHistoryFamilyMemberHistory;
}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
class AgeDeceasedFamilyMemberHistoryFamilyMemberHistory extends Age
    implements DeceasedXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor for super class
  factory AgeDeceasedFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeDeceasedFamilyMemberHistoryFamilyMemberHistory;
}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
class RangeDeceasedFamilyMemberHistoryFamilyMemberHistory extends Range
    implements DeceasedXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor for super class
  factory RangeDeceasedFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json)
          as RangeDeceasedFamilyMemberHistoryFamilyMemberHistory;
}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
class DateDeceasedFamilyMemberHistoryFamilyMemberHistory extends FhirDate
    implements DeceasedXFamilyMemberHistoryFamilyMemberHistory {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateDeceasedFamilyMemberHistoryFamilyMemberHistory.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateDeceasedFamilyMemberHistoryFamilyMemberHistory;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateDeceasedFamilyMemberHistoryFamilyMemberHistory.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateDeceasedFamilyMemberHistoryFamilyMemberHistory;

  /// Factory constructor for super class
  factory DateDeceasedFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json)
          as DateDeceasedFamilyMemberHistoryFamilyMemberHistory;
}

/// Deceased flag or the actual or approximate age of the relative at the
/// time of death for the family member history record.
class StringDeceasedFamilyMemberHistoryFamilyMemberHistory extends FhirString
    implements DeceasedXFamilyMemberHistoryFamilyMemberHistory {
  /// Constructor for [StringDeceasedFamilyMemberHistoryFamilyMemberHistory]
  StringDeceasedFamilyMemberHistoryFamilyMemberHistory(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDeceasedFamilyMemberHistoryFamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringDeceasedFamilyMemberHistoryFamilyMemberHistory;
}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
sealed class OnsetXFamilyMemberHistoryCondition {}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
class AgeOnsetFamilyMemberHistoryCondition extends Age
    implements OnsetXFamilyMemberHistoryCondition {
  /// Factory constructor for super class
  factory AgeOnsetFamilyMemberHistoryCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Age.fromJson(json) as AgeOnsetFamilyMemberHistoryCondition;
}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
class RangeOnsetFamilyMemberHistoryCondition extends Range
    implements OnsetXFamilyMemberHistoryCondition {
  /// Factory constructor for super class
  factory RangeOnsetFamilyMemberHistoryCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeOnsetFamilyMemberHistoryCondition;
}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
class PeriodOnsetFamilyMemberHistoryCondition extends Period
    implements OnsetXFamilyMemberHistoryCondition {
  /// Factory constructor for super class
  factory PeriodOnsetFamilyMemberHistoryCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json) as PeriodOnsetFamilyMemberHistoryCondition;
}

/// Either the age of onset, range of approximate age or descriptive string
/// can be recorded. For conditions with multiple occurrences, this
/// describes the first known occurrence.
class StringOnsetFamilyMemberHistoryCondition extends FhirString
    implements OnsetXFamilyMemberHistoryCondition {
  /// Constructor for [StringOnsetFamilyMemberHistoryCondition]
  StringOnsetFamilyMemberHistoryCondition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringOnsetFamilyMemberHistoryCondition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringOnsetFamilyMemberHistoryCondition;
}
