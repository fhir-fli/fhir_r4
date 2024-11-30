// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the production.
class StructureMapTargetListMode {
  // Private constructor for internal use (like enum)
  StructureMapTargetListMode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapTargetListMode values
  /// first
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTargetListMode first = StructureMapTargetListMode._(
    'first',
  );

  /// share
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTargetListMode share = StructureMapTargetListMode._(
    'share',
  );

  /// last
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTargetListMode last = StructureMapTargetListMode._(
    'last',
  );

  /// collate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTargetListMode collate =
      StructureMapTargetListMode._(
    'collate',
  );

  /// For instances where an Element is present but not value

  static final StructureMapTargetListMode elementOnly =
      StructureMapTargetListMode._('');

  /// List of all enum-like values
  static final List<StructureMapTargetListMode> values = [
    first,
    share,
    last,
    collate,
  ];

  /// Returns the enum value with an element attached
  StructureMapTargetListMode withElement(Element? newElement) {
    return StructureMapTargetListMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapTargetListMode] from JSON.
  static StructureMapTargetListMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListMode.elementOnly.withElement(element);
    }
    return StructureMapTargetListMode._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
