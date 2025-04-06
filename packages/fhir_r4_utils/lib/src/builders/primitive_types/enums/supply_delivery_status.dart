// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Status of the supply delivery.
class SupplyDeliveryStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SupplyDeliveryStatusBuilder._({
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
  factory SupplyDeliveryStatusBuilder(
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
    return SupplyDeliveryStatusBuilder._(
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

  /// Create empty [SupplyDeliveryStatusBuilder] with element only
  factory SupplyDeliveryStatusBuilder.empty() =>
      SupplyDeliveryStatusBuilder._(valueString: '');

  /// Factory constructor to create [SupplyDeliveryStatusBuilder]
  /// from JSON.
  factory SupplyDeliveryStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
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
      valueString: value,
      element: element,
    );
  }

  /// in_progress
  static SupplyDeliveryStatusBuilder in_progress =
      SupplyDeliveryStatusBuilder._(
    valueString: 'in-progress',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// completed
  static SupplyDeliveryStatusBuilder completed = SupplyDeliveryStatusBuilder._(
    valueString: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Delivered'.toFhirStringBuilder,
  );

  /// abandoned
  static SupplyDeliveryStatusBuilder abandoned = SupplyDeliveryStatusBuilder._(
    valueString: 'abandoned',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Abandoned'.toFhirStringBuilder,
  );

  /// entered_in_error
  static SupplyDeliveryStatusBuilder entered_in_error =
      SupplyDeliveryStatusBuilder._(
    valueString: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered In Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SupplyDeliveryStatusBuilder elementOnly =
      SupplyDeliveryStatusBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SupplyDeliveryStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SupplyDeliveryStatusBuilder._(
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
  SupplyDeliveryStatusBuilder copyWith({
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
        'Invalid input for SupplyDeliveryStatus: $newValue',
      );
    }
    return SupplyDeliveryStatusBuilder._(
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
