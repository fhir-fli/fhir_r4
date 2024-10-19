// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indication of the degree of conformance expectations associated with a binding.
@collection
class BindingStrength {
  /// Constructor for internal use (like enum)
  BindingStrength({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BindingStrength values
  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength required_ = BindingStrength(
    fhirCode: 'required',
  );

  /// extensible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength extensible = BindingStrength(
    fhirCode: 'extensible',
  );

  /// preferred
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength preferred = BindingStrength(
    fhirCode: 'preferred',
  );

  /// example
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BindingStrength example = BindingStrength(
    fhirCode: 'example',
  );

  /// For instances where an Element is present but not value

  static final BindingStrength elementOnly = BindingStrength();

  /// List of all enum-like values
  static final List<BindingStrength> values = [
    required_,
    extensible,
    preferred,
    example,
  ];

  /// Returns the enum value with an element attached
  BindingStrength withElement(Element? newElement) {
    return BindingStrength(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return BindingStrength.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BindingStrength.$fhirCode';
}
