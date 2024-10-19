// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The presentation type in which an administrable medicinal product is given to a patient.
@Entity()
class UnitOfPresentation extends FhirCode {
  /// Factory constructor to create [UnitOfPresentation] from JSON.
  factory UnitOfPresentation.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitOfPresentation.elementOnly(element);
    }
    if (values.contains(value)) {
      return UnitOfPresentation._(value, element);
    }
    throw ArgumentError(
      'UnitOfPresentation.fromJson: JSON value is not a valid value',
    );
  }

  /// value200000002108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002108([this.element])
      : dbValue = '200000002108',
        super('200000002108', element);

  /// value200000002109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002109([this.element])
      : dbValue = '200000002109',
        super('200000002109', element);

  /// value200000002110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002110([this.element])
      : dbValue = '200000002110',
        super('200000002110', element);

  /// value200000002111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002111([this.element])
      : dbValue = '200000002111',
        super('200000002111', element);

  /// value200000002112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002112([this.element])
      : dbValue = '200000002112',
        super('200000002112', element);

  /// value200000002113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002113([this.element])
      : dbValue = '200000002113',
        super('200000002113', element);

  /// value200000002114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002114([this.element])
      : dbValue = '200000002114',
        super('200000002114', element);

  /// value200000002115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002115([this.element])
      : dbValue = '200000002115',
        super('200000002115', element);

  /// value200000002116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002116([this.element])
      : dbValue = '200000002116',
        super('200000002116', element);

  /// value200000002117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002117([this.element])
      : dbValue = '200000002117',
        super('200000002117', element);

  /// value200000002118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002118([this.element])
      : dbValue = '200000002118',
        super('200000002118', element);

  /// value200000002119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002119([this.element])
      : dbValue = '200000002119',
        super('200000002119', element);

  /// value200000002120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002120([this.element])
      : dbValue = '200000002120',
        super('200000002120', element);

  /// value200000002121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002121([this.element])
      : dbValue = '200000002121',
        super('200000002121', element);

  /// value200000002122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002122([this.element])
      : dbValue = '200000002122',
        super('200000002122', element);

  /// value200000002123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002123([this.element])
      : dbValue = '200000002123',
        super('200000002123', element);

  /// value200000002124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002124([this.element])
      : dbValue = '200000002124',
        super('200000002124', element);

  /// value200000002125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002125([this.element])
      : dbValue = '200000002125',
        super('200000002125', element);

  /// value200000002126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002126([this.element])
      : dbValue = '200000002126',
        super('200000002126', element);

  /// value200000002127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002127([this.element])
      : dbValue = '200000002127',
        super('200000002127', element);

  /// value200000002128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002128([this.element])
      : dbValue = '200000002128',
        super('200000002128', element);

  /// value200000002129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002129([this.element])
      : dbValue = '200000002129',
        super('200000002129', element);

  /// value200000002130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002130([this.element])
      : dbValue = '200000002130',
        super('200000002130', element);

  /// value200000002131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002131([this.element])
      : dbValue = '200000002131',
        super('200000002131', element);

  /// value200000002132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002132([this.element])
      : dbValue = '200000002132',
        super('200000002132', element);

  /// value200000002133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002133([this.element])
      : dbValue = '200000002133',
        super('200000002133', element);

  /// value200000002134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002134([this.element])
      : dbValue = '200000002134',
        super('200000002134', element);

  /// value200000002135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002135([this.element])
      : dbValue = '200000002135',
        super('200000002135', element);

  /// value200000002136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002136([this.element])
      : dbValue = '200000002136',
        super('200000002136', element);

  /// value200000002137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002137([this.element])
      : dbValue = '200000002137',
        super('200000002137', element);

  /// value200000002138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002138([this.element])
      : dbValue = '200000002138',
        super('200000002138', element);

  /// value200000002139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002139([this.element])
      : dbValue = '200000002139',
        super('200000002139', element);

  /// value200000002140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002140([this.element])
      : dbValue = '200000002140',
        super('200000002140', element);

  /// value200000002141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002141([this.element])
      : dbValue = '200000002141',
        super('200000002141', element);

  /// value200000002142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002142([this.element])
      : dbValue = '200000002142',
        super('200000002142', element);

  /// value200000002143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002143([this.element])
      : dbValue = '200000002143',
        super('200000002143', element);

  /// value200000002144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002144([this.element])
      : dbValue = '200000002144',
        super('200000002144', element);

  /// value200000002145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002145([this.element])
      : dbValue = '200000002145',
        super('200000002145', element);

  /// value200000002146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002146([this.element])
      : dbValue = '200000002146',
        super('200000002146', element);

  /// value200000002147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002147([this.element])
      : dbValue = '200000002147',
        super('200000002147', element);

  /// value200000002148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002148([this.element])
      : dbValue = '200000002148',
        super('200000002148', element);

  /// value200000002149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002149([this.element])
      : dbValue = '200000002149',
        super('200000002149', element);

  /// value200000002150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002150([this.element])
      : dbValue = '200000002150',
        super('200000002150', element);

  /// value200000002151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002151([this.element])
      : dbValue = '200000002151',
        super('200000002151', element);

  /// value200000002152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002152([this.element])
      : dbValue = '200000002152',
        super('200000002152', element);

  /// value200000002153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002153([this.element])
      : dbValue = '200000002153',
        super('200000002153', element);

  /// value200000002154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002154([this.element])
      : dbValue = '200000002154',
        super('200000002154', element);

  /// value200000002155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002155([this.element])
      : dbValue = '200000002155',
        super('200000002155', element);

  /// value200000002156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002156([this.element])
      : dbValue = '200000002156',
        super('200000002156', element);

  /// value200000002157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002157([this.element])
      : dbValue = '200000002157',
        super('200000002157', element);

  /// value200000002158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002158([this.element])
      : dbValue = '200000002158',
        super('200000002158', element);

  /// value200000002159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002159([this.element])
      : dbValue = '200000002159',
        super('200000002159', element);

  /// value200000002163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002163([this.element])
      : dbValue = '200000002163',
        super('200000002163', element);

  /// value200000002164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002164([this.element])
      : dbValue = '200000002164',
        super('200000002164', element);

  /// value200000002165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002165([this.element])
      : dbValue = '200000002165',
        super('200000002165', element);

  /// value200000002166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  UnitOfPresentation.value200000002166([this.element])
      : dbValue = '200000002166',
        super('200000002166', element);

  /// For instances where an Element is present but not value

  UnitOfPresentation.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  UnitOfPresentation._(super.input, [super.element])
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
    '200000002108',
    '200000002109',
    '200000002110',
    '200000002111',
    '200000002112',
    '200000002113',
    '200000002114',
    '200000002115',
    '200000002116',
    '200000002117',
    '200000002118',
    '200000002119',
    '200000002120',
    '200000002121',
    '200000002122',
    '200000002123',
    '200000002124',
    '200000002125',
    '200000002126',
    '200000002127',
    '200000002128',
    '200000002129',
    '200000002130',
    '200000002131',
    '200000002132',
    '200000002133',
    '200000002134',
    '200000002135',
    '200000002136',
    '200000002137',
    '200000002138',
    '200000002139',
    '200000002140',
    '200000002141',
    '200000002142',
    '200000002143',
    '200000002144',
    '200000002145',
    '200000002146',
    '200000002147',
    '200000002148',
    '200000002149',
    '200000002150',
    '200000002151',
    '200000002152',
    '200000002153',
    '200000002154',
    '200000002155',
    '200000002156',
    '200000002157',
    '200000002158',
    '200000002159',
    '200000002163',
    '200000002164',
    '200000002165',
    '200000002166',
  ];

  /// Returns the enum value with an element attached
  UnitOfPresentation withElement(Element? newElement) {
    return UnitOfPresentation._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UnitOfPresentation.$value';
}
