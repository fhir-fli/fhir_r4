// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the source.
class StructureMapSourceListMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StructureMapSourceListMode._(super.value, [super.element]);

  /// Factory constructor to create [StructureMapSourceListMode] from JSON.
  factory StructureMapSourceListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapSourceListMode cannot be constructed from JSON.',
      );
    }
    return StructureMapSourceListMode._(value, element);
  }

  /// first
  static final StructureMapSourceListMode first = StructureMapSourceListMode._(
    'first',
  );

  /// not_first
  static final StructureMapSourceListMode not_first =
      StructureMapSourceListMode._(
    'not_first',
  );

  /// last
  static final StructureMapSourceListMode last = StructureMapSourceListMode._(
    'last',
  );

  /// not_last
  static final StructureMapSourceListMode not_last =
      StructureMapSourceListMode._(
    'not_last',
  );

  /// only_one
  static final StructureMapSourceListMode only_one =
      StructureMapSourceListMode._(
    'only_one',
  );

  /// For instances where an Element is present but not value

  static final StructureMapSourceListMode elementOnly =
      StructureMapSourceListMode._('');

  /// List of all enum-like values
  static final List<StructureMapSourceListMode> values = [
    first,
    not_first,
    last,
    not_last,
    only_one,
  ];

  /// Clones the current instance
  @override
  StructureMapSourceListMode clone() => StructureMapSourceListMode._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  StructureMapSourceListMode setElement(
    String name,
    dynamic elementValue,
  ) {
    return StructureMapSourceListMode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode._(value, newElement);
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
  StructureMapSourceListMode copyWith({
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
    return StructureMapSourceListMode._(
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
