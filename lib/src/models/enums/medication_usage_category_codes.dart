// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Medication Status Codes
class MedicationUsageCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationUsageCategoryCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationUsageCategoryCodes] from JSON.
  factory MedicationUsageCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationUsageCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationUsageCategoryCodes cannot be constructed from JSON.',
      );
    }
    return MedicationUsageCategoryCodes._(value, element: element);
  }

  /// inpatient
  static final MedicationUsageCategoryCodes inpatient =
      MedicationUsageCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  static final MedicationUsageCategoryCodes outpatient =
      MedicationUsageCategoryCodes._(
    'outpatient',
  );

  /// community
  static final MedicationUsageCategoryCodes community =
      MedicationUsageCategoryCodes._(
    'community',
  );

  /// patientspecified
  static final MedicationUsageCategoryCodes patientspecified =
      MedicationUsageCategoryCodes._(
    'patientspecified',
  );

  /// For instances where an Element is present but not value

  static final MedicationUsageCategoryCodes elementOnly =
      MedicationUsageCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationUsageCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    patientspecified,
  ];

  /// Clones the current instance
  @override
  MedicationUsageCategoryCodes clone() => MedicationUsageCategoryCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationUsageCategoryCodes withElement(Element? newElement) {
    return MedicationUsageCategoryCodes._(value, element: newElement);
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
  MedicationUsageCategoryCodes copyWith({
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
    return MedicationUsageCategoryCodes._(
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
