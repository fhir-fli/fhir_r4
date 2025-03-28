// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The way in which this manufacturer is associated with the ingredient.
/// For example whether it is a possible one (others allowed), or an
/// exclusive authorized one for this ingredient. Note that this is not the
/// manufacturing process role.
class IngredientManufacturerRole extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IngredientManufacturerRole._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return IngredientManufacturerRole._(
      validatedValue: validated,
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
      IngredientManufacturerRole._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// allowed
  static final IngredientManufacturerRole allowed =
      IngredientManufacturerRole._(
    validatedValue: 'allowed',
    system:
        'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Manufacturer is specifically allowed for this ingredient'.toFhirString,
  );

  /// possible
  static final IngredientManufacturerRole possible =
      IngredientManufacturerRole._(
    validatedValue: 'possible',
    system:
        'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Manufacturer is known to make this ingredient in general'.toFhirString,
  );

  /// actual
  static final IngredientManufacturerRole actual = IngredientManufacturerRole._(
    validatedValue: 'actual',
    system:
        'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Manufacturer actually makes this particular ingredient'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IngredientManufacturerRole elementOnly =
      IngredientManufacturerRole._(validatedValue: '');

  /// List of all enum-like values
  static final List<IngredientManufacturerRole> values = [
    allowed,
    possible,
    actual,
  ];

  /// Clones the current instance
  @override
  IngredientManufacturerRole clone() => IngredientManufacturerRole._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IngredientManufacturerRole withElement(Element? newElement) {
    return IngredientManufacturerRole._(
        validatedValue: value, element: newElement,);
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
      validatedValue: newValue ?? value,
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
