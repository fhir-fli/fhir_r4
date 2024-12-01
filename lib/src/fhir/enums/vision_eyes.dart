// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept listing the eye codes.
class VisionEyes {
  // Private constructor for internal use (like enum)
  VisionEyes._(this.fhirCode, {this.element});

  /// Factory constructor to create [VisionEyes] from JSON.
  factory VisionEyes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionEyes.elementOnly.withElement(element);
    }
    return VisionEyes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// VisionEyes values
  /// right
  static final VisionEyes right = VisionEyes._(
    'right',
  );

  /// left
  static final VisionEyes left = VisionEyes._(
    'left',
  );

  /// For instances where an Element is present but not value

  static final VisionEyes elementOnly = VisionEyes._('');

  /// List of all enum-like values
  static final List<VisionEyes> values = [
    right,
    left,
  ];

  /// Returns the enum value with an element attached
  VisionEyes withElement(Element? newElement) {
    return VisionEyes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
