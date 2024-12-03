// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.
class FlagStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FlagStatus._(super.value, [super.element]);

  /// Factory constructor to create [FlagStatus] from JSON.
  factory FlagStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FlagStatus cannot be constructed from JSON.',
      );
    }
    return FlagStatus._(value, element);
  }

  /// active
  static final FlagStatus active = FlagStatus._(
    'active',
  );

  /// inactive
  static final FlagStatus inactive = FlagStatus._(
    'inactive',
  );

  /// entered_in_error
  static final FlagStatus entered_in_error = FlagStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FlagStatus elementOnly = FlagStatus._('');

  /// List of all enum-like values
  static final List<FlagStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  FlagStatus clone() => FlagStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FlagStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return FlagStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  FlagStatus withElement(Element? newElement) {
    return FlagStatus._(value, newElement);
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
  FlagStatus copyWith({
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
    return FlagStatus._(
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
