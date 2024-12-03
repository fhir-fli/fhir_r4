// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of dose or rate specified.
class DoseAndRateType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DoseAndRateType._(super.value, [super.element]);

  /// Factory constructor to create [DoseAndRateType] from JSON.
  factory DoseAndRateType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DoseAndRateType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DoseAndRateType cannot be constructed from JSON.',
      );
    }
    return DoseAndRateType._(value, element);
  }

  /// calculated
  static final DoseAndRateType calculated = DoseAndRateType._(
    'calculated',
  );

  /// ordered
  static final DoseAndRateType ordered = DoseAndRateType._(
    'ordered',
  );

  /// For instances where an Element is present but not value

  static final DoseAndRateType elementOnly = DoseAndRateType._('');

  /// List of all enum-like values
  static final List<DoseAndRateType> values = [
    calculated,
    ordered,
  ];

  /// Clones the current instance
  @override
  DoseAndRateType clone() => DoseAndRateType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DoseAndRateType setElement(
    String name,
    dynamic elementValue,
  ) {
    return DoseAndRateType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DoseAndRateType withElement(Element? newElement) {
    return DoseAndRateType._(value, newElement);
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
  DoseAndRateType copyWith({
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
    return DoseAndRateType._(
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
