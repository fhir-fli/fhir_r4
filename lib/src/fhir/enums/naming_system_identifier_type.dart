// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierType {
  // Private constructor for internal use (like enum)
  NamingSystemIdentifierType._(this.fhirCode, {this.element});

  /// Factory constructor to create [NamingSystemIdentifierType] from JSON.
  factory NamingSystemIdentifierType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    }
    return NamingSystemIdentifierType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NamingSystemIdentifierType values
  /// oid
  static final NamingSystemIdentifierType oid = NamingSystemIdentifierType._(
    'oid',
  );

  /// uuid
  static final NamingSystemIdentifierType uuid = NamingSystemIdentifierType._(
    'uuid',
  );

  /// uri
  static final NamingSystemIdentifierType uri = NamingSystemIdentifierType._(
    'uri',
  );

  /// other
  static final NamingSystemIdentifierType other = NamingSystemIdentifierType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final NamingSystemIdentifierType elementOnly =
      NamingSystemIdentifierType._('');

  /// List of all enum-like values
  static final List<NamingSystemIdentifierType> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType._(fhirCode, element: newElement);
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
