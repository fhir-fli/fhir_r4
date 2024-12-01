// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for access of external URI.
class RepositoryType {
  // Private constructor for internal use (like enum)
  RepositoryType._(this.fhirCode, {this.element});

  /// Factory constructor to create [RepositoryType] from JSON.
  factory RepositoryType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly.withElement(element);
    }
    return RepositoryType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RepositoryType values
  /// directlink
  static final RepositoryType directlink = RepositoryType._(
    'directlink',
  );

  /// openapi
  static final RepositoryType openapi = RepositoryType._(
    'openapi',
  );

  /// login
  static final RepositoryType login = RepositoryType._(
    'login',
  );

  /// oauth
  static final RepositoryType oauth = RepositoryType._(
    'oauth',
  );

  /// other
  static final RepositoryType other = RepositoryType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final RepositoryType elementOnly = RepositoryType._('');

  /// List of all enum-like values
  static final List<RepositoryType> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Returns the enum value with an element attached
  RepositoryType withElement(Element? newElement) {
    return RepositoryType._(fhirCode, element: newElement);
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
