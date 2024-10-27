// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept listing the base codes.
class VisionBase {
  // Private constructor for internal use (like enum)
  VisionBase._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// VisionBase values
  /// up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase up = VisionBase._(
    'up',
  );

  /// down
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase down = VisionBase._(
    'down',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase in_ = VisionBase._(
    'in',
  );

  /// out
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase out = VisionBase._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final VisionBase elementOnly = VisionBase._('');

  /// List of all enum-like values
  static final List<VisionBase> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  VisionBase withElement(Element? newElement) {
    return VisionBase._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [VisionBase] from JSON.
  static VisionBase fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly.withElement(element);
    }
    return VisionBase.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
