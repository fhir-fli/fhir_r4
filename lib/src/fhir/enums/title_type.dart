// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to express the reason and specific aspect for the variant title, such as language and specific language.
class TitleType {
  // Private constructor for internal use (like enum)
  TitleType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TitleType values
  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType primary = TitleType._(
    'primary',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType official = TitleType._(
    'official',
  );

  /// scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType scientific = TitleType._(
    'scientific',
  );

  /// plain_language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType plain_language = TitleType._(
    'plain-language',
  );

  /// subtitle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType subtitle = TitleType._(
    'subtitle',
  );

  /// short_title
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType short_title = TitleType._(
    'short-title',
  );

  /// acronym
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType acronym = TitleType._(
    'acronym',
  );

  /// earlier_title
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType earlier_title = TitleType._(
    'earlier-title',
  );

  /// language
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType language = TitleType._(
    'language',
  );

  /// autotranslated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType autotranslated = TitleType._(
    'autotranslated',
  );

  /// human_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType human_use = TitleType._(
    'human-use',
  );

  /// machine_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType machine_use = TitleType._(
    'machine-use',
  );

  /// duplicate_uid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TitleType duplicate_uid = TitleType._(
    'duplicate-uid',
  );

  /// For instances where an Element is present but not value

  static final TitleType elementOnly = TitleType._('');

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
    return TitleType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
