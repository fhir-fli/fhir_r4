// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Allowed types for FHIR elements
@Entity()
class ElementTypes extends FhirCode {
  /// Factory constructor to create [ElementTypes] from JSON.
  factory ElementTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ElementTypes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ElementTypes._(value, element);
    }
    throw ArgumentError(
      'ElementTypes.fromJson: JSON value is not a valid value',
    );
  }

  /// http___hl7_org_fhirpath_System_String
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_String([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.String',
        super('http://hl7.org/fhirpath/System.String', element);

  /// http___hl7_org_fhirpath_System_Boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_Boolean([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.Boolean',
        super('http://hl7.org/fhirpath/System.Boolean', element);

  /// http___hl7_org_fhirpath_System_Date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_Date([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.Date',
        super('http://hl7.org/fhirpath/System.Date', element);

  /// http___hl7_org_fhirpath_System_DateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_DateTime([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.DateTime',
        super('http://hl7.org/fhirpath/System.DateTime', element);

  /// http___hl7_org_fhirpath_System_Decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_Decimal([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.Decimal',
        super('http://hl7.org/fhirpath/System.Decimal', element);

  /// http___hl7_org_fhirpath_System_Integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_Integer([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.Integer',
        super('http://hl7.org/fhirpath/System.Integer', element);

  /// http___hl7_org_fhirpath_System_Time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ElementTypes.http___hl7_org_fhirpath_System_Time([this.element])
      : dbValue = 'http://hl7.org/fhirpath/System.Time',
        super('http://hl7.org/fhirpath/System.Time', element);

  /// For instances where an Element is present but not value

  ElementTypes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ElementTypes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'http://hl7.org/fhirpath/System.String',
    'http://hl7.org/fhirpath/System.Boolean',
    'http://hl7.org/fhirpath/System.Date',
    'http://hl7.org/fhirpath/System.DateTime',
    'http://hl7.org/fhirpath/System.Decimal',
    'http://hl7.org/fhirpath/System.Integer',
    'http://hl7.org/fhirpath/System.Time',
  ];

  /// Returns the enum value with an element attached
  ElementTypes withElement(Element? newElement) {
    return ElementTypes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ElementTypes.$value';
}
