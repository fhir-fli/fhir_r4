// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NutritionProductStatus._(super.value, [super.element]);

  /// Factory constructor to create [NutritionProductStatus] from JSON.
  factory NutritionProductStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatus.elementOnly.withElement(element);
    }
    return NutritionProductStatus._(value, element);
  }

  /// active
  static final NutritionProductStatus active = NutritionProductStatus._(
    'active',
  );

  /// inactive
  static final NutritionProductStatus inactive = NutritionProductStatus._(
    'inactive',
  );

  /// entered_in_error
  static final NutritionProductStatus entered_in_error =
      NutritionProductStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final NutritionProductStatus elementOnly =
      NutritionProductStatus._('');

  /// List of all enum-like values
  static final List<NutritionProductStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  NutritionProductStatus clone() => NutritionProductStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  NutritionProductStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return NutritionProductStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus._(value, newElement);
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
  NutritionProductStatus copyWith({
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
    return NutritionProductStatus._(
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
