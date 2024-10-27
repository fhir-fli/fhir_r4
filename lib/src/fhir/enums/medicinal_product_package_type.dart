// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of medicinal product packs
class MedicinalProductPackageType {
  // Private constructor for internal use (like enum)
  MedicinalProductPackageType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicinalProductPackageType values
  /// value100000073490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073490 =
      MedicinalProductPackageType._(
    '100000073490',
  );

  /// value100000073491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073491 =
      MedicinalProductPackageType._(
    '100000073491',
  );

  /// value100000073492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073492 =
      MedicinalProductPackageType._(
    '100000073492',
  );

  /// value100000073493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073493 =
      MedicinalProductPackageType._(
    '100000073493',
  );

  /// value100000073494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073494 =
      MedicinalProductPackageType._(
    '100000073494',
  );

  /// value100000073495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073495 =
      MedicinalProductPackageType._(
    '100000073495',
  );

  /// value100000073496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073496 =
      MedicinalProductPackageType._(
    '100000073496',
  );

  /// value100000073497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073497 =
      MedicinalProductPackageType._(
    '100000073497',
  );

  /// value100000073498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073498 =
      MedicinalProductPackageType._(
    '100000073498',
  );

  /// value100000073547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073547 =
      MedicinalProductPackageType._(
    '100000073547',
  );

  /// value100000073563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000073563 =
      MedicinalProductPackageType._(
    '100000073563',
  );

  /// value100000143555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicinalProductPackageType value100000143555 =
      MedicinalProductPackageType._(
    '100000143555',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductPackageType elementOnly =
      MedicinalProductPackageType._('');

  /// List of all enum-like values
  static final List<MedicinalProductPackageType> values = [
    value100000073490,
    value100000073491,
    value100000073492,
    value100000073493,
    value100000073494,
    value100000073495,
    value100000073496,
    value100000073497,
    value100000073498,
    value100000073547,
    value100000073563,
    value100000143555,
  ];

  /// Returns the enum value with an element attached
  MedicinalProductPackageType withElement(Element? newElement) {
    return MedicinalProductPackageType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicinalProductPackageType] from JSON.
  static MedicinalProductPackageType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductPackageType.elementOnly.withElement(element);
    }
    return MedicinalProductPackageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
