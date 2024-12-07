// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship to the related artifact.
class RelatedArtifactType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RelatedArtifactType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [RelatedArtifactType] from JSON.
  factory RelatedArtifactType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactType cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactType._(value: value, element: element);
  }

  /// documentation
  static final RelatedArtifactType documentation = RelatedArtifactType._(
    value: 'documentation',
  );

  /// justification
  static final RelatedArtifactType justification = RelatedArtifactType._(
    value: 'justification',
  );

  /// citation
  static final RelatedArtifactType citation = RelatedArtifactType._(
    value: 'citation',
  );

  /// predecessor
  static final RelatedArtifactType predecessor = RelatedArtifactType._(
    value: 'predecessor',
  );

  /// successor
  static final RelatedArtifactType successor = RelatedArtifactType._(
    value: 'successor',
  );

  /// derived_from
  static final RelatedArtifactType derived_from = RelatedArtifactType._(
    value: 'derived-from',
  );

  /// depends_on
  static final RelatedArtifactType depends_on = RelatedArtifactType._(
    value: 'depends-on',
  );

  /// composed_of
  static final RelatedArtifactType composed_of = RelatedArtifactType._(
    value: 'composed-of',
  );

  /// For instances where an Element is present but not value

  static final RelatedArtifactType elementOnly =
      RelatedArtifactType._(value: '');

  /// List of all enum-like values
  static final List<RelatedArtifactType> values = [
    documentation,
    justification,
    citation,
    predecessor,
    successor,
    derived_from,
    depends_on,
    composed_of,
  ];

  /// Clones the current instance
  @override
  RelatedArtifactType clone() => RelatedArtifactType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType._(value: value, element: newElement);
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
  RelatedArtifactType copyWith({
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
    return RelatedArtifactType._(
      value: newValue ?? value,
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
