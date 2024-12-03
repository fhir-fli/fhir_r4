// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
class XPathUsageType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  XPathUsageType._(super.value, [super.element]);

  /// Factory constructor to create [XPathUsageType] from JSON.
  factory XPathUsageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'XPathUsageType cannot be constructed from JSON.',
      );
    }
    return XPathUsageType._(value, element);
  }

  /// normal
  static final XPathUsageType normal = XPathUsageType._(
    'normal',
  );

  /// phonetic
  static final XPathUsageType phonetic = XPathUsageType._(
    'phonetic',
  );

  /// nearby
  static final XPathUsageType nearby = XPathUsageType._(
    'nearby',
  );

  /// distance
  static final XPathUsageType distance = XPathUsageType._(
    'distance',
  );

  /// other
  static final XPathUsageType other = XPathUsageType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final XPathUsageType elementOnly = XPathUsageType._('');

  /// List of all enum-like values
  static final List<XPathUsageType> values = [
    normal,
    phonetic,
    nearby,
    distance,
    other,
  ];

  /// Clones the current instance
  @override
  XPathUsageType clone() => XPathUsageType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  XPathUsageType setElement(
    String name,
    dynamic elementValue,
  ) {
    return XPathUsageType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType._(value, newElement);
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
  XPathUsageType copyWith({
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
    return XPathUsageType._(
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
