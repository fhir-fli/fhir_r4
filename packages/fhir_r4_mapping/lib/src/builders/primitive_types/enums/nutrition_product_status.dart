part of '../primitive_types.dart';

/// Actual enum for NutritionProductStatus
enum NutritionProductStatusBuilderEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NutritionProductStatusBuilderEnum.active:
        return 'active';
      case NutritionProductStatusBuilderEnum.inactive:
        return 'inactive';
      case NutritionProductStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NutritionProductStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return NutritionProductStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NutritionProductStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return NutritionProductStatusBuilderEnum.active;
      case 'inactive':
        return NutritionProductStatusBuilderEnum.inactive;
      case 'entered-in-error':
        return NutritionProductStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NutritionProductStatusBuilder._({
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
  factory NutritionProductStatusBuilder(
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
    final valueEnum = NutritionProductStatusBuilderEnum.fromString(
      valueString,
    );
    return NutritionProductStatusBuilder._(
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

  /// Create empty [NutritionProductStatusBuilder]
  /// with element only
  factory NutritionProductStatusBuilder.empty() =>
      NutritionProductStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [NutritionProductStatusBuilder] from JSON.
  factory NutritionProductStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NutritionProductStatusBuilder cannot be constructed from JSON.',
      );
    }
    return NutritionProductStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for NutritionProductStatusBuilder
  final NutritionProductStatusBuilderEnum? valueEnum;

  /// active
  static NutritionProductStatusBuilder active = NutritionProductStatusBuilder._(
    valueString: 'active',
    valueEnum: NutritionProductStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static NutritionProductStatusBuilder inactive =
      NutritionProductStatusBuilder._(
    valueString: 'inactive',
    valueEnum: NutritionProductStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static NutritionProductStatusBuilder enteredInError =
      NutritionProductStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: NutritionProductStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static NutritionProductStatusBuilder elementOnly =
      NutritionProductStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<NutritionProductStatusBuilder> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  NutritionProductStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return NutritionProductStatusBuilder._(
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
