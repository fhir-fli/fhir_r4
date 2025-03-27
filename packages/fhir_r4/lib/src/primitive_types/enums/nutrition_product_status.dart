// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NutritionProductStatus._({
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
  factory NutritionProductStatus(
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
    return NutritionProductStatus._(
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

  /// Create empty [NutritionProductStatus] with element only
  factory NutritionProductStatus.empty() =>
      NutritionProductStatus._(validatedValue: '');

  /// Factory constructor to create [NutritionProductStatus] from JSON.
  factory NutritionProductStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'NutritionProductStatus cannot be constructed from JSON.',);
    }
    return NutritionProductStatus._(validatedValue: value, element: element);
  }

  /// active
  static final NutritionProductStatus active = NutritionProductStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final NutritionProductStatus inactive = NutritionProductStatus._(
    validatedValue: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final NutritionProductStatus entered_in_error =
      NutritionProductStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NutritionProductStatus elementOnly =
      NutritionProductStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<NutritionProductStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  NutritionProductStatus clone() => NutritionProductStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus._(validatedValue: value, element: newElement);
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
    return NutritionProductStatus._(
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
