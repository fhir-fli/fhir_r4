// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a case involved in an application.
class RegulatedAuthorizationCaseType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationCaseType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [RegulatedAuthorizationCaseType] from JSON.
  factory RegulatedAuthorizationCaseType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationCaseType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RegulatedAuthorizationCaseType cannot be constructed from JSON.',
      );
    }
    return RegulatedAuthorizationCaseType._(value: value, element: element);
  }

  /// InitialMAA
  static final RegulatedAuthorizationCaseType InitialMAA =
      RegulatedAuthorizationCaseType._(
    value: 'InitialMAA',
  );

  /// Variation
  static final RegulatedAuthorizationCaseType Variation =
      RegulatedAuthorizationCaseType._(
    value: 'Variation',
  );

  /// LineExtension
  static final RegulatedAuthorizationCaseType LineExtension =
      RegulatedAuthorizationCaseType._(
    value: 'LineExtension',
  );

  /// PSUR
  static final RegulatedAuthorizationCaseType PSUR =
      RegulatedAuthorizationCaseType._(
    value: 'PSUR',
  );

  /// Renewal
  static final RegulatedAuthorizationCaseType Renewal =
      RegulatedAuthorizationCaseType._(
    value: 'Renewal',
  );

  /// Follow_up
  static final RegulatedAuthorizationCaseType Follow_up =
      RegulatedAuthorizationCaseType._(
    value: 'Follow-up',
  );

  /// value100000155699
  static final RegulatedAuthorizationCaseType value100000155699 =
      RegulatedAuthorizationCaseType._(
    value: '100000155699',
  );

  /// AnnualReassessment
  static final RegulatedAuthorizationCaseType AnnualReassessment =
      RegulatedAuthorizationCaseType._(
    value: 'AnnualReassessment',
  );

  /// UrgentSafetyRestriction
  static final RegulatedAuthorizationCaseType UrgentSafetyRestriction =
      RegulatedAuthorizationCaseType._(
    value: 'UrgentSafetyRestriction',
  );

  /// PaediatricSubmission
  static final RegulatedAuthorizationCaseType PaediatricSubmission =
      RegulatedAuthorizationCaseType._(
    value: 'PaediatricSubmission',
  );

  /// TransferMA
  static final RegulatedAuthorizationCaseType TransferMA =
      RegulatedAuthorizationCaseType._(
    value: 'TransferMA',
  );

  /// LiftingSuspension
  static final RegulatedAuthorizationCaseType LiftingSuspension =
      RegulatedAuthorizationCaseType._(
    value: 'LiftingSuspension',
  );

  /// Withdrawal
  static final RegulatedAuthorizationCaseType Withdrawal =
      RegulatedAuthorizationCaseType._(
    value: 'Withdrawal',
  );

  /// Reformatting
  static final RegulatedAuthorizationCaseType Reformatting =
      RegulatedAuthorizationCaseType._(
    value: 'Reformatting',
  );

  /// RMP
  static final RegulatedAuthorizationCaseType RMP =
      RegulatedAuthorizationCaseType._(
    value: 'RMP',
  );

  /// ReviewSuspension
  static final RegulatedAuthorizationCaseType ReviewSuspension =
      RegulatedAuthorizationCaseType._(
    value: 'ReviewSuspension',
  );

  /// SupplementalInformation
  static final RegulatedAuthorizationCaseType SupplementalInformation =
      RegulatedAuthorizationCaseType._(
    value: 'SupplementalInformation',
  );

  /// RepeatUse
  static final RegulatedAuthorizationCaseType RepeatUse =
      RegulatedAuthorizationCaseType._(
    value: 'RepeatUse',
  );

  /// SignalDetection
  static final RegulatedAuthorizationCaseType SignalDetection =
      RegulatedAuthorizationCaseType._(
    value: 'SignalDetection',
  );

  /// FLU
  static final RegulatedAuthorizationCaseType FLU =
      RegulatedAuthorizationCaseType._(
    value: 'FLU',
  );

  /// PANDEMIC
  static final RegulatedAuthorizationCaseType PANDEMIC =
      RegulatedAuthorizationCaseType._(
    value: 'PANDEMIC',
  );

  /// Orphan
  static final RegulatedAuthorizationCaseType Orphan =
      RegulatedAuthorizationCaseType._(
    value: 'Orphan',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationCaseType elementOnly =
      RegulatedAuthorizationCaseType._(value: '');

  /// List of all enum-like values
  static final List<RegulatedAuthorizationCaseType> values = [
    InitialMAA,
    Variation,
    LineExtension,
    PSUR,
    Renewal,
    Follow_up,
    value100000155699,
    AnnualReassessment,
    UrgentSafetyRestriction,
    PaediatricSubmission,
    TransferMA,
    LiftingSuspension,
    Withdrawal,
    Reformatting,
    RMP,
    ReviewSuspension,
    SupplementalInformation,
    RepeatUse,
    SignalDetection,
    FLU,
    PANDEMIC,
    Orphan,
  ];

  /// Clones the current instance
  @override
  RegulatedAuthorizationCaseType clone() => RegulatedAuthorizationCaseType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RegulatedAuthorizationCaseType withElement(Element? newElement) {
    return RegulatedAuthorizationCaseType._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  RegulatedAuthorizationCaseType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RegulatedAuthorizationCaseType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
