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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ResourceVersionPolicy(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ResourceVersionPolicy fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly.withElement(element);
    }
    return ResourceVersionPolicy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
