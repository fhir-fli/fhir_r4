// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The way in which this manufacturer is associated with the ingredient.
/// For example whether it is a possible one (others allowed), or an
/// exclusive authorized one for this ingredient. Note that this is not the
/// manufacturing process role.
class IngredientManufacturerRole extends FhirCode {
  // Private constructor for internal use (like enum)
  IngredientManufacturerRole._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [IngredientManufacturerRole] with element only
  factory IngredientManufacturerRole.empty() =>
      IngredientManufacturerRole._('');

  /// Factory constructor to create [IngredientManufacturerRole] from JSON.
  factory IngredientManufacturerRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientManufacturerRole.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IngredientManufacturerRole cannot be constructed from JSON.',
      );
    }
    return IngredientManufacturerRole._(
      value,
      element: element,
    );
  }

  /// allowed
  static final IngredientManufacturerRole allowed =
      IngredientManufacturerRole._(
    'allowed',
  );

  /// possible
  static final IngredientManufacturerRole possible =
      IngredientManufacturerRole._(
    'possible',
  );

  /// actual
  static final IngredientManufacturerRole actual = IngredientManufacturerRole._(
    'actual',
  );

  /// For instances where an Element is present but not value

  static final IngredientManufacturerRole elementOnly =
      IngredientManufacturerRole._('');

  /// List of all enum-like values
  static final List<IngredientManufacturerRole> values = [
    allowed,
    possible,
    actual,
  ];

  /// Clones the current instance
  @override
  IngredientManufacturerRole clone() => IngredientManufacturerRole._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IngredientManufacturerRole withElement(Element? newElement) {
    return IngredientManufacturerRole._(
      value,
      element: newElement,
    );
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
  IngredientManufacturerRole copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return IngredientManufacturerRole._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
