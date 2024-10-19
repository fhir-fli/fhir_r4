// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Allowed types for FHIR elements
class ElementTypes {
  // Private constructor for internal use (like enum)
  ElementTypes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ElementTypes values
  /// http___hl7_org_fhirpath_System_String
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_String =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.String',
  );

  /// http___hl7_org_fhirpath_System_Boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Boolean =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.Boolean',
  );

  /// http___hl7_org_fhirpath_System_Date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Date =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.Date',
  );

  /// http___hl7_org_fhirpath_System_DateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_DateTime =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.DateTime',
  );

  /// http___hl7_org_fhirpath_System_Decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Decimal =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.Decimal',
  );

  /// http___hl7_org_fhirpath_System_Integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Integer =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.Integer',
  );

  /// http___hl7_org_fhirpath_System_Time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ElementTypes http___hl7_org_fhirpath_System_Time =
      ElementTypes._(
    'http://hl7.org/fhirpath/System.Time',
  );

  /// For instances where an Element is present but not value

  static final ElementTypes elementOnly = ElementTypes._('');

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
    return ElementTypes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
