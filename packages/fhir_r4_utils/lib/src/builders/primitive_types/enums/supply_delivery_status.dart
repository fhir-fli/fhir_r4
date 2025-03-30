// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Status of the supply delivery.
class SupplyDeliveryStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SupplyDeliveryStatusBuilder._({
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
  factory SupplyDeliveryStatusBuilder(
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
    return SupplyDeliveryStatusBuilder._(
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

  /// Create empty [SupplyDeliveryStatusBuilder] with element only
  factory SupplyDeliveryStatusBuilder.empty() =>
      SupplyDeliveryStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [SupplyDeliveryStatusBuilder]
  /// from JSON.
  factory SupplyDeliveryStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyDeliveryStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SupplyDeliveryStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// in_progress
  static SupplyDeliveryStatusBuilder in_progress =
      SupplyDeliveryStatusBuilder._(
    validatedValue: 'in-progress',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// completed
  static SupplyDeliveryStatusBuilder completed = SupplyDeliveryStatusBuilder._(
    validatedValue: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Delivered'.toFhirStringBuilder,
  );

  /// abandoned
  static SupplyDeliveryStatusBuilder abandoned = SupplyDeliveryStatusBuilder._(
    validatedValue: 'abandoned',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Abandoned'.toFhirStringBuilder,
  );

  /// entered_in_error
  static SupplyDeliveryStatusBuilder entered_in_error =
      SupplyDeliveryStatusBuilder._(
    validatedValue: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered In Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SupplyDeliveryStatusBuilder elementOnly =
      SupplyDeliveryStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SupplyDeliveryStatusBuilder> values = [
    in_progress,
    completed,
    abandoned,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SupplyDeliveryStatusBuilder clone() => SupplyDeliveryStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SupplyDeliveryStatusBuilder withElement(ElementBuilder? newElement) {
    return SupplyDeliveryStatusBuilder._(
        validatedValue: value, element: newElement);
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
  SupplyDeliveryStatusBuilder copyWith({
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
    return SupplyDeliveryStatusBuilder._(
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
