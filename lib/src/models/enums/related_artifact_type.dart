// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship to the related artifact.
class RelatedArtifactType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  RelatedArtifactType._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [RelatedArtifactType] with element only
  factory RelatedArtifactType.empty() => RelatedArtifactType._('');

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
    return RelatedArtifactType._(
      value,
      element: element,
    );
  }

  /// documentation
  static final RelatedArtifactType documentation = RelatedArtifactType._(
    'documentation',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Documentation'.toFhirString,
  );

  /// justification
  static final RelatedArtifactType justification = RelatedArtifactType._(
    'justification',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Justification'.toFhirString,
  );

  /// citation
  static final RelatedArtifactType citation = RelatedArtifactType._(
    'citation',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Citation'.toFhirString,
  );

  /// predecessor
  static final RelatedArtifactType predecessor = RelatedArtifactType._(
    'predecessor',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Predecessor'.toFhirString,
  );

  /// successor
  static final RelatedArtifactType successor = RelatedArtifactType._(
    'successor',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Successor'.toFhirString,
  );

  /// derived_from
  static final RelatedArtifactType derived_from = RelatedArtifactType._(
    'derived-from',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Derived From'.toFhirString,
  );

  /// depends_on
  static final RelatedArtifactType depends_on = RelatedArtifactType._(
    'depends-on',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Depends On'.toFhirString,
  );

  /// composed_of
  static final RelatedArtifactType composed_of = RelatedArtifactType._(
    'composed-of',
    system: 'http://hl7.org/fhir/ValueSet/related-artifact-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composed Of'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final RelatedArtifactType elementOnly = RelatedArtifactType._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType._(
      value,
      element: newElement,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RelatedArtifactType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
