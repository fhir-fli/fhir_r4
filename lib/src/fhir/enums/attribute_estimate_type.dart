// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A statistic about a statistic, e.g. Confidence interval or p-value
class AttributeEstimateType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AttributeEstimateType._(super.value, [super.element]);

  /// Factory constructor to create [AttributeEstimateType] from JSON.
  factory AttributeEstimateType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AttributeEstimateType.elementOnly.withElement(element);
    }
    return AttributeEstimateType._(value, element);
  }

  /// value0000419
  static final AttributeEstimateType value0000419 = AttributeEstimateType._(
    '0000419',
  );

  /// C53324
  static final AttributeEstimateType C53324 = AttributeEstimateType._(
    'C53324',
  );

  /// value0000455
  static final AttributeEstimateType value0000455 = AttributeEstimateType._(
    '0000455',
  );

  /// value0000420
  static final AttributeEstimateType value0000420 = AttributeEstimateType._(
    '0000420',
  );

  /// C53245
  static final AttributeEstimateType C53245 = AttributeEstimateType._(
    'C53245',
  );

  /// C44185
  static final AttributeEstimateType C44185 = AttributeEstimateType._(
    'C44185',
  );

  /// C38013
  static final AttributeEstimateType C38013 = AttributeEstimateType._(
    'C38013',
  );

  /// C53322
  static final AttributeEstimateType C53322 = AttributeEstimateType._(
    'C53322',
  );

  /// value0000037
  static final AttributeEstimateType value0000037 = AttributeEstimateType._(
    '0000037',
  );

  /// value0000421
  static final AttributeEstimateType value0000421 = AttributeEstimateType._(
    '0000421',
  );

  /// C48918
  static final AttributeEstimateType C48918 = AttributeEstimateType._(
    'C48918',
  );

  /// For instances where an Element is present but not value

  static final AttributeEstimateType elementOnly = AttributeEstimateType._('');

  /// List of all enum-like values
  static final List<AttributeEstimateType> values = [
    value0000419,
    C53324,
    value0000455,
    value0000420,
    C53245,
    C44185,
    C38013,
    C53322,
    value0000037,
    value0000421,
    C48918,
  ];

  /// Clones the current instance
  @override
  AttributeEstimateType clone() =>
      AttributeEstimateType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AttributeEstimateType setElement(String name, dynamic elementValue) {
    return AttributeEstimateType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AttributeEstimateType withElement(Element? newElement) {
    return AttributeEstimateType._(value, newElement);
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
  AttributeEstimateType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AttributeEstimateType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
