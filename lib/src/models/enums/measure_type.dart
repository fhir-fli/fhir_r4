// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
class MeasureType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MeasureType] from JSON.
  factory MeasureType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureType cannot be constructed from JSON.',
      );
    }
    return MeasureType._(value: value, element: element);
  }

  /// process
  static final MeasureType process = MeasureType._(
    value: 'process',
  );

  /// outcome
  static final MeasureType outcome = MeasureType._(
    value: 'outcome',
  );

  /// structure
  static final MeasureType structure = MeasureType._(
    value: 'structure',
  );

  /// patient_reported_outcome
  static final MeasureType patient_reported_outcome = MeasureType._(
    value: 'patient-reported-outcome',
  );

  /// composite
  static final MeasureType composite = MeasureType._(
    value: 'composite',
  );

  /// For instances where an Element is present but not value

  static final MeasureType elementOnly = MeasureType._(value: '');

  /// List of all enum-like values
  static final List<MeasureType> values = [
    process,
    outcome,
    structure,
    patient_reported_outcome,
    composite,
  ];

  /// Clones the current instance
  @override
  MeasureType clone() => MeasureType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureType withElement(Element? newElement) {
    return MeasureType._(value: value, element: newElement);
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
  MeasureType copyWith({
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
    return MeasureType._(
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
