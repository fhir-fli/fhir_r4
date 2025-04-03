// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NutritionProductStatusBuilder._({
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
    return NutritionProductStatusBuilder._(
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

  /// Create empty [NutritionProductStatusBuilder] with element only
  factory NutritionProductStatusBuilder.empty() =>
      NutritionProductStatusBuilder._(valueString: '');

  /// Factory constructor to create [NutritionProductStatusBuilder]
  /// from JSON.
  factory NutritionProductStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatusBuilder.elementOnly.withElement(element);
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

  /// active
  static NutritionProductStatusBuilder active = NutritionProductStatusBuilder._(
    valueString: 'active',
    system:
        'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// inactive
  static NutritionProductStatusBuilder inactive =
      NutritionProductStatusBuilder._(
    valueString: 'inactive',
    system:
        'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Inactive'.toFhirStringBuilder,
  );

  /// entered_in_error
  static NutritionProductStatusBuilder entered_in_error =
      NutritionProductStatusBuilder._(
    valueString: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static NutritionProductStatusBuilder elementOnly =
      NutritionProductStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<NutritionProductStatusBuilder> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  NutritionProductStatusBuilder clone() => NutritionProductStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  NutritionProductStatusBuilder withElement(ElementBuilder? newElement) {
    return NutritionProductStatusBuilder._(
        valueString: valueString, element: newElement);
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
  NutritionProductStatusBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for NutritionProductStatus: $newValue');
    }
    return NutritionProductStatusBuilder._(
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
