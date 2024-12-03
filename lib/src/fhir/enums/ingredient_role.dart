// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A classification of the ingredient identifying its purpose within the product.
class IngredientRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  IngredientRole._(super.value, [super.element]);

  /// Factory constructor to create [IngredientRole] from JSON.
  factory IngredientRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientRole.elementOnly.withElement(element);
    }
    return IngredientRole._(value, element);
  }

  /// value100000072072
  static final IngredientRole value100000072072 = IngredientRole._(
    '100000072072',
  );

  /// value100000072073
  static final IngredientRole value100000072073 = IngredientRole._(
    '100000072073',
  );

  /// value100000072082
  static final IngredientRole value100000072082 = IngredientRole._(
    '100000072082',
  );

  /// value100000136065
  static final IngredientRole value100000136065 = IngredientRole._(
    '100000136065',
  );

  /// value100000136066
  static final IngredientRole value100000136066 = IngredientRole._(
    '100000136066',
  );

  /// value100000136178
  static final IngredientRole value100000136178 = IngredientRole._(
    '100000136178',
  );

  /// value100000136179
  static final IngredientRole value100000136179 = IngredientRole._(
    '100000136179',
  );

  /// value100000136561
  static final IngredientRole value100000136561 = IngredientRole._(
    '100000136561',
  );

  /// value200000003427
  static final IngredientRole value200000003427 = IngredientRole._(
    '200000003427',
  );

  /// For instances where an Element is present but not value

  static final IngredientRole elementOnly = IngredientRole._('');

  /// List of all enum-like values
  static final List<IngredientRole> values = [
    value100000072072,
    value100000072073,
    value100000072082,
    value100000136065,
    value100000136066,
    value100000136178,
    value100000136179,
    value100000136561,
    value200000003427,
  ];

  /// Clones the current instance
  @override
  IngredientRole clone() =>
      IngredientRole._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  IngredientRole setElement(String name, dynamic elementValue) {
    return IngredientRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  IngredientRole withElement(Element? newElement) {
    return IngredientRole._(value, newElement);
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
  IngredientRole copyWith({
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
    return IngredientRole._(
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
