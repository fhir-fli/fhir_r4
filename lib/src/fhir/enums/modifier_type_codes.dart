// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Modifier type codes.
class ModifierTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ModifierTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ModifierTypeCodes] from JSON.
  factory ModifierTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ModifierTypeCodes.elementOnly.withElement(element);
    }
    return ModifierTypeCodes._(value, element);
  }

  /// a
  static final ModifierTypeCodes a = ModifierTypeCodes._(
    'a',
  );

  /// b
  static final ModifierTypeCodes b = ModifierTypeCodes._(
    'b',
  );

  /// c
  static final ModifierTypeCodes c = ModifierTypeCodes._(
    'c',
  );

  /// e
  static final ModifierTypeCodes e = ModifierTypeCodes._(
    'e',
  );

  /// rooh
  static final ModifierTypeCodes rooh = ModifierTypeCodes._(
    'rooh',
  );

  /// x
  static final ModifierTypeCodes x = ModifierTypeCodes._(
    'x',
  );

  /// For instances where an Element is present but not value

  static final ModifierTypeCodes elementOnly = ModifierTypeCodes._('');

  /// List of all enum-like values
  static final List<ModifierTypeCodes> values = [
    a,
    b,
    c,
    e,
    rooh,
    x,
  ];

  /// Clones the current instance
  @override
  ModifierTypeCodes clone() =>
      ModifierTypeCodes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ModifierTypeCodes setElement(String name, dynamic elementValue) {
    return ModifierTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ModifierTypeCodes withElement(Element? newElement) {
    return ModifierTypeCodes._(value, newElement);
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
  ModifierTypeCodes copyWith({
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
    return ModifierTypeCodes._(
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
