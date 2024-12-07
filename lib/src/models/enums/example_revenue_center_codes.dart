// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Revenue Center codes.
class ExampleRevenueCenterCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleRevenueCenterCodes._(super.value, [super.element]);

  /// Factory constructor to create [ExampleRevenueCenterCodes] from JSON.
  factory ExampleRevenueCenterCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRevenueCenterCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleRevenueCenterCodes cannot be constructed from JSON.',
      );
    }
    return ExampleRevenueCenterCodes._(value, element);
  }

  /// value0370
  static final ExampleRevenueCenterCodes value0370 =
      ExampleRevenueCenterCodes._(
    '0370',
  );

  /// value0420
  static final ExampleRevenueCenterCodes value0420 =
      ExampleRevenueCenterCodes._(
    '0420',
  );

  /// value0421
  static final ExampleRevenueCenterCodes value0421 =
      ExampleRevenueCenterCodes._(
    '0421',
  );

  /// value0440
  static final ExampleRevenueCenterCodes value0440 =
      ExampleRevenueCenterCodes._(
    '0440',
  );

  /// value0441
  static final ExampleRevenueCenterCodes value0441 =
      ExampleRevenueCenterCodes._(
    '0441',
  );

  /// value0450
  static final ExampleRevenueCenterCodes value0450 =
      ExampleRevenueCenterCodes._(
    '0450',
  );

  /// value0451
  static final ExampleRevenueCenterCodes value0451 =
      ExampleRevenueCenterCodes._(
    '0451',
  );

  /// value0452
  static final ExampleRevenueCenterCodes value0452 =
      ExampleRevenueCenterCodes._(
    '0452',
  );

  /// value0010
  static final ExampleRevenueCenterCodes value0010 =
      ExampleRevenueCenterCodes._(
    '0010',
  );

  /// For instances where an Element is present but not value

  static final ExampleRevenueCenterCodes elementOnly =
      ExampleRevenueCenterCodes._('');

  /// List of all enum-like values
  static final List<ExampleRevenueCenterCodes> values = [
    value0370,
    value0420,
    value0421,
    value0440,
    value0441,
    value0450,
    value0451,
    value0452,
    value0010,
  ];

  /// Clones the current instance
  @override
  ExampleRevenueCenterCodes clone() => ExampleRevenueCenterCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleRevenueCenterCodes withElement(Element? newElement) {
    return ExampleRevenueCenterCodes._(value, newElement);
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
  ExampleRevenueCenterCodes copyWith({
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
    return ExampleRevenueCenterCodes._(
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
