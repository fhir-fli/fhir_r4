// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Category Codes
class MedicationRequestCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationRequestCategoryCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationRequestCategoryCodes] from JSON.
  factory MedicationRequestCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestCategoryCodes cannot be constructed from JSON.',
      );
    }
    return MedicationRequestCategoryCodes._(value, element: element);
  }

  /// inpatient
  static final MedicationRequestCategoryCodes inpatient =
      MedicationRequestCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  static final MedicationRequestCategoryCodes outpatient =
      MedicationRequestCategoryCodes._(
    'outpatient',
  );

  /// community
  static final MedicationRequestCategoryCodes community =
      MedicationRequestCategoryCodes._(
    'community',
  );

  /// discharge
  static final MedicationRequestCategoryCodes discharge =
      MedicationRequestCategoryCodes._(
    'discharge',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestCategoryCodes elementOnly =
      MedicationRequestCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationRequestCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    discharge,
  ];

  /// Clones the current instance
  @override
  MedicationRequestCategoryCodes clone() => MedicationRequestCategoryCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationRequestCategoryCodes withElement(Element? newElement) {
    return MedicationRequestCategoryCodes._(
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
  MedicationRequestCategoryCodes copyWith({
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
    return MedicationRequestCategoryCodes._(
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
