// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional read.
class ConditionalReadStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionalReadStatus._(super.value, [super.element]);

  /// Factory constructor to create [ConditionalReadStatus] from JSON.
  factory ConditionalReadStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalReadStatus cannot be constructed from JSON.',
      );
    }
    return ConditionalReadStatus._(value, element);
  }

  /// not_supported
  static final ConditionalReadStatus not_supported = ConditionalReadStatus._(
    'not-supported',
  );

  /// modified_since
  static final ConditionalReadStatus modified_since = ConditionalReadStatus._(
    'modified-since',
  );

  /// not_match
  static final ConditionalReadStatus not_match = ConditionalReadStatus._(
    'not-match',
  );

  /// full_support
  static final ConditionalReadStatus full_support = ConditionalReadStatus._(
    'full-support',
  );

  /// For instances where an Element is present but not value

  static final ConditionalReadStatus elementOnly = ConditionalReadStatus._('');

  /// List of all enum-like values
  static final List<ConditionalReadStatus> values = [
    not_supported,
    modified_since,
    not_match,
    full_support,
  ];

  /// Clones the current instance
  @override
  ConditionalReadStatus clone() => ConditionalReadStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConditionalReadStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConditionalReadStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus._(value, newElement);
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
  ConditionalReadStatus copyWith({
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
    return ConditionalReadStatus._(
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
