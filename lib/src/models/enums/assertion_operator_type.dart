// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of operator to use for assertion.
class AssertionOperatorType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AssertionOperatorType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AssertionOperatorType] from JSON.
  factory AssertionOperatorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionOperatorType cannot be constructed from JSON.',
      );
    }
    return AssertionOperatorType._(value: value, element: element);
  }

  /// equals
  static final AssertionOperatorType equals_ = AssertionOperatorType._(
    value: 'equals',
  );

  /// notEquals
  static final AssertionOperatorType notEquals = AssertionOperatorType._(
    value: 'notEquals',
  );

  /// in_
  static final AssertionOperatorType in_ = AssertionOperatorType._(
    value: 'in',
  );

  /// notIn
  static final AssertionOperatorType notIn = AssertionOperatorType._(
    value: 'notIn',
  );

  /// greaterThan
  static final AssertionOperatorType greaterThan = AssertionOperatorType._(
    value: 'greaterThan',
  );

  /// lessThan
  static final AssertionOperatorType lessThan = AssertionOperatorType._(
    value: 'lessThan',
  );

  /// empty
  static final AssertionOperatorType empty = AssertionOperatorType._(
    value: 'empty',
  );

  /// notEmpty
  static final AssertionOperatorType notEmpty = AssertionOperatorType._(
    value: 'notEmpty',
  );

  /// contains
  static final AssertionOperatorType contains = AssertionOperatorType._(
    value: 'contains',
  );

  /// notContains
  static final AssertionOperatorType notContains = AssertionOperatorType._(
    value: 'notContains',
  );

  /// eval
  static final AssertionOperatorType eval = AssertionOperatorType._(
    value: 'eval',
  );

  /// For instances where an Element is present but not value

  static final AssertionOperatorType elementOnly =
      AssertionOperatorType._(value: '');

  /// List of all enum-like values
  static final List<AssertionOperatorType> values = [
    equals_,
    notEquals,
    in_,
    notIn,
    greaterThan,
    lessThan,
    empty,
    notEmpty,
    contains,
    notContains,
    eval,
  ];

  /// Clones the current instance
  @override
  AssertionOperatorType clone() => AssertionOperatorType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType._(value: value, element: newElement);
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
  AssertionOperatorType copyWith({
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
    return AssertionOperatorType._(
      value: newValue ?? value,
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
