// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
@collection
class XPathUsageType {
  /// Constructor for internal use (like enum)
  XPathUsageType({this.fhirCode, this.element})
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

  /// XPathUsageType values
  /// normal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final XPathUsageType normal = XPathUsageType(
    fhirCode: 'normal',
  );

  /// phonetic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final XPathUsageType phonetic = XPathUsageType(
    fhirCode: 'phonetic',
  );

  /// nearby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final XPathUsageType nearby = XPathUsageType(
    fhirCode: 'nearby',
  );

  /// distance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final XPathUsageType distance = XPathUsageType(
    fhirCode: 'distance',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final XPathUsageType other = XPathUsageType(
    fhirCode: 'other',
  );

  /// For instances where an Element is present but not value

  static final XPathUsageType elementOnly = XPathUsageType();

  /// List of all enum-like values
  static final List<XPathUsageType> values = [
    normal,
    phonetic,
    nearby,
    distance,
    other,
  ];

  /// Returns the enum value with an element attached
  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [XPathUsageType] from JSON.
  static XPathUsageType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly.withElement(element);
    }
    return XPathUsageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'XPathUsageType.$fhirCode';
}
