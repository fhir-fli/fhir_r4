// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Used to code the format of the display string.
@Entity()
class ContributorSummaryStyle extends FhirCode {
  /// Factory constructor to create [ContributorSummaryStyle] from JSON.
  factory ContributorSummaryStyle.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryStyle.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContributorSummaryStyle._(value, element);
    }
    throw ArgumentError(
      'ContributorSummaryStyle.fromJson: JSON value is not a valid value',
    );
  }

  /// a1full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.a1full([this.element])
      : dbValue = 'a1full',
        super('a1full', element);

  /// a1init
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.a1init([this.element])
      : dbValue = 'a1init',
        super('a1init', element);

  /// a3full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.a3full([this.element])
      : dbValue = 'a3full',
        super('a3full', element);

  /// a3init
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.a3init([this.element])
      : dbValue = 'a3init',
        super('a3init', element);

  /// a6full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.a6full([this.element])
      : dbValue = 'a6full',
        super('a6full', element);

  /// a6init
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.a6init([this.element])
      : dbValue = 'a6init',
        super('a6init', element);

  /// aallfull
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.aallfull([this.element])
      : dbValue = 'aallfull',
        super('aallfull', element);

  /// aallfullwithand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.aallfullwithand([this.element])
      : dbValue = 'aallfullwithand',
        super('aallfullwithand', element);

  /// aallfullwithampersand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.aallfullwithampersand([this.element])
      : dbValue = 'aallfullwithampersand',
        super('aallfullwithampersand', element);

  /// aallinit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.aallinit([this.element])
      : dbValue = 'aallinit',
        super('aallinit', element);

  /// aallinitwithand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.aallinitwithand([this.element])
      : dbValue = 'aallinitwithand',
        super('aallinitwithand', element);

  /// aallinitwithampersand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.aallinitwithampersand([this.element])
      : dbValue = 'aallinitwithampersand',
        super('aallinitwithampersand', element);

  /// contr_full_by_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.contr_full_by_person([this.element])
      : dbValue = 'contr-full-by-person',
        super('contr-full-by-person', element);

  /// contr_init_by_person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.contr_init_by_person([this.element])
      : dbValue = 'contr-init-by-person',
        super('contr-init-by-person', element);

  /// contr_full_by_contr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.contr_full_by_contr([this.element])
      : dbValue = 'contr-full-by-contr',
        super('contr-full-by-contr', element);

  /// contr_init_by_contr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContributorSummaryStyle.contr_init_by_contr([this.element])
      : dbValue = 'contr-init-by-contr',
        super('contr-init-by-contr', element);

  /// For instances where an Element is present but not value

  ContributorSummaryStyle.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContributorSummaryStyle._(super.input, [super.element])
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
    'a1full',
    'a1init',
    'a3full',
    'a3init',
    'a6full',
    'a6init',
    'aallfull',
    'aallfullwithand',
    'aallfullwithampersand',
    'aallinit',
    'aallinitwithand',
    'aallinitwithampersand',
    'contr-full-by-person',
    'contr-init-by-person',
    'contr-full-by-contr',
    'contr-init-by-contr',
  ];

  /// Returns the enum value with an element attached
  ContributorSummaryStyle withElement(Element? newElement) {
    return ContributorSummaryStyle._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorSummaryStyle.$value';
}
