// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.
class ExampleMessageReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleMessageReasonCodes._(super.value, [super.element]);

  /// Factory constructor to create [ExampleMessageReasonCodes] from JSON.
  factory ExampleMessageReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleMessageReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleMessageReasonCodes cannot be constructed from JSON.',
      );
    }
    return ExampleMessageReasonCodes._(value, element);
  }

  /// admit
  static final ExampleMessageReasonCodes admit = ExampleMessageReasonCodes._(
    'admit',
  );

  /// discharge
  static final ExampleMessageReasonCodes discharge =
      ExampleMessageReasonCodes._(
    'discharge',
  );

  /// absent
  static final ExampleMessageReasonCodes absent = ExampleMessageReasonCodes._(
    'absent',
  );

  /// return_
  static final ExampleMessageReasonCodes return_ = ExampleMessageReasonCodes._(
    'return',
  );

  /// moved
  static final ExampleMessageReasonCodes moved = ExampleMessageReasonCodes._(
    'moved',
  );

  /// edit
  static final ExampleMessageReasonCodes edit = ExampleMessageReasonCodes._(
    'edit',
  );

  /// For instances where an Element is present but not value

  static final ExampleMessageReasonCodes elementOnly =
      ExampleMessageReasonCodes._('');

  /// List of all enum-like values
  static final List<ExampleMessageReasonCodes> values = [
    admit,
    discharge,
    absent,
    return_,
    moved,
    edit,
  ];

  /// Clones the current instance
  @override
  ExampleMessageReasonCodes clone() => ExampleMessageReasonCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExampleMessageReasonCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExampleMessageReasonCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExampleMessageReasonCodes withElement(Element? newElement) {
    return ExampleMessageReasonCodes._(value, newElement);
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
  ExampleMessageReasonCodes copyWith({
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
    return ExampleMessageReasonCodes._(
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
