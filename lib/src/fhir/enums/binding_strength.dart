// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indication of the degree of conformance expectations associated with a binding.
class BindingStrength {
  // Private constructor for internal use (like enum)
  BindingStrength._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BindingStrength values
  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength required_ = BindingStrength._(
    'required',
  );

  /// extensible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength extensible = BindingStrength._(
    'extensible',
  );

  /// preferred
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength preferred = BindingStrength._(
    'preferred',
  );

  /// example
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength example = BindingStrength._(
    'example',
  );

  /// For instances where an Element is present but not value

  static final BindingStrength elementOnly = BindingStrength._('');

  /// List of all enum-like values
  static final List<BindingStrength> values = [
    required_,
    extensible,
    preferred,
    example,
  ];

  /// Returns the enum value with an element attached
  BindingStrength withElement(Element? newElement) {
    return BindingStrength._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BindingStrength] from JSON.
  static BindingStrength fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrength.elementOnly.withElement(element);
    }
    return BindingStrength._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
