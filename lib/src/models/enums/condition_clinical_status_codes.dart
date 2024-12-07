// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Clinical Status.
class ConditionClinicalStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionClinicalStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [ConditionClinicalStatusCodes] from JSON.
  factory ConditionClinicalStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionClinicalStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionClinicalStatusCodes cannot be constructed from JSON.',
      );
    }
    return ConditionClinicalStatusCodes._(value, element);
  }

  /// active
  static final ConditionClinicalStatusCodes active =
      ConditionClinicalStatusCodes._(
    'active',
  );

  /// recurrence
  static final ConditionClinicalStatusCodes recurrence =
      ConditionClinicalStatusCodes._(
    'recurrence',
  );

  /// relapse
  static final ConditionClinicalStatusCodes relapse =
      ConditionClinicalStatusCodes._(
    'relapse',
  );

  /// inactive
  static final ConditionClinicalStatusCodes inactive =
      ConditionClinicalStatusCodes._(
    'inactive',
  );

  /// remission
  static final ConditionClinicalStatusCodes remission =
      ConditionClinicalStatusCodes._(
    'remission',
  );

  /// resolved
  static final ConditionClinicalStatusCodes resolved =
      ConditionClinicalStatusCodes._(
    'resolved',
  );

  /// For instances where an Element is present but not value

  static final ConditionClinicalStatusCodes elementOnly =
      ConditionClinicalStatusCodes._('');

  /// List of all enum-like values
  static final List<ConditionClinicalStatusCodes> values = [
    active,
    recurrence,
    relapse,
    inactive,
    remission,
    resolved,
  ];

  /// Clones the current instance
  @override
  ConditionClinicalStatusCodes clone() => ConditionClinicalStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConditionClinicalStatusCodes withElement(Element? newElement) {
    return ConditionClinicalStatusCodes._(value, newElement);
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
  ConditionClinicalStatusCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ConditionClinicalStatusCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
