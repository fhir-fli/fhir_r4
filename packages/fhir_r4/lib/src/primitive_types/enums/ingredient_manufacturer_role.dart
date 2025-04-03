// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The way in which this manufacturer is associated with the ingredient.
/// For example whether it is a possible one (others allowed), or an
/// exclusive authorized one for this ingredient. Note that this is not the
/// manufacturing process role.
class IngredientManufacturerRole extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IngredientManufacturerRole._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory IngredientManufacturerRole(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return IngredientManufacturerRole._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [IngredientManufacturerRole] with element only
  factory IngredientManufacturerRole.empty() =>
      IngredientManufacturerRole._(valueString: '');

  /// Factory constructor to create [IngredientManufacturerRole] from JSON.
  factory IngredientManufacturerRole.fromJson(Map<String, dynamic> json) {
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
      valueString: value,
      element: element,
    );
  }

  /// allowed
  static final IngredientManufacturerRole allowed =
      IngredientManufacturerRole._(
    valueString: 'allowed',
    system:
        'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Manufacturer is specifically allowed for this ingredient'.toFhirString,
  );

  /// possible
  static final IngredientManufacturerRole possible =
      IngredientManufacturerRole._(
    valueString: 'possible',
    system:
        'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Manufacturer is known to make this ingredient in general'.toFhirString,
  );

  /// actual
  static final IngredientManufacturerRole actual = IngredientManufacturerRole._(
    valueString: 'actual',
    system:
        'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Manufacturer actually makes this particular ingredient'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IngredientManufacturerRole elementOnly =
      IngredientManufacturerRole._(valueString: '');

  /// List of all enum-like values
  static final List<IngredientManufacturerRole> values = [
    allowed,
    possible,
    actual,
  ];

  /// Clones the current instance
  @override
  IngredientManufacturerRole clone() => IngredientManufacturerRole._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IngredientManufacturerRole withElement(Element? newElement) {
    return IngredientManufacturerRole._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  IngredientManufacturerRole copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for IngredientManufacturerRole: $newValue');
    }
    return IngredientManufacturerRole._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
