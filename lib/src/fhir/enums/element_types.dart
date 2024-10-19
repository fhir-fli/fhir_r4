// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Allowed types for FHIR elements
@collection
class ElementTypes {
  /// Constructor for internal use (like enum)
  ElementTypes({this.fhirCode, this.element})
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

  /// ElementTypes values
  /// http___hl7_org_fhirpath_System_String
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_String =
      ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.String',
  );

  /// http___hl7_org_fhirpath_System_Boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Boolean =
      ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.Boolean',
  );

  /// http___hl7_org_fhirpath_System_Date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Date = ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.Date',
  );

  /// http___hl7_org_fhirpath_System_DateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_DateTime =
      ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.DateTime',
  );

  /// http___hl7_org_fhirpath_System_Decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Decimal =
      ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.Decimal',
  );

  /// http___hl7_org_fhirpath_System_Integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Integer =
      ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.Integer',
  );

  /// http___hl7_org_fhirpath_System_Time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Time = ElementTypes(
    fhirCode: 'http://hl7.org/fhirpath/System.Time',
  );

  /// For instances where an Element is present but not value

  static final ElementTypes elementOnly = ElementTypes();

  /// List of all enum-like values
  static final List<ElementTypes> values = [
    http___hl7_org_fhirpath_System_String,
    http___hl7_org_fhirpath_System_Boolean,
    http___hl7_org_fhirpath_System_Date,
    http___hl7_org_fhirpath_System_DateTime,
    http___hl7_org_fhirpath_System_Decimal,
    http___hl7_org_fhirpath_System_Integer,
    http___hl7_org_fhirpath_System_Time,
  ];

  /// Returns the enum value with an element attached
  ElementTypes withElement(Element? newElement) {
    return ElementTypes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ElementTypes] from JSON.
  static ElementTypes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ElementTypes.elementOnly.withElement(element);
    }
    return ElementTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ElementTypes.$fhirCode';
}
