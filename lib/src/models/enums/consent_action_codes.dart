// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Consent Action codes.
class ConsentActionCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentActionCodes._(super.value, [super.element]);

  /// Factory constructor to create [ConsentActionCodes] from JSON.
  factory ConsentActionCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentActionCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentActionCodes cannot be constructed from JSON.',
      );
    }
    return ConsentActionCodes._(value, element);
  }

  /// collect
  static final ConsentActionCodes collect = ConsentActionCodes._(
    'collect',
  );

  /// access
  static final ConsentActionCodes access = ConsentActionCodes._(
    'access',
  );

  /// use
  static final ConsentActionCodes use = ConsentActionCodes._(
    'use',
  );

  /// disclose
  static final ConsentActionCodes disclose = ConsentActionCodes._(
    'disclose',
  );

  /// correct
  static final ConsentActionCodes correct = ConsentActionCodes._(
    'correct',
  );

  /// For instances where an Element is present but not value

  static final ConsentActionCodes elementOnly = ConsentActionCodes._('');

  /// List of all enum-like values
  static final List<ConsentActionCodes> values = [
    collect,
    access,
    use,
    disclose,
    correct,
  ];

  /// Clones the current instance
  @override
  ConsentActionCodes clone() => ConsentActionCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConsentActionCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConsentActionCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConsentActionCodes withElement(Element? newElement) {
    return ConsentActionCodes._(value, newElement);
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
  ConsentActionCodes copyWith({
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
    return ConsentActionCodes._(
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
