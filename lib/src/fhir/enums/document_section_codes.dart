// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Document section codes (LOINC codes used in CCDA sections).
@Entity()
class DocumentSectionCodes extends FhirCode {
  /// Factory constructor to create [DocumentSectionCodes] from JSON.
  factory DocumentSectionCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentSectionCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return DocumentSectionCodes._(value, element);
    }
    throw ArgumentError(
      'DocumentSectionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value10154_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10154_3([this.element])
      : dbValue = '10154-3',
        super('10154-3', element);

  /// value10157_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10157_6([this.element])
      : dbValue = '10157-6',
        super('10157-6', element);

  /// value10160_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10160_0([this.element])
      : dbValue = '10160-0',
        super('10160-0', element);

  /// value10164_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10164_2([this.element])
      : dbValue = '10164-2',
        super('10164-2', element);

  /// value10183_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10183_2([this.element])
      : dbValue = '10183-2',
        super('10183-2', element);

  /// value10184_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10184_0([this.element])
      : dbValue = '10184-0',
        super('10184-0', element);

  /// value10187_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10187_3([this.element])
      : dbValue = '10187-3',
        super('10187-3', element);

  /// value10210_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10210_3([this.element])
      : dbValue = '10210-3',
        super('10210-3', element);

  /// value10216_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10216_0([this.element])
      : dbValue = '10216-0',
        super('10216-0', element);

  /// value10218_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10218_6([this.element])
      : dbValue = '10218-6',
        super('10218-6', element);

  /// value10223_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10223_6([this.element])
      : dbValue = '10223-6',
        super('10223-6', element);

  /// value10222_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value10222_8([this.element])
      : dbValue = '10222-8',
        super('10222-8', element);

  /// value11329_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value11329_0([this.element])
      : dbValue = '11329-0',
        super('11329-0', element);

  /// value11348_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value11348_0([this.element])
      : dbValue = '11348-0',
        super('11348-0', element);

  /// value11369_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value11369_6([this.element])
      : dbValue = '11369-6',
        super('11369-6', element);

  /// value57852_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value57852_6([this.element])
      : dbValue = '57852-6',
        super('57852-6', element);

  /// value11493_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value11493_4([this.element])
      : dbValue = '11493-4',
        super('11493-4', element);

  /// value11535_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value11535_2([this.element])
      : dbValue = '11535-2',
        super('11535-2', element);

  /// value11537_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value11537_8([this.element])
      : dbValue = '11537-8',
        super('11537-8', element);

  /// value18776_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value18776_5([this.element])
      : dbValue = '18776-5',
        super('18776-5', element);

  /// value18841_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value18841_7([this.element])
      : dbValue = '18841-7',
        super('18841-7', element);

  /// value29299_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value29299_5([this.element])
      : dbValue = '29299-5',
        super('29299-5', element);

  /// value29545_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value29545_1([this.element])
      : dbValue = '29545-1',
        super('29545-1', element);

  /// value29549_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value29549_3([this.element])
      : dbValue = '29549-3',
        super('29549-3', element);

  /// value29554_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value29554_3([this.element])
      : dbValue = '29554-3',
        super('29554-3', element);

  /// value29762_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value29762_2([this.element])
      : dbValue = '29762-2',
        super('29762-2', element);

  /// value30954_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value30954_2([this.element])
      : dbValue = '30954-2',
        super('30954-2', element);

  /// value42344_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value42344_2([this.element])
      : dbValue = '42344-2',
        super('42344-2', element);

  /// value42346_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value42346_7([this.element])
      : dbValue = '42346-7',
        super('42346-7', element);

  /// value42348_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value42348_3([this.element])
      : dbValue = '42348-3',
        super('42348-3', element);

  /// value42349_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value42349_1([this.element])
      : dbValue = '42349-1',
        super('42349-1', element);

  /// value46240_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value46240_8([this.element])
      : dbValue = '46240-8',
        super('46240-8', element);

  /// value46241_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value46241_6([this.element])
      : dbValue = '46241-6',
        super('46241-6', element);

  /// value46264_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value46264_8([this.element])
      : dbValue = '46264-8',
        super('46264-8', element);

  /// value47420_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value47420_5([this.element])
      : dbValue = '47420-5',
        super('47420-5', element);

  /// value47519_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value47519_4([this.element])
      : dbValue = '47519-4',
        super('47519-4', element);

  /// value48765_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value48765_2([this.element])
      : dbValue = '48765-2',
        super('48765-2', element);

  /// value48768_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value48768_6([this.element])
      : dbValue = '48768-6',
        super('48768-6', element);

  /// value51848_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value51848_0([this.element])
      : dbValue = '51848-0',
        super('51848-0', element);

  /// value55109_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value55109_3([this.element])
      : dbValue = '55109-3',
        super('55109-3', element);

  /// value55122_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value55122_6([this.element])
      : dbValue = '55122-6',
        super('55122-6', element);

  /// value59768_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59768_2([this.element])
      : dbValue = '59768-2',
        super('59768-2', element);

  /// value59769_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59769_0([this.element])
      : dbValue = '59769-0',
        super('59769-0', element);

  /// value59770_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59770_8([this.element])
      : dbValue = '59770-8',
        super('59770-8', element);

  /// value59771_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59771_6([this.element])
      : dbValue = '59771-6',
        super('59771-6', element);

  /// value59772_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59772_4([this.element])
      : dbValue = '59772-4',
        super('59772-4', element);

  /// value59773_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59773_2([this.element])
      : dbValue = '59773-2',
        super('59773-2', element);

  /// value59775_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59775_7([this.element])
      : dbValue = '59775-7',
        super('59775-7', element);

  /// value59776_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value59776_5([this.element])
      : dbValue = '59776-5',
        super('59776-5', element);

  /// value61149_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value61149_1([this.element])
      : dbValue = '61149-1',
        super('61149-1', element);

  /// value61150_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value61150_9([this.element])
      : dbValue = '61150-9',
        super('61150-9', element);

  /// value69730_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value69730_0([this.element])
      : dbValue = '69730-0',
        super('69730-0', element);

  /// value8648_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value8648_8([this.element])
      : dbValue = '8648-8',
        super('8648-8', element);

  /// value8653_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value8653_8([this.element])
      : dbValue = '8653-8',
        super('8653-8', element);

  /// value8716_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentSectionCodes.value8716_3([this.element])
      : dbValue = '8716-3',
        super('8716-3', element);

  /// For instances where an Element is present but not value

  DocumentSectionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DocumentSectionCodes._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    '10154-3',
    '10157-6',
    '10160-0',
    '10164-2',
    '10183-2',
    '10184-0',
    '10187-3',
    '10210-3',
    '10216-0',
    '10218-6',
    '10223-6',
    '10222-8',
    '11329-0',
    '11348-0',
    '11369-6',
    '57852-6',
    '11493-4',
    '11535-2',
    '11537-8',
    '18776-5',
    '18841-7',
    '29299-5',
    '29545-1',
    '29549-3',
    '29554-3',
    '29762-2',
    '30954-2',
    '42344-2',
    '42346-7',
    '42348-3',
    '42349-1',
    '46240-8',
    '46241-6',
    '46264-8',
    '47420-5',
    '47519-4',
    '48765-2',
    '48768-6',
    '51848-0',
    '55109-3',
    '55122-6',
    '59768-2',
    '59769-0',
    '59770-8',
    '59771-6',
    '59772-4',
    '59773-2',
    '59775-7',
    '59776-5',
    '61149-1',
    '61150-9',
    '69730-0',
    '8648-8',
    '8653-8',
    '8716-3',
  ];

  /// Returns the enum value with an element attached
  DocumentSectionCodes withElement(Element? newElement) {
    return DocumentSectionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentSectionCodes.$value';
}
