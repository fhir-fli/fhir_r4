// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The verification status to support or decline the clinical status of the condition or diagnosis.
class ConditionVerificationStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionVerificationStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConditionVerificationStatus] from JSON.
  factory ConditionVerificationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionVerificationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionVerificationStatus cannot be constructed from JSON.',
      );
    }
    return ConditionVerificationStatus._(value, element: element);
  }

  /// unconfirmed
  static final ConditionVerificationStatus unconfirmed =
      ConditionVerificationStatus._(
    'unconfirmed',
  );

  /// provisional
  static final ConditionVerificationStatus provisional =
      ConditionVerificationStatus._(
    'provisional',
  );

  /// differential
  static final ConditionVerificationStatus differential =
      ConditionVerificationStatus._(
    'differential',
  );

  /// confirmed
  static final ConditionVerificationStatus confirmed =
      ConditionVerificationStatus._(
    'confirmed',
  );

  /// refuted
  static final ConditionVerificationStatus refuted =
      ConditionVerificationStatus._(
    'refuted',
  );

  /// entered_in_error
  static final ConditionVerificationStatus entered_in_error =
      ConditionVerificationStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ConditionVerificationStatus elementOnly =
      ConditionVerificationStatus._('');

  /// List of all enum-like values
  static final List<ConditionVerificationStatus> values = [
    unconfirmed,
    provisional,
    differential,
    confirmed,
    refuted,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ConditionVerificationStatus clone() => ConditionVerificationStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConditionVerificationStatus withElement(Element? newElement) {
    return ConditionVerificationStatus._(value, element: newElement);
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
  ConditionVerificationStatus copyWith({
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
    return ConditionVerificationStatus._(
      newValue ?? value,
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
