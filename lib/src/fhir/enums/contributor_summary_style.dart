// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
class ContributorSummaryStyle {
  // Private constructor for internal use (like enum)
  ContributorSummaryStyle._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContributorSummaryStyle values
  /// a1full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle a1full = ContributorSummaryStyle._(
    'a1full',
  );

  /// a1init
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle a1init = ContributorSummaryStyle._(
    'a1init',
  );

  /// a3full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle a3full = ContributorSummaryStyle._(
    'a3full',
  );

  /// a3init
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle a3init = ContributorSummaryStyle._(
    'a3init',
  );

  /// a6full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle a6full = ContributorSummaryStyle._(
    'a6full',
  );

  /// a6init
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle a6init = ContributorSummaryStyle._(
    'a6init',
  );

  /// aallfull
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle aallfull = ContributorSummaryStyle._(
    'aallfull',
  );

  /// aallfullwithand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle aallfullwithand =
      ContributorSummaryStyle._(
    'aallfullwithand',
  );

  /// aallfullwithampersand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle aallfullwithampersand =
      ContributorSummaryStyle._(
    'aallfullwithampersand',
  );

  /// aallinit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle aallinit = ContributorSummaryStyle._(
    'aallinit',
  );

  /// aallinitwithand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle aallinitwithand =
      ContributorSummaryStyle._(
    'aallinitwithand',
  );

  /// aallinitwithampersand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle aallinitwithampersand =
      ContributorSummaryStyle._(
    'aallinitwithampersand',
  );

  /// contr_full_by_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle contr_full_by_person =
      ContributorSummaryStyle._(
    'contr-full-by-person',
  );

  /// contr_init_by_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle contr_init_by_person =
      ContributorSummaryStyle._(
    'contr-init-by-person',
  );

  /// contr_full_by_contr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle contr_full_by_contr =
      ContributorSummaryStyle._(
    'contr-full-by-contr',
  );

  /// contr_init_by_contr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorSummaryStyle contr_init_by_contr =
      ContributorSummaryStyle._(
    'contr-init-by-contr',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummaryStyle elementOnly =
      ContributorSummaryStyle._('');

  /// List of all enum-like values
  static final List<ContributorSummaryStyle> values = [
    a1full,
    a1init,
    a3full,
    a3init,
    a6full,
    a6init,
    aallfull,
    aallfullwithand,
    aallfullwithampersand,
    aallinit,
    aallinitwithand,
    aallinitwithampersand,
    contr_full_by_person,
    contr_init_by_person,
    contr_full_by_contr,
    contr_init_by_contr,
  ];

  /// Returns the enum value with an element attached
  ContributorSummaryStyle withElement(Element? newElement) {
    return ContributorSummaryStyle._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContributorSummaryStyle] from JSON.
  static ContributorSummaryStyle fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryStyle.elementOnly.withElement(element);
    }
    return ContributorSummaryStyle.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
