// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
class MeasureType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureType._(super.value, [super.element]);

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
      throw ArgumentError('MeasureType cannot be constructed from JSON.');
    }
    return MeasureType._(value, element);
  }

  /// process
  static final MeasureType process = MeasureType._(
    'process',
  );

  /// outcome
  static final MeasureType outcome = MeasureType._(
    'outcome',
  );

  /// structure
  static final MeasureType structure = MeasureType._(
    'structure',
  );

  /// patient_reported_outcome
  static final MeasureType patient_reported_outcome = MeasureType._(
    'patient-reported-outcome',
  );

  /// composite
  static final MeasureType composite = MeasureType._(
    'composite',
  );

  /// For instances where an Element is present but not value

  static final MeasureType elementOnly = MeasureType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureType setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureType withElement(Element? newElement) {
    return MeasureType._(value, newElement);
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
    return MeasureType._(
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
