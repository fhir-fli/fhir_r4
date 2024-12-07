// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation artifact classifier
class CitationArtifactClassifier extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitationArtifactClassifier._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CitationArtifactClassifier] from JSON.
  factory CitationArtifactClassifier.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationArtifactClassifier.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CitationArtifactClassifier cannot be constructed from JSON.',
      );
    }
    return CitationArtifactClassifier._(value: value, element: element);
  }

  /// webpage
  static final CitationArtifactClassifier webpage =
      CitationArtifactClassifier._(
    value: 'webpage',
  );

  /// D016428
  static final CitationArtifactClassifier D016428 =
      CitationArtifactClassifier._(
    value: 'D016428',
  );

  /// D016422
  static final CitationArtifactClassifier D016422 =
      CitationArtifactClassifier._(
    value: 'D016422',
  );

  /// D016420
  static final CitationArtifactClassifier D016420 =
      CitationArtifactClassifier._(
    value: 'D016420',
  );

  /// D016425
  static final CitationArtifactClassifier D016425 =
      CitationArtifactClassifier._(
    value: 'D016425',
  );

  /// executable_app
  static final CitationArtifactClassifier executable_app =
      CitationArtifactClassifier._(
    value: 'executable-app',
  );

  /// D000076942
  static final CitationArtifactClassifier D000076942 =
      CitationArtifactClassifier._(
    value: 'D000076942',
  );

  /// D019991
  static final CitationArtifactClassifier D019991 =
      CitationArtifactClassifier._(
    value: 'D019991',
  );

  /// D001877
  static final CitationArtifactClassifier D001877 =
      CitationArtifactClassifier._(
    value: 'D001877',
  );

  /// D064886
  static final CitationArtifactClassifier D064886 =
      CitationArtifactClassifier._(
    value: 'D064886',
  );

  /// value68059040
  static final CitationArtifactClassifier value68059040 =
      CitationArtifactClassifier._(
    value: '68059040',
  );

  /// audio
  static final CitationArtifactClassifier audio = CitationArtifactClassifier._(
    value: 'audio',
  );

  /// image
  static final CitationArtifactClassifier image = CitationArtifactClassifier._(
    value: 'image',
  );

  /// machine_code
  static final CitationArtifactClassifier machine_code =
      CitationArtifactClassifier._(
    value: 'machine-code',
  );

  /// protocol
  static final CitationArtifactClassifier protocol =
      CitationArtifactClassifier._(
    value: 'protocol',
  );

  /// fhir_resource
  static final CitationArtifactClassifier fhir_resource =
      CitationArtifactClassifier._(
    value: 'fhir-resource',
  );

  /// Print
  static final CitationArtifactClassifier Print = CitationArtifactClassifier._(
    value: 'Print',
  );

  /// Print_Electronic
  static final CitationArtifactClassifier Print_Electronic =
      CitationArtifactClassifier._(
    value: 'Print-Electronic',
  );

  /// Electronic
  static final CitationArtifactClassifier Electronic =
      CitationArtifactClassifier._(
    value: 'Electronic',
  );

  /// Electronic_Print
  static final CitationArtifactClassifier Electronic_Print =
      CitationArtifactClassifier._(
    value: 'Electronic-Print',
  );

  /// Electronic_eCollection
  static final CitationArtifactClassifier Electronic_eCollection =
      CitationArtifactClassifier._(
    value: 'Electronic-eCollection',
  );

  /// medline_base
  static final CitationArtifactClassifier medline_base =
      CitationArtifactClassifier._(
    value: 'medline-base',
  );

  /// common_share
  static final CitationArtifactClassifier common_share =
      CitationArtifactClassifier._(
    value: 'common-share',
  );

  /// project_specific
  static final CitationArtifactClassifier project_specific =
      CitationArtifactClassifier._(
    value: 'project-specific',
  );

  /// For instances where an Element is present but not value

  static final CitationArtifactClassifier elementOnly =
      CitationArtifactClassifier._(value: '');

  /// List of all enum-like values
  static final List<CitationArtifactClassifier> values = [
    webpage,
    D016428,
    D016422,
    D016420,
    D016425,
    executable_app,
    D000076942,
    D019991,
    D001877,
    D064886,
    value68059040,
    audio,
    image,
    machine_code,
    protocol,
    fhir_resource,
    Print,
    Print_Electronic,
    Electronic,
    Electronic_Print,
    Electronic_eCollection,
    medline_base,
    common_share,
    project_specific,
  ];

  /// Clones the current instance
  @override
  CitationArtifactClassifier clone() => CitationArtifactClassifier._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CitationArtifactClassifier withElement(Element? newElement) {
    return CitationArtifactClassifier._(value: value, element: newElement);
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
  CitationArtifactClassifier copyWith({
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
    return CitationArtifactClassifier._(
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
