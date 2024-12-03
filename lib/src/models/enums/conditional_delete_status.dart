// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the server supports conditional delete.
class ConditionalDeleteStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionalDeleteStatus._(super.value, [super.element]);

  /// Factory constructor to create [ConditionalDeleteStatus] from JSON.
  factory ConditionalDeleteStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalDeleteStatus cannot be constructed from JSON.',
      );
    }
    return ConditionalDeleteStatus._(value, element);
  }

  /// not_supported
  static final ConditionalDeleteStatus not_supported =
      ConditionalDeleteStatus._(
    'not-supported',
  );

  /// single
  static final ConditionalDeleteStatus single = ConditionalDeleteStatus._(
    'single',
  );

  /// multiple
  static final ConditionalDeleteStatus multiple = ConditionalDeleteStatus._(
    'multiple',
  );

  /// For instances where an Element is present but not value

  static final ConditionalDeleteStatus elementOnly =
      ConditionalDeleteStatus._('');

  /// List of all enum-like values
  static final List<ConditionalDeleteStatus> values = [
    not_supported,
    single,
    multiple,
  ];

  /// Clones the current instance
  @override
  ConditionalDeleteStatus clone() => ConditionalDeleteStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConditionalDeleteStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConditionalDeleteStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus._(value, newElement);
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
  ConditionalDeleteStatus copyWith({
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
    return ConditionalDeleteStatus._(
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
