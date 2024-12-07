// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the Quantity should be understood and represented.
class QuantityComparator extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  QuantityComparator._(super.value, [super.element]);

  /// Factory constructor to create [QuantityComparator] from JSON.
  factory QuantityComparator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuantityComparator cannot be constructed from JSON.',
      );
    }
    return QuantityComparator._(value, element);
  }

  /// lt
  static final QuantityComparator lt = QuantityComparator._(
    '<',
  );

  /// le
  static final QuantityComparator le = QuantityComparator._(
    '<=',
  );

  /// ge
  static final QuantityComparator ge = QuantityComparator._(
    '>=',
  );

  /// gt
  static final QuantityComparator gt = QuantityComparator._(
    '>',
  );

  /// For instances where an Element is present but not value

  static final QuantityComparator elementOnly = QuantityComparator._('');

  /// List of all enum-like values
  static final List<QuantityComparator> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Clones the current instance
  @override
  QuantityComparator clone() => QuantityComparator._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator._(value, newElement);
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
  QuantityComparator copyWith({
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
    return QuantityComparator._(
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
