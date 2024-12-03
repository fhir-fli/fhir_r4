// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Common Tag Codes defined by FHIR project
class CommonTags extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommonTags._(super.value, [super.element]);

  /// Factory constructor to create [CommonTags] from JSON.
  factory CommonTags.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonTags.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonTags cannot be constructed from JSON.',
      );
    }
    return CommonTags._(value, element);
  }

  /// actionable
  static final CommonTags actionable = CommonTags._(
    'actionable',
  );

  /// For instances where an Element is present but not value

  static final CommonTags elementOnly = CommonTags._('');

  /// List of all enum-like values
  static final List<CommonTags> values = [
    actionable,
  ];

  /// Clones the current instance
  @override
  CommonTags clone() => CommonTags._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CommonTags setElement(
    String name,
    dynamic elementValue,
  ) {
    return CommonTags._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CommonTags withElement(Element? newElement) {
    return CommonTags._(value, newElement);
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
  CommonTags copyWith({
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
    return CommonTags._(
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
