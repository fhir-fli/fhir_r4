// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The way in which this manufacturer is associated with the ingredient.
/// For example whether it is a possible one (others allowed), or an
/// exclusive authorized one for this ingredient. Note that this is not the
/// manufacturing process role.
class IngredientManufacturerRoleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IngredientManufacturerRoleBuilder._({
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
  factory IngredientManufacturerRoleBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return IngredientManufacturerRoleBuilder._(
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

  /// Create empty [IngredientManufacturerRoleBuilder] with element only
  factory IngredientManufacturerRoleBuilder.empty() =>
      IngredientManufacturerRoleBuilder._(validatedValue: '');

  /// Factory constructor to create [IngredientManufacturerRoleBuilder]
  /// from JSON.
  factory IngredientManufacturerRoleBuilder.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientManufacturerRoleBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IngredientManufacturerRoleBuilder cannot be constructed from JSON.',
      );
    }
    return IngredientManufacturerRoleBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// allowed
  static IngredientManufacturerRoleBuilder allowed =
      IngredientManufacturerRoleBuilder._(
    validatedValue: 'allowed',
    system: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Manufacturer is specifically allowed for this ingredient'
        .toFhirStringBuilder,
  );

  /// possible
  static IngredientManufacturerRoleBuilder possible =
      IngredientManufacturerRoleBuilder._(
    validatedValue: 'possible',
    system: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Manufacturer is known to make this ingredient in general'
        .toFhirStringBuilder,
  );

  /// actual
  static IngredientManufacturerRoleBuilder actual =
      IngredientManufacturerRoleBuilder._(
    validatedValue: 'actual',
    system: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Manufacturer actually makes this particular ingredient'
        .toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static IngredientManufacturerRoleBuilder elementOnly =
      IngredientManufacturerRoleBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<IngredientManufacturerRoleBuilder> values = [
    allowed,
    possible,
    actual,
  ];

  /// Clones the current instance
  @override
  IngredientManufacturerRoleBuilder clone() =>
      IngredientManufacturerRoleBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  IngredientManufacturerRoleBuilder withElement(ElementBuilder? newElement) {
    return IngredientManufacturerRoleBuilder._(
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
  IngredientManufacturerRoleBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return IngredientManufacturerRoleBuilder._(
      validatedValue: newValue ?? value,
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
