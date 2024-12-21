// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Category Codes
class MedicationDispenseCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationDispenseCategoryCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationDispenseCategoryCodes] from JSON.
  factory MedicationDispenseCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseCategoryCodes cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseCategoryCodes._(value, element: element);
  }

  /// inpatient
  static final MedicationDispenseCategoryCodes inpatient =
      MedicationDispenseCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  static final MedicationDispenseCategoryCodes outpatient =
      MedicationDispenseCategoryCodes._(
    'outpatient',
  );

  /// community
  static final MedicationDispenseCategoryCodes community =
      MedicationDispenseCategoryCodes._(
    'community',
  );

  /// discharge
  static final MedicationDispenseCategoryCodes discharge =
      MedicationDispenseCategoryCodes._(
    'discharge',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseCategoryCodes elementOnly =
      MedicationDispenseCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationDispenseCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    discharge,
  ];

  /// Clones the current instance
  @override
  MedicationDispenseCategoryCodes clone() => MedicationDispenseCategoryCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationDispenseCategoryCodes withElement(Element? newElement) {
    return MedicationDispenseCategoryCodes._(
      value,
      element: newElement,
    );
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
  MedicationDispenseCategoryCodes copyWith({
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
    return MedicationDispenseCategoryCodes._(
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
