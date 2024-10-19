// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Artifact Contribution Instance Type
@Entity()
class ArtifactContributionInstanceType extends FhirCode {
  /// Factory constructor to create [ArtifactContributionInstanceType] from JSON.
  factory ArtifactContributionInstanceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionInstanceType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ArtifactContributionInstanceType._(value, element);
    }
    throw ArgumentError(
      'ArtifactContributionInstanceType.fromJson: JSON value is not a valid value',
    );
  }

  /// reviewed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionInstanceType.reviewed([this.element])
      : dbValue = 'reviewed',
        super('reviewed', element);

  /// approved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionInstanceType.approved([this.element])
      : dbValue = 'approved',
        super('approved', element);

  /// edited
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArtifactContributionInstanceType.edited([this.element])
      : dbValue = 'edited',
        super('edited', element);

  /// For instances where an Element is present but not value

  ArtifactContributionInstanceType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ArtifactContributionInstanceType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'reviewed',
    'approved',
    'edited',
  ];

  /// Returns the enum value with an element attached
  ArtifactContributionInstanceType withElement(Element? newElement) {
    return ArtifactContributionInstanceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ArtifactContributionInstanceType.$value';
}
