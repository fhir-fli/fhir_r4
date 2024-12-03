// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation contribution.
class ArtifactContributionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ArtifactContributionType._(super.value, [super.element]);

  /// Factory constructor to create [ArtifactContributionType] from JSON.
  factory ArtifactContributionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ArtifactContributionType cannot be constructed from JSON.');
    }
    return ArtifactContributionType._(value, element);
  }

  /// conceptualization
  static final ArtifactContributionType conceptualization =
      ArtifactContributionType._(
    'conceptualization',
  );

  /// data_curation
  static final ArtifactContributionType data_curation =
      ArtifactContributionType._(
    'data-curation',
  );

  /// formal_analysis
  static final ArtifactContributionType formal_analysis =
      ArtifactContributionType._(
    'formal-analysis',
  );

  /// funding_acquisition
  static final ArtifactContributionType funding_acquisition =
      ArtifactContributionType._(
    'funding-acquisition',
  );

  /// investigation
  static final ArtifactContributionType investigation =
      ArtifactContributionType._(
    'investigation',
  );

  /// methodology
  static final ArtifactContributionType methodology =
      ArtifactContributionType._(
    'methodology',
  );

  /// project_administration
  static final ArtifactContributionType project_administration =
      ArtifactContributionType._(
    'project-administration',
  );

  /// resources
  static final ArtifactContributionType resources = ArtifactContributionType._(
    'resources',
  );

  /// software
  static final ArtifactContributionType software = ArtifactContributionType._(
    'software',
  );

  /// supervision
  static final ArtifactContributionType supervision =
      ArtifactContributionType._(
    'supervision',
  );

  /// validation
  static final ArtifactContributionType validation = ArtifactContributionType._(
    'validation',
  );

  /// visualization
  static final ArtifactContributionType visualization =
      ArtifactContributionType._(
    'visualization',
  );

  /// writing_original_draft
  static final ArtifactContributionType writing_original_draft =
      ArtifactContributionType._(
    'writing-original-draft',
  );

  /// writing_review_editing
  static final ArtifactContributionType writing_review_editing =
      ArtifactContributionType._(
    'writing-review-editing',
  );

  /// For instances where an Element is present but not value

  static final ArtifactContributionType elementOnly =
      ArtifactContributionType._('');

  /// List of all enum-like values
  static final List<ArtifactContributionType> values = [
    conceptualization,
    data_curation,
    formal_analysis,
    funding_acquisition,
    investigation,
    methodology,
    project_administration,
    resources,
    software,
    supervision,
    validation,
    visualization,
    writing_original_draft,
    writing_review_editing,
  ];

  /// Clones the current instance
  @override
  ArtifactContributionType clone() => ArtifactContributionType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ArtifactContributionType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ArtifactContributionType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ArtifactContributionType withElement(Element? newElement) {
    return ArtifactContributionType._(value, newElement);
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
  ArtifactContributionType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ArtifactContributionType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
