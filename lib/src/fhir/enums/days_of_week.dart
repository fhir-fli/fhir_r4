// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The days of the week.
class DaysOfWeek extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DaysOfWeek._(super.value, [super.element]);

  /// Factory constructor to create [DaysOfWeek] from JSON.
  factory DaysOfWeek.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('DaysOfWeek cannot be constructed from JSON.');
    }
    return DaysOfWeek._(value, element);
  }

  /// mon
  static final DaysOfWeek mon = DaysOfWeek._(
    'mon',
  );

  /// tue
  static final DaysOfWeek tue = DaysOfWeek._(
    'tue',
  );

  /// wed
  static final DaysOfWeek wed = DaysOfWeek._(
    'wed',
  );

  /// thu
  static final DaysOfWeek thu = DaysOfWeek._(
    'thu',
  );

  /// fri
  static final DaysOfWeek fri = DaysOfWeek._(
    'fri',
  );

  /// sat
  static final DaysOfWeek sat = DaysOfWeek._(
    'sat',
  );

  /// sun
  static final DaysOfWeek sun = DaysOfWeek._(
    'sun',
  );

  /// For instances where an Element is present but not value

  static final DaysOfWeek elementOnly = DaysOfWeek._('');

  /// List of all enum-like values
  static final List<DaysOfWeek> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];

  /// Clones the current instance
  @override
  DaysOfWeek clone() => DaysOfWeek._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DaysOfWeek setElement(
    String name,
    dynamic elementValue,
  ) {
    return DaysOfWeek._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek._(value, newElement);
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
  DaysOfWeek copyWith({
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
    return DaysOfWeek._(
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
