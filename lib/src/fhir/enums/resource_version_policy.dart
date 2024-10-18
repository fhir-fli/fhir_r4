// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the system supports versioning for a resource.
enum ResourceVersionPolicy {
  /// Display: No VersionId Support
  /// Definition: VersionId meta-property is not supported (server) or used (client).
  no_version('no-version'),

  /// Display: Versioned
  /// Definition: VersionId meta-property is supported (server) or used (client).
  versioned('versioned'),

  /// Display: VersionId tracked fully
  /// Definition: VersionId must be correct for updates (server) or will be specified (If-match header) for updates (client).
  versioned_update('versioned-update'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ResourceVersionPolicy(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ResourceVersionPolicy] instances.
  static ResourceVersionPolicy fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly.withElement(
        element,
      );
    }
    return ResourceVersionPolicy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
