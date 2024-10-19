// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Common Tag Codes defined by FHIR project
class CommonTags {
  // Private constructor for internal use (like enum)
  CommonTags._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommonTags values
  /// actionable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonTags actionable = CommonTags._(
    'actionable',
  );

  /// For instances where an Element is present but not value

  static final CommonTags elementOnly = CommonTags._('');

  /// List of all enum-like values
  static final List<CommonTags> values = [
    actionable,
  ];

  /// Returns the enum value with an element attached
  CommonTags withElement(Element? newElement) {
    return CommonTags._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommonTags] from JSON.
  static CommonTags fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonTags.elementOnly.withElement(element);
    }
    return CommonTags.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonTags.$fhirCode';
}
