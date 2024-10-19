// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Citation artifact classifier
@Entity()
class CitationArtifactClassifier extends FhirCode {
  /// Factory constructor to create [CitationArtifactClassifier] from JSON.
  factory CitationArtifactClassifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationArtifactClassifier.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitationArtifactClassifier._(value, element);
    }
    throw ArgumentError(
      'CitationArtifactClassifier.fromJson: JSON value is not a valid value',
    );
  }

  /// webpage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.webpage([this.element])
      : dbValue = 'webpage',
        super('webpage', element);

  /// D016428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D016428([this.element])
      : dbValue = 'D016428',
        super('D016428', element);

  /// D016422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D016422([this.element])
      : dbValue = 'D016422',
        super('D016422', element);

  /// D016420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D016420([this.element])
      : dbValue = 'D016420',
        super('D016420', element);

  /// D016425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D016425([this.element])
      : dbValue = 'D016425',
        super('D016425', element);

  /// executable_app
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.executable_app([this.element])
      : dbValue = 'executable-app',
        super('executable-app', element);

  /// D000076942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D000076942([this.element])
      : dbValue = 'D000076942',
        super('D000076942', element);

  /// D019991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D019991([this.element])
      : dbValue = 'D019991',
        super('D019991', element);

  /// D001877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D001877([this.element])
      : dbValue = 'D001877',
        super('D001877', element);

  /// D064886
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.D064886([this.element])
      : dbValue = 'D064886',
        super('D064886', element);

  /// value68059040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.value68059040([this.element])
      : dbValue = '68059040',
        super('68059040', element);

  /// audio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.audio([this.element])
      : dbValue = 'audio',
        super('audio', element);

  /// image
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.image([this.element])
      : dbValue = 'image',
        super('image', element);

  /// machine_code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.machine_code([this.element])
      : dbValue = 'machine-code',
        super('machine-code', element);

  /// protocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.protocol([this.element])
      : dbValue = 'protocol',
        super('protocol', element);

  /// fhir_resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.fhir_resource([this.element])
      : dbValue = 'fhir-resource',
        super('fhir-resource', element);

  /// Print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.Print([this.element])
      : dbValue = 'Print',
        super('Print', element);

  /// Print_Electronic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.Print_Electronic([this.element])
      : dbValue = 'Print-Electronic',
        super('Print-Electronic', element);

  /// Electronic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.Electronic([this.element])
      : dbValue = 'Electronic',
        super('Electronic', element);

  /// Electronic_Print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.Electronic_Print([this.element])
      : dbValue = 'Electronic-Print',
        super('Electronic-Print', element);

  /// Electronic_eCollection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.Electronic_eCollection([this.element])
      : dbValue = 'Electronic-eCollection',
        super('Electronic-eCollection', element);

  /// medline_base
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.medline_base([this.element])
      : dbValue = 'medline-base',
        super('medline-base', element);

  /// common_share
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.common_share([this.element])
      : dbValue = 'common-share',
        super('common-share', element);

  /// project_specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationArtifactClassifier.project_specific([this.element])
      : dbValue = 'project-specific',
        super('project-specific', element);

  /// For instances where an Element is present but not value

  CitationArtifactClassifier.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitationArtifactClassifier._(super.input, [super.element])
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
    'webpage',
    'D016428',
    'D016422',
    'D016420',
    'D016425',
    'executable-app',
    'D000076942',
    'D019991',
    'D001877',
    'D064886',
    '68059040',
    'audio',
    'image',
    'machine-code',
    'protocol',
    'fhir-resource',
    'Print',
    'Print-Electronic',
    'Electronic',
    'Electronic-Print',
    'Electronic-eCollection',
    'medline-base',
    'common-share',
    'project-specific',
  ];

  /// Returns the enum value with an element attached
  CitationArtifactClassifier withElement(Element? newElement) {
    return CitationArtifactClassifier._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationArtifactClassifier.$value';
}
