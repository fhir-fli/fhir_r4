// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the production.
class StructureMapTargetListMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StructureMapTargetListMode._(super.value, [super.element]);

  /// Factory constructor to create [StructureMapTargetListMode] from JSON.
  factory StructureMapTargetListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTargetListMode cannot be constructed from JSON.',
      );
    }
    return StructureMapTargetListMode._(value, element);
  }

  /// first
  static final StructureMapTargetListMode first = StructureMapTargetListMode._(
    'first',
  );

  /// share
  static final StructureMapTargetListMode share = StructureMapTargetListMode._(
    'share',
  );

  /// last
  static final StructureMapTargetListMode last = StructureMapTargetListMode._(
    'last',
  );

  /// collate
  static final StructureMapTargetListMode collate =
      StructureMapTargetListMode._(
    'collate',
  );

  /// For instances where an Element is present but not value

  static final StructureMapTargetListMode elementOnly =
      StructureMapTargetListMode._('');

  /// List of all enum-like values
  static final List<StructureMapTargetListMode> values = [
    first,
    share,
    last,
    collate,
  ];

  /// Clones the current instance
  @override
  StructureMapTargetListMode clone() => StructureMapTargetListMode._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  StructureMapTargetListMode setElement(
    String name,
    dynamic elementValue,
  ) {
    return StructureMapTargetListMode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  StructureMapTargetListMode withElement(Element? newElement) {
    return StructureMapTargetListMode._(value, newElement);
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
  StructureMapTargetListMode copyWith({
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
    return StructureMapTargetListMode._(
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
