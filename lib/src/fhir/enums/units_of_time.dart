// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A unit of time (units from UCUM).
class UnitsOfTime extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  UnitsOfTime._(super.value, [super.element]);

  /// Factory constructor to create [UnitsOfTime] from JSON.
  factory UnitsOfTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTime.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('UnitsOfTime cannot be constructed from JSON.');
    }
    return UnitsOfTime._(value, element);
  }

  /// s
  static final UnitsOfTime s = UnitsOfTime._(
    's',
  );

  /// min
  static final UnitsOfTime min = UnitsOfTime._(
    'min',
  );

  /// h
  static final UnitsOfTime h = UnitsOfTime._(
    'h',
  );

  /// d
  static final UnitsOfTime d = UnitsOfTime._(
    'd',
  );

  /// wk
  static final UnitsOfTime wk = UnitsOfTime._(
    'wk',
  );

  /// mo
  static final UnitsOfTime mo = UnitsOfTime._(
    'mo',
  );

  /// a
  static final UnitsOfTime a = UnitsOfTime._(
    'a',
  );

  /// For instances where an Element is present but not value

  static final UnitsOfTime elementOnly = UnitsOfTime._('');

  /// List of all enum-like values
  static final List<UnitsOfTime> values = [
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Clones the current instance
  @override
  UnitsOfTime clone() => UnitsOfTime._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  UnitsOfTime setElement(
    String name,
    dynamic elementValue,
  ) {
    return UnitsOfTime._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime._(value, newElement);
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
  UnitsOfTime copyWith({
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
    return UnitsOfTime._(
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
