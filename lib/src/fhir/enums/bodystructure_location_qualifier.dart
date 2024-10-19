// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// SNOMED-CT concepts modifying the anatomic location
@collection
class BodystructureLocationQualifier {
  /// Constructor for internal use (like enum)
  BodystructureLocationQualifier({this.fhirCode, this.element})
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

  /// BodystructureLocationQualifier values
  /// value419161000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value419161000 =
      BodystructureLocationQualifier(
    fhirCode: '419161000',
  );

  /// value419465000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value419465000 =
      BodystructureLocationQualifier(
    fhirCode: '419465000',
  );

  /// value51440002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value51440002 =
      BodystructureLocationQualifier(
    fhirCode: '51440002',
  );

  /// value261183002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value261183002 =
      BodystructureLocationQualifier(
    fhirCode: '261183002',
  );

  /// value261122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value261122009 =
      BodystructureLocationQualifier(
    fhirCode: '261122009',
  );

  /// value255561001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value255561001 =
      BodystructureLocationQualifier(
    fhirCode: '255561001',
  );

  /// value49370004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value49370004 =
      BodystructureLocationQualifier(
    fhirCode: '49370004',
  );

  /// value264217000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value264217000 =
      BodystructureLocationQualifier(
    fhirCode: '264217000',
  );

  /// value261089000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value261089000 =
      BodystructureLocationQualifier(
    fhirCode: '261089000',
  );

  /// value255551008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value255551008 =
      BodystructureLocationQualifier(
    fhirCode: '255551008',
  );

  /// value351726001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value351726001 =
      BodystructureLocationQualifier(
    fhirCode: '351726001',
  );

  /// value352730000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BodystructureLocationQualifier value352730000 =
      BodystructureLocationQualifier(
    fhirCode: '352730000',
  );

  /// For instances where an Element is present but not value

  static final BodystructureLocationQualifier elementOnly =
      BodystructureLocationQualifier();

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
    return BodystructureLocationQualifier(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return BodystructureLocationQualifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BodystructureLocationQualifier.$fhirCode';
}
