// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the method by which a specimen was collected.
class FHIRSpecimenCollectionMethod {
  // Private constructor for internal use (like enum)
  FHIRSpecimenCollectionMethod._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FHIRSpecimenCollectionMethod values
  /// value129316008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value129316008 =
      FHIRSpecimenCollectionMethod._(
    '129316008',
  );

  /// value129314006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value129314006 =
      FHIRSpecimenCollectionMethod._(
    '129314006',
  );

  /// value129300006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value129300006 =
      FHIRSpecimenCollectionMethod._(
    '129300006',
  );

  /// value129304002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value129304002 =
      FHIRSpecimenCollectionMethod._(
    '129304002',
  );

  /// value129323009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value129323009 =
      FHIRSpecimenCollectionMethod._(
    '129323009',
  );

  /// value73416001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value73416001 =
      FHIRSpecimenCollectionMethod._(
    '73416001',
  );

  /// value225113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value225113003 =
      FHIRSpecimenCollectionMethod._(
    '225113003',
  );

  /// value70777001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value70777001 =
      FHIRSpecimenCollectionMethod._(
    '70777001',
  );

  /// value386089008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value386089008 =
      FHIRSpecimenCollectionMethod._(
    '386089008',
  );

  /// value278450005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSpecimenCollectionMethod value278450005 =
      FHIRSpecimenCollectionMethod._(
    '278450005',
  );

  /// For instances where an Element is present but not value

  static final FHIRSpecimenCollectionMethod elementOnly =
      FHIRSpecimenCollectionMethod._('');

  /// List of all enum-like values
  static final List<FHIRSpecimenCollectionMethod> values = [
    value129316008,
    value129314006,
    value129300006,
    value129304002,
    value129323009,
    value73416001,
    value225113003,
    value70777001,
    value386089008,
    value278450005,
  ];

  /// Returns the enum value with an element attached
  FHIRSpecimenCollectionMethod withElement(Element? newElement) {
    return FHIRSpecimenCollectionMethod._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FHIRSpecimenCollectionMethod] from JSON.
  static FHIRSpecimenCollectionMethod fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSpecimenCollectionMethod.elementOnly.withElement(element);
    }
    return FHIRSpecimenCollectionMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
