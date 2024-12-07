// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes examples of Benefit Category codes.
class BenefitCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BenefitCategoryCodes._(super.value, [super.element]);

  /// Factory constructor to create [BenefitCategoryCodes] from JSON.
  factory BenefitCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BenefitCategoryCodes cannot be constructed from JSON.',
      );
    }
    return BenefitCategoryCodes._(value, element);
  }

  /// value1
  static final BenefitCategoryCodes value1 = BenefitCategoryCodes._(
    '1',
  );

  /// value2
  static final BenefitCategoryCodes value2 = BenefitCategoryCodes._(
    '2',
  );

  /// value3
  static final BenefitCategoryCodes value3 = BenefitCategoryCodes._(
    '3',
  );

  /// value4
  static final BenefitCategoryCodes value4 = BenefitCategoryCodes._(
    '4',
  );

  /// value5
  static final BenefitCategoryCodes value5 = BenefitCategoryCodes._(
    '5',
  );

  /// value14
  static final BenefitCategoryCodes value14 = BenefitCategoryCodes._(
    '14',
  );

  /// value23
  static final BenefitCategoryCodes value23 = BenefitCategoryCodes._(
    '23',
  );

  /// value24
  static final BenefitCategoryCodes value24 = BenefitCategoryCodes._(
    '24',
  );

  /// value25
  static final BenefitCategoryCodes value25 = BenefitCategoryCodes._(
    '25',
  );

  /// value26
  static final BenefitCategoryCodes value26 = BenefitCategoryCodes._(
    '26',
  );

  /// value27
  static final BenefitCategoryCodes value27 = BenefitCategoryCodes._(
    '27',
  );

  /// value28
  static final BenefitCategoryCodes value28 = BenefitCategoryCodes._(
    '28',
  );

  /// value30
  static final BenefitCategoryCodes value30 = BenefitCategoryCodes._(
    '30',
  );

  /// value35
  static final BenefitCategoryCodes value35 = BenefitCategoryCodes._(
    '35',
  );

  /// value36
  static final BenefitCategoryCodes value36 = BenefitCategoryCodes._(
    '36',
  );

  /// value37
  static final BenefitCategoryCodes value37 = BenefitCategoryCodes._(
    '37',
  );

  /// value49
  static final BenefitCategoryCodes value49 = BenefitCategoryCodes._(
    '49',
  );

  /// value55
  static final BenefitCategoryCodes value55 = BenefitCategoryCodes._(
    '55',
  );

  /// value56
  static final BenefitCategoryCodes value56 = BenefitCategoryCodes._(
    '56',
  );

  /// value61
  static final BenefitCategoryCodes value61 = BenefitCategoryCodes._(
    '61',
  );

  /// value62
  static final BenefitCategoryCodes value62 = BenefitCategoryCodes._(
    '62',
  );

  /// value63
  static final BenefitCategoryCodes value63 = BenefitCategoryCodes._(
    '63',
  );

  /// value69
  static final BenefitCategoryCodes value69 = BenefitCategoryCodes._(
    '69',
  );

  /// value76
  static final BenefitCategoryCodes value76 = BenefitCategoryCodes._(
    '76',
  );

  /// F1
  static final BenefitCategoryCodes F1 = BenefitCategoryCodes._(
    'F1',
  );

  /// F3
  static final BenefitCategoryCodes F3 = BenefitCategoryCodes._(
    'F3',
  );

  /// F4
  static final BenefitCategoryCodes F4 = BenefitCategoryCodes._(
    'F4',
  );

  /// F6
  static final BenefitCategoryCodes F6 = BenefitCategoryCodes._(
    'F6',
  );

  /// For instances where an Element is present but not value

  static final BenefitCategoryCodes elementOnly = BenefitCategoryCodes._('');

  /// List of all enum-like values
  static final List<BenefitCategoryCodes> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value14,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value30,
    value35,
    value36,
    value37,
    value49,
    value55,
    value56,
    value61,
    value62,
    value63,
    value69,
    value76,
    F1,
    F3,
    F4,
    F6,
  ];

  /// Clones the current instance
  @override
  BenefitCategoryCodes clone() => BenefitCategoryCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BenefitCategoryCodes withElement(Element? newElement) {
    return BenefitCategoryCodes._(value, newElement);
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
  BenefitCategoryCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BenefitCategoryCodes._(
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
