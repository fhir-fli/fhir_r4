// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes SNOMED CT codes for materials that specimen containers are made of
class ContainerMaterials {
  // Private constructor for internal use (like enum)
  ContainerMaterials._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContainerMaterials values
  /// value32039001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerMaterials value32039001 = ContainerMaterials._(
    '32039001',
  );

  /// value61088005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerMaterials value61088005 = ContainerMaterials._(
    '61088005',
  );

  /// value425620007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerMaterials value425620007 = ContainerMaterials._(
    '425620007',
  );

  /// For instances where an Element is present but not value

  static final ContainerMaterials elementOnly = ContainerMaterials._('');

  /// List of all enum-like values
  static final List<ContainerMaterials> values = [
    value32039001,
    value61088005,
    value425620007,
  ];

  /// Returns the enum value with an element attached
  ContainerMaterials withElement(Element? newElement) {
    return ContainerMaterials._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContainerMaterials] from JSON.
  static ContainerMaterials fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerMaterials.elementOnly.withElement(element);
    }
    return ContainerMaterials.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
