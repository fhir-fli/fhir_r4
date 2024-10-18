// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Contribution Instance Type
enum ArtifactContributionInstanceType {
  /// Display: Reviewed
  /// Definition: Reviewed
  reviewed('reviewed'),

  /// Display: Approved
  /// Definition: Approved
  approved('approved'),

  /// Display: Edited
  /// Definition: Edited
  edited('edited'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ArtifactContributionInstanceType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ArtifactContributionInstanceType] instances.
  static ArtifactContributionInstanceType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionInstanceType.elementOnly.withElement(element);
    }
    return ArtifactContributionInstanceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ArtifactContributionInstanceType withElement(Element? newElement) {
    return ArtifactContributionInstanceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
