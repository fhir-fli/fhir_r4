// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
class XPathUsageType {
  // Private constructor for internal use (like enum)
  XPathUsageType._(this.fhirCode, {this.element});

  /// Factory constructor to create [XPathUsageType] from JSON.
  factory XPathUsageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly.withElement(element);
    }
    return XPathUsageType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// XPathUsageType values
  /// normal
  static final XPathUsageType normal = XPathUsageType._(
    'normal',
  );

  /// phonetic
  static final XPathUsageType phonetic = XPathUsageType._(
    'phonetic',
  );

  /// nearby
  static final XPathUsageType nearby = XPathUsageType._(
    'nearby',
  );

  /// distance
  static final XPathUsageType distance = XPathUsageType._(
    'distance',
  );

  /// other
  static final XPathUsageType other = XPathUsageType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final XPathUsageType elementOnly = XPathUsageType._('');

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
    return XPathUsageType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
