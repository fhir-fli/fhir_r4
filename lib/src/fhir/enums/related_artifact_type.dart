// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship to the related artifact.
class RelatedArtifactType {
  // Private constructor for internal use (like enum)
  RelatedArtifactType._(this.fhirCode, {this.element});

  /// Factory constructor to create [RelatedArtifactType] from JSON.
  factory RelatedArtifactType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactType.elementOnly.withElement(element);
    }
    return RelatedArtifactType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RelatedArtifactType values
  /// documentation
  static final RelatedArtifactType documentation = RelatedArtifactType._(
    'documentation',
  );

  /// justification
  static final RelatedArtifactType justification = RelatedArtifactType._(
    'justification',
  );

  /// citation
  static final RelatedArtifactType citation = RelatedArtifactType._(
    'citation',
  );

  /// predecessor
  static final RelatedArtifactType predecessor = RelatedArtifactType._(
    'predecessor',
  );

  /// successor
  static final RelatedArtifactType successor = RelatedArtifactType._(
    'successor',
  );

  /// derived_from
  static final RelatedArtifactType derived_from = RelatedArtifactType._(
    'derived-from',
  );

  /// depends_on
  static final RelatedArtifactType depends_on = RelatedArtifactType._(
    'depends-on',
  );

  /// composed_of
  static final RelatedArtifactType composed_of = RelatedArtifactType._(
    'composed-of',
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

  /// Returns the enum value with an element attached
  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType._(fhirCode, element: newElement);
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
