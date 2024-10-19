// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to express the reason and specific aspect for the variant title, such as language and specific language.
@collection
class TitleType {
  /// Constructor for internal use (like enum)
  TitleType({this.fhirCode, this.element})
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

  /// TitleType values
  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType primary = TitleType(
    fhirCode: 'primary',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType official = TitleType(
    fhirCode: 'official',
  );

  /// scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType scientific = TitleType(
    fhirCode: 'scientific',
  );

  /// plain_language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType plain_language = TitleType(
    fhirCode: 'plain-language',
  );

  /// subtitle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType subtitle = TitleType(
    fhirCode: 'subtitle',
  );

  /// short_title
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType short_title = TitleType(
    fhirCode: 'short-title',
  );

  /// acronym
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType acronym = TitleType(
    fhirCode: 'acronym',
  );

  /// earlier_title
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType earlier_title = TitleType(
    fhirCode: 'earlier-title',
  );

  /// language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType language = TitleType(
    fhirCode: 'language',
  );

  /// autotranslated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType autotranslated = TitleType(
    fhirCode: 'autotranslated',
  );

  /// human_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType human_use = TitleType(
    fhirCode: 'human-use',
  );

  /// machine_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType machine_use = TitleType(
    fhirCode: 'machine-use',
  );

  /// duplicate_uid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType duplicate_uid = TitleType(
    fhirCode: 'duplicate-uid',
  );

  /// For instances where an Element is present but not value

  static final TitleType elementOnly = TitleType();

  /// List of all enum-like values
  static final List<TitleType> values = [
    primary,
    official,
    scientific,
    plain_language,
    subtitle,
    short_title,
    acronym,
    earlier_title,
    language,
    autotranslated,
    human_use,
    machine_use,
    duplicate_uid,
  ];

  /// Returns the enum value with an element attached
  TitleType withElement(Element? newElement) {
    return TitleType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TitleType] from JSON.
  static TitleType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TitleType.elementOnly.withElement(element);
    }
    return TitleType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TitleType.$fhirCode';
}
