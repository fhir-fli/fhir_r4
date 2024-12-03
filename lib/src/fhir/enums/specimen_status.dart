// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status/availability of a specimen.
class SpecimenStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SpecimenStatus._(super.value, [super.element]);

  /// Factory constructor to create [SpecimenStatus] from JSON.
  factory SpecimenStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus.elementOnly.withElement(element);
    }
    return SpecimenStatus._(value, element);
  }

  /// available
  static final SpecimenStatus available = SpecimenStatus._(
    'available',
  );

  /// unavailable
  static final SpecimenStatus unavailable = SpecimenStatus._(
    'unavailable',
  );

  /// unsatisfactory
  static final SpecimenStatus unsatisfactory = SpecimenStatus._(
    'unsatisfactory',
  );

  /// entered_in_error
  static final SpecimenStatus entered_in_error = SpecimenStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SpecimenStatus elementOnly = SpecimenStatus._('');

  /// List of all enum-like values
  static final List<SpecimenStatus> values = [
    available,
    unavailable,
    unsatisfactory,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SpecimenStatus clone() =>
      SpecimenStatus._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SpecimenStatus setElement(String name, dynamic elementValue) {
    return SpecimenStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus._(value, newElement);
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
  SpecimenStatus copyWith({
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
    return SpecimenStatus._(
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
