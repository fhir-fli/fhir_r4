// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a case involved in an application.
class RegulatedAuthorizationCaseType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationCaseType._(super.value, [super.element]);

  /// Factory constructor to create [RegulatedAuthorizationCaseType] from JSON.
  factory RegulatedAuthorizationCaseType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationCaseType.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationCaseType._(value, element);
  }

  /// InitialMAA
  static final RegulatedAuthorizationCaseType InitialMAA =
      RegulatedAuthorizationCaseType._(
    'InitialMAA',
  );

  /// Variation
  static final RegulatedAuthorizationCaseType Variation =
      RegulatedAuthorizationCaseType._(
    'Variation',
  );

  /// LineExtension
  static final RegulatedAuthorizationCaseType LineExtension =
      RegulatedAuthorizationCaseType._(
    'LineExtension',
  );

  /// PSUR
  static final RegulatedAuthorizationCaseType PSUR =
      RegulatedAuthorizationCaseType._(
    'PSUR',
  );

  /// Renewal
  static final RegulatedAuthorizationCaseType Renewal =
      RegulatedAuthorizationCaseType._(
    'Renewal',
  );

  /// Follow_up
  static final RegulatedAuthorizationCaseType Follow_up =
      RegulatedAuthorizationCaseType._(
    'Follow-up',
  );

  /// value100000155699
  static final RegulatedAuthorizationCaseType value100000155699 =
      RegulatedAuthorizationCaseType._(
    '100000155699',
  );

  /// AnnualReassessment
  static final RegulatedAuthorizationCaseType AnnualReassessment =
      RegulatedAuthorizationCaseType._(
    'AnnualReassessment',
  );

  /// UrgentSafetyRestriction
  static final RegulatedAuthorizationCaseType UrgentSafetyRestriction =
      RegulatedAuthorizationCaseType._(
    'UrgentSafetyRestriction',
  );

  /// PaediatricSubmission
  static final RegulatedAuthorizationCaseType PaediatricSubmission =
      RegulatedAuthorizationCaseType._(
    'PaediatricSubmission',
  );

  /// TransferMA
  static final RegulatedAuthorizationCaseType TransferMA =
      RegulatedAuthorizationCaseType._(
    'TransferMA',
  );

  /// LiftingSuspension
  static final RegulatedAuthorizationCaseType LiftingSuspension =
      RegulatedAuthorizationCaseType._(
    'LiftingSuspension',
  );

  /// Withdrawal
  static final RegulatedAuthorizationCaseType Withdrawal =
      RegulatedAuthorizationCaseType._(
    'Withdrawal',
  );

  /// Reformatting
  static final RegulatedAuthorizationCaseType Reformatting =
      RegulatedAuthorizationCaseType._(
    'Reformatting',
  );

  /// RMP
  static final RegulatedAuthorizationCaseType RMP =
      RegulatedAuthorizationCaseType._(
    'RMP',
  );

  /// ReviewSuspension
  static final RegulatedAuthorizationCaseType ReviewSuspension =
      RegulatedAuthorizationCaseType._(
    'ReviewSuspension',
  );

  /// SupplementalInformation
  static final RegulatedAuthorizationCaseType SupplementalInformation =
      RegulatedAuthorizationCaseType._(
    'SupplementalInformation',
  );

  /// RepeatUse
  static final RegulatedAuthorizationCaseType RepeatUse =
      RegulatedAuthorizationCaseType._(
    'RepeatUse',
  );

  /// SignalDetection
  static final RegulatedAuthorizationCaseType SignalDetection =
      RegulatedAuthorizationCaseType._(
    'SignalDetection',
  );

  /// FLU
  static final RegulatedAuthorizationCaseType FLU =
      RegulatedAuthorizationCaseType._(
    'FLU',
  );

  /// PANDEMIC
  static final RegulatedAuthorizationCaseType PANDEMIC =
      RegulatedAuthorizationCaseType._(
    'PANDEMIC',
  );

  /// Orphan
  static final RegulatedAuthorizationCaseType Orphan =
      RegulatedAuthorizationCaseType._(
    'Orphan',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationCaseType elementOnly =
      RegulatedAuthorizationCaseType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  RegulatedAuthorizationCaseType setElement(
    String name,
    dynamic elementValue,
  ) {
    return RegulatedAuthorizationCaseType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  RegulatedAuthorizationCaseType withElement(Element? newElement) {
    return RegulatedAuthorizationCaseType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RegulatedAuthorizationCaseType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
