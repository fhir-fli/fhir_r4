// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept listing the base codes.
class VisionBase extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  VisionBase._(super.value, [super.element]);

  /// Factory constructor to create [VisionBase] from JSON.
  factory VisionBase.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionBase cannot be constructed from JSON.',
      );
    }
    return VisionBase._(value, element);
  }

  /// up
  static final VisionBase up = VisionBase._(
    'up',
  );

  /// down
  static final VisionBase down = VisionBase._(
    'down',
  );

  /// in_
  static final VisionBase in_ = VisionBase._(
    'in',
  );

  /// out
  static final VisionBase out = VisionBase._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final VisionBase elementOnly = VisionBase._('');

  /// List of all enum-like values
  static final List<VisionBase> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  VisionBase clone() => VisionBase._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  VisionBase setElement(
    String name,
    dynamic elementValue,
  ) {
    return VisionBase._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  VisionBase withElement(Element? newElement) {
    return VisionBase._(value, newElement);
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
  VisionBase copyWith({
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
    return VisionBase._(
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
