// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value sets refers to a specific supply item.
class SupplyItemType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SupplyItemType._(super.value, [super.element]);

  /// Factory constructor to create [SupplyItemType] from JSON.
  factory SupplyItemType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyItemType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyItemType cannot be constructed from JSON.',
      );
    }
    return SupplyItemType._(value, element);
  }

  /// medication
  static final SupplyItemType medication = SupplyItemType._(
    'medication',
  );

  /// device
  static final SupplyItemType device = SupplyItemType._(
    'device',
  );

  /// For instances where an Element is present but not value

  static final SupplyItemType elementOnly = SupplyItemType._('');

  /// List of all enum-like values
  static final List<SupplyItemType> values = [
    medication,
    device,
  ];

  /// Clones the current instance
  @override
  SupplyItemType clone() => SupplyItemType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SupplyItemType setElement(
    String name,
    dynamic elementValue,
  ) {
    return SupplyItemType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SupplyItemType withElement(Element? newElement) {
    return SupplyItemType._(value, newElement);
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
  SupplyItemType copyWith({
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
    return SupplyItemType._(
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
