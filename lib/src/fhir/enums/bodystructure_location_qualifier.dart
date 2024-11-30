// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// SNOMED-CT concepts modifying the anatomic location
class BodystructureLocationQualifier {
  // Private constructor for internal use (like enum)
  BodystructureLocationQualifier._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BodystructureLocationQualifier values
  /// value419161000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value419161000 =
      BodystructureLocationQualifier._(
    '419161000',
  );

  /// value419465000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value419465000 =
      BodystructureLocationQualifier._(
    '419465000',
  );

  /// value51440002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value51440002 =
      BodystructureLocationQualifier._(
    '51440002',
  );

  /// value261183002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value261183002 =
      BodystructureLocationQualifier._(
    '261183002',
  );

  /// value261122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value261122009 =
      BodystructureLocationQualifier._(
    '261122009',
  );

  /// value255561001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value255561001 =
      BodystructureLocationQualifier._(
    '255561001',
  );

  /// value49370004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value49370004 =
      BodystructureLocationQualifier._(
    '49370004',
  );

  /// value264217000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value264217000 =
      BodystructureLocationQualifier._(
    '264217000',
  );

  /// value261089000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value261089000 =
      BodystructureLocationQualifier._(
    '261089000',
  );

  /// value255551008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value255551008 =
      BodystructureLocationQualifier._(
    '255551008',
  );

  /// value351726001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value351726001 =
      BodystructureLocationQualifier._(
    '351726001',
  );

  /// value352730000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value352730000 =
      BodystructureLocationQualifier._(
    '352730000',
  );

  /// For instances where an Element is present but not value

  static final BodystructureLocationQualifier elementOnly =
      BodystructureLocationQualifier._('');

  /// List of all enum-like values
  static final List<BodystructureLocationQualifier> values = [
    value419161000,
    value419465000,
    value51440002,
    value261183002,
    value261122009,
    value255561001,
    value49370004,
    value264217000,
    value261089000,
    value255551008,
    value351726001,
    value352730000,
  ];

  /// Returns the enum value with an element attached
  BodystructureLocationQualifier withElement(Element? newElement) {
    return BodystructureLocationQualifier._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BodystructureLocationQualifier] from JSON.
  static BodystructureLocationQualifier fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BodystructureLocationQualifier.elementOnly.withElement(element);
    }
    return BodystructureLocationQualifier._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
