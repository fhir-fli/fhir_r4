// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Citation artifact classifier
@collection
class CitationArtifactClassifier {
  /// Constructor for internal use (like enum)
  CitationArtifactClassifier({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitationArtifactClassifier values
  /// webpage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier webpage = CitationArtifactClassifier(
    fhirCode: 'webpage',
  );

  /// D016428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D016428 = CitationArtifactClassifier(
    fhirCode: 'D016428',
  );

  /// D016422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D016422 = CitationArtifactClassifier(
    fhirCode: 'D016422',
  );

  /// D016420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D016420 = CitationArtifactClassifier(
    fhirCode: 'D016420',
  );

  /// D016425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D016425 = CitationArtifactClassifier(
    fhirCode: 'D016425',
  );

  /// executable_app
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier executable_app =
      CitationArtifactClassifier(
    fhirCode: 'executable-app',
  );

  /// D000076942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D000076942 =
      CitationArtifactClassifier(
    fhirCode: 'D000076942',
  );

  /// D019991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D019991 = CitationArtifactClassifier(
    fhirCode: 'D019991',
  );

  /// D001877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D001877 = CitationArtifactClassifier(
    fhirCode: 'D001877',
  );

  /// D064886
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier D064886 = CitationArtifactClassifier(
    fhirCode: 'D064886',
  );

  /// value68059040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier value68059040 =
      CitationArtifactClassifier(
    fhirCode: '68059040',
  );

  /// audio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier audio = CitationArtifactClassifier(
    fhirCode: 'audio',
  );

  /// image
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier image = CitationArtifactClassifier(
    fhirCode: 'image',
  );

  /// machine_code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier machine_code =
      CitationArtifactClassifier(
    fhirCode: 'machine-code',
  );

  /// protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier protocol = CitationArtifactClassifier(
    fhirCode: 'protocol',
  );

  /// fhir_resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier fhir_resource =
      CitationArtifactClassifier(
    fhirCode: 'fhir-resource',
  );

  /// Print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier Print = CitationArtifactClassifier(
    fhirCode: 'Print',
  );

  /// Print_Electronic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier Print_Electronic =
      CitationArtifactClassifier(
    fhirCode: 'Print-Electronic',
  );

  /// Electronic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier Electronic =
      CitationArtifactClassifier(
    fhirCode: 'Electronic',
  );

  /// Electronic_Print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier Electronic_Print =
      CitationArtifactClassifier(
    fhirCode: 'Electronic-Print',
  );

  /// Electronic_eCollection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier Electronic_eCollection =
      CitationArtifactClassifier(
    fhirCode: 'Electronic-eCollection',
  );

  /// medline_base
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier medline_base =
      CitationArtifactClassifier(
    fhirCode: 'medline-base',
  );

  /// common_share
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier common_share =
      CitationArtifactClassifier(
    fhirCode: 'common-share',
  );

  /// project_specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitationArtifactClassifier project_specific =
      CitationArtifactClassifier(
    fhirCode: 'project-specific',
  );

  /// For instances where an Element is present but not value

  static final CitationArtifactClassifier elementOnly =
      CitationArtifactClassifier();

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
    return CitationArtifactClassifier(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitationArtifactClassifier] from JSON.
  static CitationArtifactClassifier fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationArtifactClassifier.elementOnly.withElement(element);
    }
    return CitationArtifactClassifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationArtifactClassifier.$fhirCode';
}
