// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for IngredientManufacturerRole
enum IngredientManufacturerRoleBuilderEnum {
  /// allowed
  allowed,

  /// possible
  possible,

  /// actual
  actual,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IngredientManufacturerRoleBuilderEnum.allowed:
        return 'allowed';
      case IngredientManufacturerRoleBuilderEnum.possible:
        return 'possible';
      case IngredientManufacturerRoleBuilderEnum.actual:
        return 'actual';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IngredientManufacturerRoleBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return IngredientManufacturerRoleBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IngredientManufacturerRoleBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'allowed':
        return IngredientManufacturerRoleBuilderEnum.allowed;
      case 'possible':
        return IngredientManufacturerRoleBuilderEnum.possible;
      case 'actual':
        return IngredientManufacturerRoleBuilderEnum.actual;
    }
    return null;
  }
}

/// The way in which this manufacturer is associated with the ingredient.
/// For example whether it is a possible one (others allowed), or an
/// exclusive authorized one for this ingredient. Note that this is not the
/// manufacturing process role.
class IngredientManufacturerRoleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IngredientManufacturerRoleBuilder._({
    required super.valueString,
    this.valueEnum,
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
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = IngredientManufacturerRoleBuilderEnum.fromString(
      valueString,
    );
    return IngredientManufacturerRoleBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [IngredientManufacturerRoleBuilder]
  /// with element only
  factory IngredientManufacturerRoleBuilder.empty() =>
      IngredientManufacturerRoleBuilder._(valueString: null);

  /// Factory constructor to create
  /// [IngredientManufacturerRoleBuilder] from JSON.
  factory IngredientManufacturerRoleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientManufacturerRoleBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IngredientManufacturerRoleBuilder cannot be constructed from JSON.',
      );
    }
    return IngredientManufacturerRoleBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for IngredientManufacturerRoleBuilder
  final IngredientManufacturerRoleBuilderEnum? valueEnum;

  /// allowed
  static IngredientManufacturerRoleBuilder allowed =
      IngredientManufacturerRoleBuilder._(
    valueString: 'allowed',
    valueEnum: IngredientManufacturerRoleBuilderEnum.allowed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Manufacturer is specifically allowed for this ingredient',
    ),
  );

  /// possible
  static IngredientManufacturerRoleBuilder possible =
      IngredientManufacturerRoleBuilder._(
    valueString: 'possible',
    valueEnum: IngredientManufacturerRoleBuilderEnum.possible,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Manufacturer is known to make this ingredient in general',
    ),
  );

  /// actual
  static IngredientManufacturerRoleBuilder actual =
      IngredientManufacturerRoleBuilder._(
    valueString: 'actual',
    valueEnum: IngredientManufacturerRoleBuilderEnum.actual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Manufacturer actually makes this particular ingredient',
    ),
  );

  /// For instances where an Element is present but not value
  static IngredientManufacturerRoleBuilder elementOnly =
      IngredientManufacturerRoleBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<IngredientManufacturerRoleBuilder> values = [
    allowed,
    possible,
    actual,
  ];

  /// Returns the enum value with an element attached
  IngredientManufacturerRoleBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return IngredientManufacturerRoleBuilder._(
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
}
