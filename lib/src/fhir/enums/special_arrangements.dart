// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the kinds of special arrangements in place for a patients visit.
class SpecialArrangements extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SpecialArrangements._(super.value, [super.element]);

  /// Factory constructor to create [SpecialArrangements] from JSON.
  factory SpecialArrangements.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialArrangements.elementOnly.withElement(element);
    }
    return SpecialArrangements._(value, element);
  }

  /// wheel
  static final SpecialArrangements wheel = SpecialArrangements._(
    'wheel',
  );

  /// add_bed
  static final SpecialArrangements add_bed = SpecialArrangements._(
    'add-bed',
  );

  /// int_
  static final SpecialArrangements int_ = SpecialArrangements._(
    'int',
  );

  /// att
  static final SpecialArrangements att = SpecialArrangements._(
    'att',
  );

  /// dog
  static final SpecialArrangements dog = SpecialArrangements._(
    'dog',
  );

  /// For instances where an Element is present but not value

  static final SpecialArrangements elementOnly = SpecialArrangements._('');

  /// List of all enum-like values
  static final List<SpecialArrangements> values = [
    wheel,
    add_bed,
    int_,
    att,
    dog,
  ];

  /// Clones the current instance
  @override
  SpecialArrangements clone() =>
      SpecialArrangements._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SpecialArrangements setElement(String name, dynamic elementValue) {
    return SpecialArrangements._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SpecialArrangements withElement(Element? newElement) {
    return SpecialArrangements._(value, newElement);
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
  SpecialArrangements copyWith({
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
    return SpecialArrangements._(
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
