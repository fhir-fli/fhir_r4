// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SupplyDeliveryStatus
enum SupplyDeliveryStatusBuilderEnum {
  /// in-progress
  inProgress,

  /// completed
  completed,

  /// abandoned
  abandoned,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SupplyDeliveryStatusBuilderEnum.inProgress:
        return 'in-progress';
      case SupplyDeliveryStatusBuilderEnum.completed:
        return 'completed';
      case SupplyDeliveryStatusBuilderEnum.abandoned:
        return 'abandoned';
      case SupplyDeliveryStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SupplyDeliveryStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SupplyDeliveryStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SupplyDeliveryStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return SupplyDeliveryStatusBuilderEnum.inProgress;
      case 'completed':
        return SupplyDeliveryStatusBuilderEnum.completed;
      case 'abandoned':
        return SupplyDeliveryStatusBuilderEnum.abandoned;
      case 'entered-in-error':
        return SupplyDeliveryStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Status of the supply delivery.
class SupplyDeliveryStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SupplyDeliveryStatusBuilder._({
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
    final valueEnum = SupplyDeliveryStatusBuilderEnum.fromString(
      valueString,
    );
    return SupplyDeliveryStatusBuilder._(
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

  /// Create empty [SupplyDeliveryStatusBuilder]
  /// with element only
  factory SupplyDeliveryStatusBuilder.empty() =>
      SupplyDeliveryStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SupplyDeliveryStatusBuilder] from JSON.
  factory SupplyDeliveryStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatusBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for SupplyDeliveryStatusBuilder
  final SupplyDeliveryStatusBuilderEnum? valueEnum;

  /// in_progress
  static SupplyDeliveryStatusBuilder inProgress = SupplyDeliveryStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: SupplyDeliveryStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static SupplyDeliveryStatusBuilder completed = SupplyDeliveryStatusBuilder._(
    valueString: 'completed',
    valueEnum: SupplyDeliveryStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Delivered',
    ),
  );

  /// abandoned
  static SupplyDeliveryStatusBuilder abandoned = SupplyDeliveryStatusBuilder._(
    valueString: 'abandoned',
    valueEnum: SupplyDeliveryStatusBuilderEnum.abandoned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Abandoned',
    ),
  );

  /// entered_in_error
  static SupplyDeliveryStatusBuilder enteredInError =
      SupplyDeliveryStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: SupplyDeliveryStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static SupplyDeliveryStatusBuilder elementOnly =
      SupplyDeliveryStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SupplyDeliveryStatusBuilder> values = [
    inProgress,
    completed,
    abandoned,
    enteredInError,
  ];

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
}
