// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This is the code specifying the high-level kind of document (e.g. Prescription, Discharge Summary, Report, etc.). Note: Class code for documents comes from LOINC, and is based upon one of the following:The type of service described by the document. It is described at a very high level in Section 7.3 of the LOINC Manual. The type study performed. It was determined by identifying modalities for study reports. The section of the chart where the document is placed. It was determined from the SETs created for Claims Attachment requests.
@Entity()
class DocumentClassValueSet extends FhirCode {
  /// Factory constructor to create [DocumentClassValueSet] from JSON.
  factory DocumentClassValueSet.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentClassValueSet.elementOnly(element);
    }
    if (values.contains(value)) {
      return DocumentClassValueSet._(value, element);
    }
    throw ArgumentError(
      'DocumentClassValueSet.fromJson: JSON value is not a valid value',
    );
  }

  /// value11369_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11369_6([this.element])
      : dbValue = '11369-6',
        super('11369-6', element);

  /// value11485_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11485_0([this.element])
      : dbValue = '11485-0',
        super('11485-0', element);

  /// value11486_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11486_8([this.element])
      : dbValue = '11486-8',
        super('11486-8', element);

  /// value11488_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11488_4([this.element])
      : dbValue = '11488-4',
        super('11488-4', element);

  /// value11506_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11506_3([this.element])
      : dbValue = '11506-3',
        super('11506-3', element);

  /// value11543_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11543_6([this.element])
      : dbValue = '11543-6',
        super('11543-6', element);

  /// value15508_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value15508_5([this.element])
      : dbValue = '15508-5',
        super('15508-5', element);

  /// value18726_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value18726_0([this.element])
      : dbValue = '18726-0',
        super('18726-0', element);

  /// value18761_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value18761_7([this.element])
      : dbValue = '18761-7',
        super('18761-7', element);

  /// value18842_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value18842_5([this.element])
      : dbValue = '18842-5',
        super('18842-5', element);

  /// value26436_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value26436_6([this.element])
      : dbValue = '26436-6',
        super('26436-6', element);

  /// value26441_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value26441_6([this.element])
      : dbValue = '26441-6',
        super('26441-6', element);

  /// value26442_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value26442_4([this.element])
      : dbValue = '26442-4',
        super('26442-4', element);

  /// value27895_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value27895_2([this.element])
      : dbValue = '27895-2',
        super('27895-2', element);

  /// value27896_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value27896_0([this.element])
      : dbValue = '27896-0',
        super('27896-0', element);

  /// value27897_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value27897_8([this.element])
      : dbValue = '27897-8',
        super('27897-8', element);

  /// value27898_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value27898_6([this.element])
      : dbValue = '27898-6',
        super('27898-6', element);

  /// value28570_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value28570_0([this.element])
      : dbValue = '28570-0',
        super('28570-0', element);

  /// value28619_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value28619_5([this.element])
      : dbValue = '28619-5',
        super('28619-5', element);

  /// value28634_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value28634_4([this.element])
      : dbValue = '28634-4',
        super('28634-4', element);

  /// value29749_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value29749_9([this.element])
      : dbValue = '29749-9',
        super('29749-9', element);

  /// value29750_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value29750_7([this.element])
      : dbValue = '29750-7',
        super('29750-7', element);

  /// value29751_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value29751_5([this.element])
      : dbValue = '29751-5',
        super('29751-5', element);

  /// value29752_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value29752_3([this.element])
      : dbValue = '29752-3',
        super('29752-3', element);

  /// value34109_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34109_9([this.element])
      : dbValue = '34109-9',
        super('34109-9', element);

  /// value34117_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34117_2([this.element])
      : dbValue = '34117-2',
        super('34117-2', element);

  /// value34121_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34121_4([this.element])
      : dbValue = '34121-4',
        super('34121-4', element);

  /// value34122_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34122_2([this.element])
      : dbValue = '34122-2',
        super('34122-2', element);

  /// value34133_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34133_9([this.element])
      : dbValue = '34133-9',
        super('34133-9', element);

  /// value34140_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34140_4([this.element])
      : dbValue = '34140-4',
        super('34140-4', element);

  /// value34748_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34748_4([this.element])
      : dbValue = '34748-4',
        super('34748-4', element);

  /// value34775_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value34775_7([this.element])
      : dbValue = '34775-7',
        super('34775-7', element);

  /// value47039_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value47039_3([this.element])
      : dbValue = '47039-3',
        super('47039-3', element);

  /// value47042_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value47042_7([this.element])
      : dbValue = '47042-7',
        super('47042-7', element);

  /// value47045_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value47045_0([this.element])
      : dbValue = '47045-0',
        super('47045-0', element);

  /// value47046_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value47046_8([this.element])
      : dbValue = '47046-8',
        super('47046-8', element);

  /// value47049_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value47049_2([this.element])
      : dbValue = '47049-2',
        super('47049-2', element);

  /// value57017_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value57017_6([this.element])
      : dbValue = '57017-6',
        super('57017-6', element);

  /// value57016_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value57016_8([this.element])
      : dbValue = '57016-8',
        super('57016-8', element);

  /// value56445_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value56445_0([this.element])
      : dbValue = '56445-0',
        super('56445-0', element);

  /// value53576_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value53576_5([this.element])
      : dbValue = '53576-5',
        super('53576-5', element);

  /// value56447_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value56447_6([this.element])
      : dbValue = '56447-6',
        super('56447-6', element);

  /// value18748_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value18748_4([this.element])
      : dbValue = '18748-4',
        super('18748-4', element);

  /// value11504_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value11504_8([this.element])
      : dbValue = '11504-8',
        super('11504-8', element);

  /// value57133_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DocumentClassValueSet.value57133_1([this.element])
      : dbValue = '57133-1',
        super('57133-1', element);

  /// For instances where an Element is present but not value

  DocumentClassValueSet.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DocumentClassValueSet._(super.input, [super.element])
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
    '11369-6',
    '11485-0',
    '11486-8',
    '11488-4',
    '11506-3',
    '11543-6',
    '15508-5',
    '18726-0',
    '18761-7',
    '18842-5',
    '26436-6',
    '26441-6',
    '26442-4',
    '27895-2',
    '27896-0',
    '27897-8',
    '27898-6',
    '28570-0',
    '28619-5',
    '28634-4',
    '29749-9',
    '29750-7',
    '29751-5',
    '29752-3',
    '34109-9',
    '34117-2',
    '34121-4',
    '34122-2',
    '34133-9',
    '34140-4',
    '34748-4',
    '34775-7',
    '47039-3',
    '47042-7',
    '47045-0',
    '47046-8',
    '47049-2',
    '57017-6',
    '57016-8',
    '56445-0',
    '53576-5',
    '56447-6',
    '18748-4',
    '11504-8',
    '57133-1',
  ];

  /// Returns the enum value with an element attached
  DocumentClassValueSet withElement(Element? newElement) {
    return DocumentClassValueSet._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentClassValueSet.$value';
}
