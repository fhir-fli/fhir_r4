// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation artifact classifier
class CitationArtifactClassifier {
  // Private constructor for internal use (like enum)
  CitationArtifactClassifier._(this.fhirCode, {this.element});

  /// Factory constructor to create [CitationArtifactClassifier] from JSON.
  factory CitationArtifactClassifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationArtifactClassifier.elementOnly.withElement(element);
    }
    return CitationArtifactClassifier._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitationArtifactClassifier values
  /// webpage
  static final CitationArtifactClassifier webpage =
      CitationArtifactClassifier._(
    'webpage',
  );

  /// D016428
  static final CitationArtifactClassifier D016428 =
      CitationArtifactClassifier._(
    'D016428',
  );

  /// D016422
  static final CitationArtifactClassifier D016422 =
      CitationArtifactClassifier._(
    'D016422',
  );

  /// D016420
  static final CitationArtifactClassifier D016420 =
      CitationArtifactClassifier._(
    'D016420',
  );

  /// D016425
  static final CitationArtifactClassifier D016425 =
      CitationArtifactClassifier._(
    'D016425',
  );

  /// executable_app
  static final CitationArtifactClassifier executable_app =
      CitationArtifactClassifier._(
    'executable-app',
  );

  /// D000076942
  static final CitationArtifactClassifier D000076942 =
      CitationArtifactClassifier._(
    'D000076942',
  );

  /// D019991
  static final CitationArtifactClassifier D019991 =
      CitationArtifactClassifier._(
    'D019991',
  );

  /// D001877
  static final CitationArtifactClassifier D001877 =
      CitationArtifactClassifier._(
    'D001877',
  );

  /// D064886
  static final CitationArtifactClassifier D064886 =
      CitationArtifactClassifier._(
    'D064886',
  );

  /// value68059040
  static final CitationArtifactClassifier value68059040 =
      CitationArtifactClassifier._(
    '68059040',
  );

  /// audio
  static final CitationArtifactClassifier audio = CitationArtifactClassifier._(
    'audio',
  );

  /// image
  static final CitationArtifactClassifier image = CitationArtifactClassifier._(
    'image',
  );

  /// machine_code
  static final CitationArtifactClassifier machine_code =
      CitationArtifactClassifier._(
    'machine-code',
  );

  /// protocol
  static final CitationArtifactClassifier protocol =
      CitationArtifactClassifier._(
    'protocol',
  );

  /// fhir_resource
  static final CitationArtifactClassifier fhir_resource =
      CitationArtifactClassifier._(
    'fhir-resource',
  );

  /// Print
  static final CitationArtifactClassifier Print = CitationArtifactClassifier._(
    'Print',
  );

  /// Print_Electronic
  static final CitationArtifactClassifier Print_Electronic =
      CitationArtifactClassifier._(
    'Print-Electronic',
  );

  /// Electronic
  static final CitationArtifactClassifier Electronic =
      CitationArtifactClassifier._(
    'Electronic',
  );

  /// Electronic_Print
  static final CitationArtifactClassifier Electronic_Print =
      CitationArtifactClassifier._(
    'Electronic-Print',
  );

  /// Electronic_eCollection
  static final CitationArtifactClassifier Electronic_eCollection =
      CitationArtifactClassifier._(
    'Electronic-eCollection',
  );

  /// medline_base
  static final CitationArtifactClassifier medline_base =
      CitationArtifactClassifier._(
    'medline-base',
  );

  /// common_share
  static final CitationArtifactClassifier common_share =
      CitationArtifactClassifier._(
    'common-share',
  );

  /// project_specific
  static final CitationArtifactClassifier project_specific =
      CitationArtifactClassifier._(
    'project-specific',
  );

  /// For instances where an Element is present but not value

  static final CitationArtifactClassifier elementOnly =
      CitationArtifactClassifier._('');

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

  /// Returns the enum value with an element attached
  CitationArtifactClassifier withElement(Element? newElement) {
    return CitationArtifactClassifier._(fhirCode, element: newElement);
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
