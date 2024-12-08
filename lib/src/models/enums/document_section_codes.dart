// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Document section codes (LOINC codes used in CCDA sections).
class DocumentSectionCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DocumentSectionCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DocumentSectionCodes] from JSON.
  factory DocumentSectionCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentSectionCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentSectionCodes cannot be constructed from JSON.',
      );
    }
    return DocumentSectionCodes._(value, element: element);
  }

  /// value10154_3
  static final DocumentSectionCodes value10154_3 = DocumentSectionCodes._(
    '10154-3',
  );

  /// value10157_6
  static final DocumentSectionCodes value10157_6 = DocumentSectionCodes._(
    '10157-6',
  );

  /// value10160_0
  static final DocumentSectionCodes value10160_0 = DocumentSectionCodes._(
    '10160-0',
  );

  /// value10164_2
  static final DocumentSectionCodes value10164_2 = DocumentSectionCodes._(
    '10164-2',
  );

  /// value10183_2
  static final DocumentSectionCodes value10183_2 = DocumentSectionCodes._(
    '10183-2',
  );

  /// value10184_0
  static final DocumentSectionCodes value10184_0 = DocumentSectionCodes._(
    '10184-0',
  );

  /// value10187_3
  static final DocumentSectionCodes value10187_3 = DocumentSectionCodes._(
    '10187-3',
  );

  /// value10210_3
  static final DocumentSectionCodes value10210_3 = DocumentSectionCodes._(
    '10210-3',
  );

  /// value10216_0
  static final DocumentSectionCodes value10216_0 = DocumentSectionCodes._(
    '10216-0',
  );

  /// value10218_6
  static final DocumentSectionCodes value10218_6 = DocumentSectionCodes._(
    '10218-6',
  );

  /// value10223_6
  static final DocumentSectionCodes value10223_6 = DocumentSectionCodes._(
    '10223-6',
  );

  /// value10222_8
  static final DocumentSectionCodes value10222_8 = DocumentSectionCodes._(
    '10222-8',
  );

  /// value11329_0
  static final DocumentSectionCodes value11329_0 = DocumentSectionCodes._(
    '11329-0',
  );

  /// value11348_0
  static final DocumentSectionCodes value11348_0 = DocumentSectionCodes._(
    '11348-0',
  );

  /// value11369_6
  static final DocumentSectionCodes value11369_6 = DocumentSectionCodes._(
    '11369-6',
  );

  /// value57852_6
  static final DocumentSectionCodes value57852_6 = DocumentSectionCodes._(
    '57852-6',
  );

  /// value11493_4
  static final DocumentSectionCodes value11493_4 = DocumentSectionCodes._(
    '11493-4',
  );

  /// value11535_2
  static final DocumentSectionCodes value11535_2 = DocumentSectionCodes._(
    '11535-2',
  );

  /// value11537_8
  static final DocumentSectionCodes value11537_8 = DocumentSectionCodes._(
    '11537-8',
  );

  /// value18776_5
  static final DocumentSectionCodes value18776_5 = DocumentSectionCodes._(
    '18776-5',
  );

  /// value18841_7
  static final DocumentSectionCodes value18841_7 = DocumentSectionCodes._(
    '18841-7',
  );

  /// value29299_5
  static final DocumentSectionCodes value29299_5 = DocumentSectionCodes._(
    '29299-5',
  );

  /// value29545_1
  static final DocumentSectionCodes value29545_1 = DocumentSectionCodes._(
    '29545-1',
  );

  /// value29549_3
  static final DocumentSectionCodes value29549_3 = DocumentSectionCodes._(
    '29549-3',
  );

  /// value29554_3
  static final DocumentSectionCodes value29554_3 = DocumentSectionCodes._(
    '29554-3',
  );

  /// value29762_2
  static final DocumentSectionCodes value29762_2 = DocumentSectionCodes._(
    '29762-2',
  );

  /// value30954_2
  static final DocumentSectionCodes value30954_2 = DocumentSectionCodes._(
    '30954-2',
  );

  /// value42344_2
  static final DocumentSectionCodes value42344_2 = DocumentSectionCodes._(
    '42344-2',
  );

  /// value42346_7
  static final DocumentSectionCodes value42346_7 = DocumentSectionCodes._(
    '42346-7',
  );

  /// value42348_3
  static final DocumentSectionCodes value42348_3 = DocumentSectionCodes._(
    '42348-3',
  );

  /// value42349_1
  static final DocumentSectionCodes value42349_1 = DocumentSectionCodes._(
    '42349-1',
  );

  /// value46240_8
  static final DocumentSectionCodes value46240_8 = DocumentSectionCodes._(
    '46240-8',
  );

  /// value46241_6
  static final DocumentSectionCodes value46241_6 = DocumentSectionCodes._(
    '46241-6',
  );

  /// value46264_8
  static final DocumentSectionCodes value46264_8 = DocumentSectionCodes._(
    '46264-8',
  );

  /// value47420_5
  static final DocumentSectionCodes value47420_5 = DocumentSectionCodes._(
    '47420-5',
  );

  /// value47519_4
  static final DocumentSectionCodes value47519_4 = DocumentSectionCodes._(
    '47519-4',
  );

  /// value48765_2
  static final DocumentSectionCodes value48765_2 = DocumentSectionCodes._(
    '48765-2',
  );

  /// value48768_6
  static final DocumentSectionCodes value48768_6 = DocumentSectionCodes._(
    '48768-6',
  );

  /// value51848_0
  static final DocumentSectionCodes value51848_0 = DocumentSectionCodes._(
    '51848-0',
  );

  /// value55109_3
  static final DocumentSectionCodes value55109_3 = DocumentSectionCodes._(
    '55109-3',
  );

  /// value55122_6
  static final DocumentSectionCodes value55122_6 = DocumentSectionCodes._(
    '55122-6',
  );

  /// value59768_2
  static final DocumentSectionCodes value59768_2 = DocumentSectionCodes._(
    '59768-2',
  );

  /// value59769_0
  static final DocumentSectionCodes value59769_0 = DocumentSectionCodes._(
    '59769-0',
  );

  /// value59770_8
  static final DocumentSectionCodes value59770_8 = DocumentSectionCodes._(
    '59770-8',
  );

  /// value59771_6
  static final DocumentSectionCodes value59771_6 = DocumentSectionCodes._(
    '59771-6',
  );

  /// value59772_4
  static final DocumentSectionCodes value59772_4 = DocumentSectionCodes._(
    '59772-4',
  );

  /// value59773_2
  static final DocumentSectionCodes value59773_2 = DocumentSectionCodes._(
    '59773-2',
  );

  /// value59775_7
  static final DocumentSectionCodes value59775_7 = DocumentSectionCodes._(
    '59775-7',
  );

  /// value59776_5
  static final DocumentSectionCodes value59776_5 = DocumentSectionCodes._(
    '59776-5',
  );

  /// value61149_1
  static final DocumentSectionCodes value61149_1 = DocumentSectionCodes._(
    '61149-1',
  );

  /// value61150_9
  static final DocumentSectionCodes value61150_9 = DocumentSectionCodes._(
    '61150-9',
  );

  /// value69730_0
  static final DocumentSectionCodes value69730_0 = DocumentSectionCodes._(
    '69730-0',
  );

  /// value8648_8
  static final DocumentSectionCodes value8648_8 = DocumentSectionCodes._(
    '8648-8',
  );

  /// value8653_8
  static final DocumentSectionCodes value8653_8 = DocumentSectionCodes._(
    '8653-8',
  );

  /// value8716_3
  static final DocumentSectionCodes value8716_3 = DocumentSectionCodes._(
    '8716-3',
  );

  /// For instances where an Element is present but not value

  static final DocumentSectionCodes elementOnly = DocumentSectionCodes._('');

  /// List of all enum-like values
  static final List<DocumentSectionCodes> values = [
    value10154_3,
    value10157_6,
    value10160_0,
    value10164_2,
    value10183_2,
    value10184_0,
    value10187_3,
    value10210_3,
    value10216_0,
    value10218_6,
    value10223_6,
    value10222_8,
    value11329_0,
    value11348_0,
    value11369_6,
    value57852_6,
    value11493_4,
    value11535_2,
    value11537_8,
    value18776_5,
    value18841_7,
    value29299_5,
    value29545_1,
    value29549_3,
    value29554_3,
    value29762_2,
    value30954_2,
    value42344_2,
    value42346_7,
    value42348_3,
    value42349_1,
    value46240_8,
    value46241_6,
    value46264_8,
    value47420_5,
    value47519_4,
    value48765_2,
    value48768_6,
    value51848_0,
    value55109_3,
    value55122_6,
    value59768_2,
    value59769_0,
    value59770_8,
    value59771_6,
    value59772_4,
    value59773_2,
    value59775_7,
    value59776_5,
    value61149_1,
    value61150_9,
    value69730_0,
    value8648_8,
    value8653_8,
    value8716_3,
  ];

  /// Clones the current instance
  @override
  DocumentSectionCodes clone() => DocumentSectionCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DocumentSectionCodes withElement(Element? newElement) {
    return DocumentSectionCodes._(value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  DocumentSectionCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DocumentSectionCodes._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
