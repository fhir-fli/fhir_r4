// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NutritionProductStatus._({
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
  factory NutritionProductStatus(
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
    return NutritionProductStatus._(
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

  /// Create empty [NutritionProductStatus] with element only
  factory NutritionProductStatus.empty() =>
      NutritionProductStatus._(valueString: '');

  /// Factory constructor to create [NutritionProductStatus] from JSON.
  factory NutritionProductStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NutritionProductStatus cannot be constructed from JSON.',
      );
    }
    return NutritionProductStatus._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static final NutritionProductStatus active = NutritionProductStatus._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final NutritionProductStatus inactive = NutritionProductStatus._(
    valueString: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final NutritionProductStatus entered_in_error =
      NutritionProductStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NutritionProductStatus elementOnly =
      NutritionProductStatus._(valueString: '');

  /// List of all enum-like values
  static final List<NutritionProductStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  NutritionProductStatus clone() => NutritionProductStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus._(
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
  NutritionProductStatus copyWith({
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
          'Invalid input for NutritionProductStatus: $newValue');
    }
    return NutritionProductStatus._(
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
