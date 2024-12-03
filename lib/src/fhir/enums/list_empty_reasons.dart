// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// General reasons for a list to be empty. Reasons are either related to a summary list (i.e. problem or medication list) or to a workflow related list (i.e. consultation list).
class ListEmptyReasons extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ListEmptyReasons._(super.value, [super.element]);

  /// Factory constructor to create [ListEmptyReasons] from JSON.
  factory ListEmptyReasons.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListEmptyReasons.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListEmptyReasons cannot be constructed from JSON.',
      );
    }
    return ListEmptyReasons._(value, element);
  }

  /// nilknown
  static final ListEmptyReasons nilknown = ListEmptyReasons._(
    'nilknown',
  );

  /// notasked
  static final ListEmptyReasons notasked = ListEmptyReasons._(
    'notasked',
  );

  /// withheld
  static final ListEmptyReasons withheld = ListEmptyReasons._(
    'withheld',
  );

  /// unavailable
  static final ListEmptyReasons unavailable = ListEmptyReasons._(
    'unavailable',
  );

  /// notstarted
  static final ListEmptyReasons notstarted = ListEmptyReasons._(
    'notstarted',
  );

  /// closed
  static final ListEmptyReasons closed = ListEmptyReasons._(
    'closed',
  );

  /// For instances where an Element is present but not value

  static final ListEmptyReasons elementOnly = ListEmptyReasons._('');

  /// List of all enum-like values
  static final List<ListEmptyReasons> values = [
    nilknown,
    notasked,
    withheld,
    unavailable,
    notstarted,
    closed,
  ];

  /// Clones the current instance
  @override
  ListEmptyReasons clone() => ListEmptyReasons._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ListEmptyReasons setElement(
    String name,
    dynamic elementValue,
  ) {
    return ListEmptyReasons._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ListEmptyReasons withElement(Element? newElement) {
    return ListEmptyReasons._(value, newElement);
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
  ListEmptyReasons copyWith({
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
    return ListEmptyReasons._(
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
