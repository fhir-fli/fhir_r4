// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Contribution Instance Type
class ArtifactContributionInstanceType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ArtifactContributionInstanceType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ArtifactContributionInstanceType] from JSON.
  factory ArtifactContributionInstanceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionInstanceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArtifactContributionInstanceType cannot be constructed from JSON.',
      );
    }
    return ArtifactContributionInstanceType._(value, element: element);
  }

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

  /// Clones the current instance
  @override
  ArtifactContributionInstanceType clone() =>
      ArtifactContributionInstanceType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ArtifactContributionInstanceType withElement(Element? newElement) {
    return ArtifactContributionInstanceType._(value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ArtifactContributionInstanceType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ArtifactContributionInstanceType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
