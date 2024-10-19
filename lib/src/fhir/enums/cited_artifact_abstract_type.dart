// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to express the reason and specific aspect for the variant abstract, such as language and specific language.
@collection
class CitedArtifactAbstractType {
  /// Constructor for internal use (like enum)
  CitedArtifactAbstractType({this.fhirCode, this.element})
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

  /// CitedArtifactAbstractType values
  /// primary_human_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType primary_human_use =
      CitedArtifactAbstractType(
    fhirCode: 'primary-human-use',
  );

  /// primary_machine_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType primary_machine_use =
      CitedArtifactAbstractType(
    fhirCode: 'primary-machine-use',
  );

  /// truncated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType truncated = CitedArtifactAbstractType(
    fhirCode: 'truncated',
  );

  /// short_abstract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType short_abstract =
      CitedArtifactAbstractType(
    fhirCode: 'short-abstract',
  );

  /// long_abstract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType long_abstract =
      CitedArtifactAbstractType(
    fhirCode: 'long-abstract',
  );

  /// plain_language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType plain_language =
      CitedArtifactAbstractType(
    fhirCode: 'plain-language',
  );

  /// different_publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType different_publisher =
      CitedArtifactAbstractType(
    fhirCode: 'different-publisher',
  );

  /// language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType language = CitedArtifactAbstractType(
    fhirCode: 'language',
  );

  /// autotranslated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType autotranslated =
      CitedArtifactAbstractType(
    fhirCode: 'autotranslated',
  );

  /// duplicate_pmid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType duplicate_pmid =
      CitedArtifactAbstractType(
    fhirCode: 'duplicate-pmid',
  );

  /// earlier_abstract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CitedArtifactAbstractType earlier_abstract =
      CitedArtifactAbstractType(
    fhirCode: 'earlier-abstract',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactAbstractType elementOnly =
      CitedArtifactAbstractType();

  /// List of all enum-like values
  static final List<CitedArtifactAbstractType> values = [
    primary_human_use,
    primary_machine_use,
    truncated,
    short_abstract,
    long_abstract,
    plain_language,
    different_publisher,
    language,
    autotranslated,
    duplicate_pmid,
    earlier_abstract,
  ];

  /// Returns the enum value with an element attached
  CitedArtifactAbstractType withElement(Element? newElement) {
    return CitedArtifactAbstractType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CitedArtifactAbstractType] from JSON.
  static CitedArtifactAbstractType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactAbstractType.elementOnly.withElement(element);
    }
    return CitedArtifactAbstractType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedArtifactAbstractType.$fhirCode';
}
