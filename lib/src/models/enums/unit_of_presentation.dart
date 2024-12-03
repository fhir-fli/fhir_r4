// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The presentation type in which an administrable medicinal product is given to a patient.
class UnitOfPresentation extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  UnitOfPresentation._(super.value, [super.element]);

  /// Factory constructor to create [UnitOfPresentation] from JSON.
  factory UnitOfPresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitOfPresentation.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UnitOfPresentation cannot be constructed from JSON.',
      );
    }
    return UnitOfPresentation._(value, element);
  }

  /// value200000002108
  static final UnitOfPresentation value200000002108 = UnitOfPresentation._(
    '200000002108',
  );

  /// value200000002109
  static final UnitOfPresentation value200000002109 = UnitOfPresentation._(
    '200000002109',
  );

  /// value200000002110
  static final UnitOfPresentation value200000002110 = UnitOfPresentation._(
    '200000002110',
  );

  /// value200000002111
  static final UnitOfPresentation value200000002111 = UnitOfPresentation._(
    '200000002111',
  );

  /// value200000002112
  static final UnitOfPresentation value200000002112 = UnitOfPresentation._(
    '200000002112',
  );

  /// value200000002113
  static final UnitOfPresentation value200000002113 = UnitOfPresentation._(
    '200000002113',
  );

  /// value200000002114
  static final UnitOfPresentation value200000002114 = UnitOfPresentation._(
    '200000002114',
  );

  /// value200000002115
  static final UnitOfPresentation value200000002115 = UnitOfPresentation._(
    '200000002115',
  );

  /// value200000002116
  static final UnitOfPresentation value200000002116 = UnitOfPresentation._(
    '200000002116',
  );

  /// value200000002117
  static final UnitOfPresentation value200000002117 = UnitOfPresentation._(
    '200000002117',
  );

  /// value200000002118
  static final UnitOfPresentation value200000002118 = UnitOfPresentation._(
    '200000002118',
  );

  /// value200000002119
  static final UnitOfPresentation value200000002119 = UnitOfPresentation._(
    '200000002119',
  );

  /// value200000002120
  static final UnitOfPresentation value200000002120 = UnitOfPresentation._(
    '200000002120',
  );

  /// value200000002121
  static final UnitOfPresentation value200000002121 = UnitOfPresentation._(
    '200000002121',
  );

  /// value200000002122
  static final UnitOfPresentation value200000002122 = UnitOfPresentation._(
    '200000002122',
  );

  /// value200000002123
  static final UnitOfPresentation value200000002123 = UnitOfPresentation._(
    '200000002123',
  );

  /// value200000002124
  static final UnitOfPresentation value200000002124 = UnitOfPresentation._(
    '200000002124',
  );

  /// value200000002125
  static final UnitOfPresentation value200000002125 = UnitOfPresentation._(
    '200000002125',
  );

  /// value200000002126
  static final UnitOfPresentation value200000002126 = UnitOfPresentation._(
    '200000002126',
  );

  /// value200000002127
  static final UnitOfPresentation value200000002127 = UnitOfPresentation._(
    '200000002127',
  );

  /// value200000002128
  static final UnitOfPresentation value200000002128 = UnitOfPresentation._(
    '200000002128',
  );

  /// value200000002129
  static final UnitOfPresentation value200000002129 = UnitOfPresentation._(
    '200000002129',
  );

  /// value200000002130
  static final UnitOfPresentation value200000002130 = UnitOfPresentation._(
    '200000002130',
  );

  /// value200000002131
  static final UnitOfPresentation value200000002131 = UnitOfPresentation._(
    '200000002131',
  );

  /// value200000002132
  static final UnitOfPresentation value200000002132 = UnitOfPresentation._(
    '200000002132',
  );

  /// value200000002133
  static final UnitOfPresentation value200000002133 = UnitOfPresentation._(
    '200000002133',
  );

  /// value200000002134
  static final UnitOfPresentation value200000002134 = UnitOfPresentation._(
    '200000002134',
  );

  /// value200000002135
  static final UnitOfPresentation value200000002135 = UnitOfPresentation._(
    '200000002135',
  );

  /// value200000002136
  static final UnitOfPresentation value200000002136 = UnitOfPresentation._(
    '200000002136',
  );

  /// value200000002137
  static final UnitOfPresentation value200000002137 = UnitOfPresentation._(
    '200000002137',
  );

  /// value200000002138
  static final UnitOfPresentation value200000002138 = UnitOfPresentation._(
    '200000002138',
  );

  /// value200000002139
  static final UnitOfPresentation value200000002139 = UnitOfPresentation._(
    '200000002139',
  );

  /// value200000002140
  static final UnitOfPresentation value200000002140 = UnitOfPresentation._(
    '200000002140',
  );

  /// value200000002141
  static final UnitOfPresentation value200000002141 = UnitOfPresentation._(
    '200000002141',
  );

  /// value200000002142
  static final UnitOfPresentation value200000002142 = UnitOfPresentation._(
    '200000002142',
  );

  /// value200000002143
  static final UnitOfPresentation value200000002143 = UnitOfPresentation._(
    '200000002143',
  );

  /// value200000002144
  static final UnitOfPresentation value200000002144 = UnitOfPresentation._(
    '200000002144',
  );

  /// value200000002145
  static final UnitOfPresentation value200000002145 = UnitOfPresentation._(
    '200000002145',
  );

  /// value200000002146
  static final UnitOfPresentation value200000002146 = UnitOfPresentation._(
    '200000002146',
  );

  /// value200000002147
  static final UnitOfPresentation value200000002147 = UnitOfPresentation._(
    '200000002147',
  );

  /// value200000002148
  static final UnitOfPresentation value200000002148 = UnitOfPresentation._(
    '200000002148',
  );

  /// value200000002149
  static final UnitOfPresentation value200000002149 = UnitOfPresentation._(
    '200000002149',
  );

  /// value200000002150
  static final UnitOfPresentation value200000002150 = UnitOfPresentation._(
    '200000002150',
  );

  /// value200000002151
  static final UnitOfPresentation value200000002151 = UnitOfPresentation._(
    '200000002151',
  );

  /// value200000002152
  static final UnitOfPresentation value200000002152 = UnitOfPresentation._(
    '200000002152',
  );

  /// value200000002153
  static final UnitOfPresentation value200000002153 = UnitOfPresentation._(
    '200000002153',
  );

  /// value200000002154
  static final UnitOfPresentation value200000002154 = UnitOfPresentation._(
    '200000002154',
  );

  /// value200000002155
  static final UnitOfPresentation value200000002155 = UnitOfPresentation._(
    '200000002155',
  );

  /// value200000002156
  static final UnitOfPresentation value200000002156 = UnitOfPresentation._(
    '200000002156',
  );

  /// value200000002157
  static final UnitOfPresentation value200000002157 = UnitOfPresentation._(
    '200000002157',
  );

  /// value200000002158
  static final UnitOfPresentation value200000002158 = UnitOfPresentation._(
    '200000002158',
  );

  /// value200000002159
  static final UnitOfPresentation value200000002159 = UnitOfPresentation._(
    '200000002159',
  );

  /// value200000002163
  static final UnitOfPresentation value200000002163 = UnitOfPresentation._(
    '200000002163',
  );

  /// value200000002164
  static final UnitOfPresentation value200000002164 = UnitOfPresentation._(
    '200000002164',
  );

  /// value200000002165
  static final UnitOfPresentation value200000002165 = UnitOfPresentation._(
    '200000002165',
  );

  /// value200000002166
  static final UnitOfPresentation value200000002166 = UnitOfPresentation._(
    '200000002166',
  );

  /// For instances where an Element is present but not value

  static final UnitOfPresentation elementOnly = UnitOfPresentation._('');

  /// List of all enum-like values
  static final List<UnitOfPresentation> values = [
    value200000002108,
    value200000002109,
    value200000002110,
    value200000002111,
    value200000002112,
    value200000002113,
    value200000002114,
    value200000002115,
    value200000002116,
    value200000002117,
    value200000002118,
    value200000002119,
    value200000002120,
    value200000002121,
    value200000002122,
    value200000002123,
    value200000002124,
    value200000002125,
    value200000002126,
    value200000002127,
    value200000002128,
    value200000002129,
    value200000002130,
    value200000002131,
    value200000002132,
    value200000002133,
    value200000002134,
    value200000002135,
    value200000002136,
    value200000002137,
    value200000002138,
    value200000002139,
    value200000002140,
    value200000002141,
    value200000002142,
    value200000002143,
    value200000002144,
    value200000002145,
    value200000002146,
    value200000002147,
    value200000002148,
    value200000002149,
    value200000002150,
    value200000002151,
    value200000002152,
    value200000002153,
    value200000002154,
    value200000002155,
    value200000002156,
    value200000002157,
    value200000002158,
    value200000002159,
    value200000002163,
    value200000002164,
    value200000002165,
    value200000002166,
  ];

  /// Clones the current instance
  @override
  UnitOfPresentation clone() => UnitOfPresentation._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  UnitOfPresentation setElement(
    String name,
    dynamic elementValue,
  ) {
    return UnitOfPresentation._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  UnitOfPresentation withElement(Element? newElement) {
    return UnitOfPresentation._(value, newElement);
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
  UnitOfPresentation copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return UnitOfPresentation._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
