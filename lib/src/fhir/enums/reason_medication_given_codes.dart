// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust terminology code system that consists of or contains concepts to support the medication process.
class ReasonMedicationGivenCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ReasonMedicationGivenCodes._(super.value, [super.element]);

  /// Factory constructor to create [ReasonMedicationGivenCodes] from JSON.
  factory ReasonMedicationGivenCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReasonMedicationGivenCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ReasonMedicationGivenCodes cannot be constructed from JSON.');
    }
    return ReasonMedicationGivenCodes._(value, element);
  }

  /// a
  static final ReasonMedicationGivenCodes a = ReasonMedicationGivenCodes._(
    'a',
  );

  /// b
  static final ReasonMedicationGivenCodes b = ReasonMedicationGivenCodes._(
    'b',
  );

  /// c
  static final ReasonMedicationGivenCodes c = ReasonMedicationGivenCodes._(
    'c',
  );

  /// For instances where an Element is present but not value

  static final ReasonMedicationGivenCodes elementOnly =
      ReasonMedicationGivenCodes._('');

  /// List of all enum-like values
  static final List<ReasonMedicationGivenCodes> values = [
    a,
    b,
    c,
  ];

  /// Clones the current instance
  @override
  ReasonMedicationGivenCodes clone() => ReasonMedicationGivenCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ReasonMedicationGivenCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ReasonMedicationGivenCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ReasonMedicationGivenCodes withElement(Element? newElement) {
    return ReasonMedicationGivenCodes._(value, newElement);
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
  ReasonMedicationGivenCodes copyWith({
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
    return ReasonMedicationGivenCodes._(
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
