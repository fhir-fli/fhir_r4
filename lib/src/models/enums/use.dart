// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
class Use extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Use._(super.value, [super.element]);

  /// Factory constructor to create [Use] from JSON.
  factory Use.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Use cannot be constructed from JSON.',
      );
    }
    return Use._(value, element);
  }

  /// claim
  static final Use claim = Use._(
    'claim',
  );

  /// preauthorization
  static final Use preauthorization = Use._(
    'preauthorization',
  );

  /// predetermination
  static final Use predetermination = Use._(
    'predetermination',
  );

  /// For instances where an Element is present but not value

  static final Use elementOnly = Use._('');

  /// List of all enum-like values
  static final List<Use> values = [
    claim,
    preauthorization,
    predetermination,
  ];

  /// Clones the current instance
  @override
  Use clone() => Use._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  Use setElement(
    String name,
    dynamic elementValue,
  ) {
    return Use._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  Use withElement(Element? newElement) {
    return Use._(value, newElement);
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
  Use copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return Use._(
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
