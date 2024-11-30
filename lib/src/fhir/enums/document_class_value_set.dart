// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is the code specifying the high-level kind of document (e.g. Prescription, Discharge Summary, Report, etc.). Note: Class code for documents comes from LOINC, and is based upon one of the following:The type of service described by the document. It is described at a very high level in Section 7.3 of the LOINC Manual. The type study performed. It was determined by identifying modalities for study reports. The section of the chart where the document is placed. It was determined from the SETs created for Claims Attachment requests.
class DocumentClassValueSet {
  // Private constructor for internal use (like enum)
  DocumentClassValueSet._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DocumentClassValueSet values
  /// value11369_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11369_6 = DocumentClassValueSet._(
    '11369-6',
  );

  /// value11485_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11485_0 = DocumentClassValueSet._(
    '11485-0',
  );

  /// value11486_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11486_8 = DocumentClassValueSet._(
    '11486-8',
  );

  /// value11488_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11488_4 = DocumentClassValueSet._(
    '11488-4',
  );

  /// value11506_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11506_3 = DocumentClassValueSet._(
    '11506-3',
  );

  /// value11543_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11543_6 = DocumentClassValueSet._(
    '11543-6',
  );

  /// value15508_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value15508_5 = DocumentClassValueSet._(
    '15508-5',
  );

  /// value18726_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value18726_0 = DocumentClassValueSet._(
    '18726-0',
  );

  /// value18761_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value18761_7 = DocumentClassValueSet._(
    '18761-7',
  );

  /// value18842_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value18842_5 = DocumentClassValueSet._(
    '18842-5',
  );

  /// value26436_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value26436_6 = DocumentClassValueSet._(
    '26436-6',
  );

  /// value26441_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value26441_6 = DocumentClassValueSet._(
    '26441-6',
  );

  /// value26442_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value26442_4 = DocumentClassValueSet._(
    '26442-4',
  );

  /// value27895_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value27895_2 = DocumentClassValueSet._(
    '27895-2',
  );

  /// value27896_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value27896_0 = DocumentClassValueSet._(
    '27896-0',
  );

  /// value27897_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value27897_8 = DocumentClassValueSet._(
    '27897-8',
  );

  /// value27898_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value27898_6 = DocumentClassValueSet._(
    '27898-6',
  );

  /// value28570_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value28570_0 = DocumentClassValueSet._(
    '28570-0',
  );

  /// value28619_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value28619_5 = DocumentClassValueSet._(
    '28619-5',
  );

  /// value28634_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value28634_4 = DocumentClassValueSet._(
    '28634-4',
  );

  /// value29749_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value29749_9 = DocumentClassValueSet._(
    '29749-9',
  );

  /// value29750_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value29750_7 = DocumentClassValueSet._(
    '29750-7',
  );

  /// value29751_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value29751_5 = DocumentClassValueSet._(
    '29751-5',
  );

  /// value29752_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value29752_3 = DocumentClassValueSet._(
    '29752-3',
  );

  /// value34109_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34109_9 = DocumentClassValueSet._(
    '34109-9',
  );

  /// value34117_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34117_2 = DocumentClassValueSet._(
    '34117-2',
  );

  /// value34121_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34121_4 = DocumentClassValueSet._(
    '34121-4',
  );

  /// value34122_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34122_2 = DocumentClassValueSet._(
    '34122-2',
  );

  /// value34133_9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34133_9 = DocumentClassValueSet._(
    '34133-9',
  );

  /// value34140_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34140_4 = DocumentClassValueSet._(
    '34140-4',
  );

  /// value34748_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34748_4 = DocumentClassValueSet._(
    '34748-4',
  );

  /// value34775_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value34775_7 = DocumentClassValueSet._(
    '34775-7',
  );

  /// value47039_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value47039_3 = DocumentClassValueSet._(
    '47039-3',
  );

  /// value47042_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value47042_7 = DocumentClassValueSet._(
    '47042-7',
  );

  /// value47045_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value47045_0 = DocumentClassValueSet._(
    '47045-0',
  );

  /// value47046_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value47046_8 = DocumentClassValueSet._(
    '47046-8',
  );

  /// value47049_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value47049_2 = DocumentClassValueSet._(
    '47049-2',
  );

  /// value57017_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value57017_6 = DocumentClassValueSet._(
    '57017-6',
  );

  /// value57016_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value57016_8 = DocumentClassValueSet._(
    '57016-8',
  );

  /// value56445_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value56445_0 = DocumentClassValueSet._(
    '56445-0',
  );

  /// value53576_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value53576_5 = DocumentClassValueSet._(
    '53576-5',
  );

  /// value56447_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value56447_6 = DocumentClassValueSet._(
    '56447-6',
  );

  /// value18748_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value18748_4 = DocumentClassValueSet._(
    '18748-4',
  );

  /// value11504_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value11504_8 = DocumentClassValueSet._(
    '11504-8',
  );

  /// value57133_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentClassValueSet value57133_1 = DocumentClassValueSet._(
    '57133-1',
  );

  /// For instances where an Element is present but not value

  static final DocumentClassValueSet elementOnly = DocumentClassValueSet._('');

  /// List of all enum-like values
  static final List<DocumentClassValueSet> values = [
    value11369_6,
    value11485_0,
    value11486_8,
    value11488_4,
    value11506_3,
    value11543_6,
    value15508_5,
    value18726_0,
    value18761_7,
    value18842_5,
    value26436_6,
    value26441_6,
    value26442_4,
    value27895_2,
    value27896_0,
    value27897_8,
    value27898_6,
    value28570_0,
    value28619_5,
    value28634_4,
    value29749_9,
    value29750_7,
    value29751_5,
    value29752_3,
    value34109_9,
    value34117_2,
    value34121_4,
    value34122_2,
    value34133_9,
    value34140_4,
    value34748_4,
    value34775_7,
    value47039_3,
    value47042_7,
    value47045_0,
    value47046_8,
    value47049_2,
    value57017_6,
    value57016_8,
    value56445_0,
    value53576_5,
    value56447_6,
    value18748_4,
    value11504_8,
    value57133_1,
  ];

  /// Returns the enum value with an element attached
  DocumentClassValueSet withElement(Element? newElement) {
    return DocumentClassValueSet._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DocumentClassValueSet] from JSON.
  static DocumentClassValueSet fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentClassValueSet.elementOnly.withElement(element);
    }
    return DocumentClassValueSet._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
