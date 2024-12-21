// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The current state of the list.
class ListStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ListStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ListStatus] from JSON.
  factory ListStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListStatus cannot be constructed from JSON.',
      );
    }
    return ListStatus._(value, element: element);
  }

  /// current
  static final ListStatus current = ListStatus._(
    'current',
  );

  /// retired
  static final ListStatus retired = ListStatus._(
    'retired',
  );

  /// entered_in_error
  static final ListStatus entered_in_error = ListStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ListStatus elementOnly = ListStatus._('');

  /// List of all enum-like values
  static final List<ListStatus> values = [
    current,
    retired,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ListStatus clone() => ListStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ListStatus withElement(Element? newElement) {
    return ListStatus._(
      value,
      element: newElement,
    );
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
  ListStatus copyWith({
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
    return ListStatus._(
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
