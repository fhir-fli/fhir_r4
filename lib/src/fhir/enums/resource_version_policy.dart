// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the system supports versioning for a resource.
class ResourceVersionPolicy {
  // Private constructor for internal use (like enum)
  ResourceVersionPolicy._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ResourceVersionPolicy values
  /// no_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResourceVersionPolicy no_version = ResourceVersionPolicy._(
    'no-version',
  );

  /// versioned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResourceVersionPolicy versioned = ResourceVersionPolicy._(
    'versioned',
  );

  /// versioned_update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResourceVersionPolicy versioned_update = ResourceVersionPolicy._(
    'versioned-update',
  );

  /// For instances where an Element is present but not value

  static final ResourceVersionPolicy elementOnly = ResourceVersionPolicy._('');

  /// List of all enum-like values
  static final List<ResourceVersionPolicy> values = [
    no_version,
    versioned,
    versioned_update,
  ];

  /// Returns the enum value with an element attached
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResourceVersionPolicy] from JSON.
  static ResourceVersionPolicy fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly.withElement(element);
    }
    return ResourceVersionPolicy._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
