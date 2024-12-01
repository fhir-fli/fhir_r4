// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to distinguish different roles a resource can play within a set of linked resources.
class LinkageType {
  // Private constructor for internal use (like enum)
  LinkageType._(this.fhirCode, {this.element});

  /// Factory constructor to create [LinkageType] from JSON.
  factory LinkageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType.elementOnly.withElement(element);
    }
    return LinkageType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// LinkageType values
  /// source
  static final LinkageType source = LinkageType._(
    'source',
  );

  /// alternate
  static final LinkageType alternate = LinkageType._(
    'alternate',
  );

  /// historical
  static final LinkageType historical = LinkageType._(
    'historical',
  );

  /// For instances where an Element is present but not value

  static final LinkageType elementOnly = LinkageType._('');

  /// List of all enum-like values
  static final List<LinkageType> values = [
    source,
    alternate,
    historical,
  ];

  /// Returns the enum value with an element attached
  LinkageType withElement(Element? newElement) {
    return LinkageType._(fhirCode, element: newElement);
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
