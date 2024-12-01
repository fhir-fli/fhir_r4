// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Contribution Instance Type
class ArtifactContributionInstanceType {
  // Private constructor for internal use (like enum)
  ArtifactContributionInstanceType._(this.fhirCode, {this.element});

  /// Factory constructor to create [ArtifactContributionInstanceType] from JSON.
  factory ArtifactContributionInstanceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionInstanceType.elementOnly.withElement(element);
    }
    return ArtifactContributionInstanceType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ArtifactContributionInstanceType values
  /// reviewed
  static final ArtifactContributionInstanceType reviewed =
      ArtifactContributionInstanceType._(
    'reviewed',
  );

  /// approved
  static final ArtifactContributionInstanceType approved =
      ArtifactContributionInstanceType._(
    'approved',
  );

  /// edited
  static final ArtifactContributionInstanceType edited =
      ArtifactContributionInstanceType._(
    'edited',
  );

  /// For instances where an Element is present but not value

  static final ArtifactContributionInstanceType elementOnly =
      ArtifactContributionInstanceType._('');

  /// List of all enum-like values
  static final List<ArtifactContributionInstanceType> values = [
    reviewed,
    approved,
    edited,
  ];

  /// Returns the enum value with an element attached
  ArtifactContributionInstanceType withElement(Element? newElement) {
    return ArtifactContributionInstanceType._(fhirCode, element: newElement);
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
