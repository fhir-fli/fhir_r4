// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
class AllergyIntoleranceCriticality extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AllergyIntoleranceCriticality._(super.value, [super.element]);

  /// Factory constructor to create [AllergyIntoleranceCriticality] from JSON.
  factory AllergyIntoleranceCriticality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly.withElement(element);
    }
    return AllergyIntoleranceCriticality._(value, element);
  }

  /// low
  static final AllergyIntoleranceCriticality low =
      AllergyIntoleranceCriticality._(
    'low',
  );

  /// high
  static final AllergyIntoleranceCriticality high =
      AllergyIntoleranceCriticality._(
    'high',
  );

  /// unable_to_assess
  static final AllergyIntoleranceCriticality unable_to_assess =
      AllergyIntoleranceCriticality._(
    'unable-to-assess',
  );

  /// For instances where an Element is present but not value

  static final AllergyIntoleranceCriticality elementOnly =
      AllergyIntoleranceCriticality._('');

  /// List of all enum-like values
  static final List<AllergyIntoleranceCriticality> values = [
    low,
    high,
    unable_to_assess,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCriticality clone() =>
      AllergyIntoleranceCriticality._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AllergyIntoleranceCriticality setElement(String name, dynamic elementValue) {
    return AllergyIntoleranceCriticality._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality._(value, newElement);
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
  AllergyIntoleranceCriticality copyWith({
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
    return AllergyIntoleranceCriticality._(
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
