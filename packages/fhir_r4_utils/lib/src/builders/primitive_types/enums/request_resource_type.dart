// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the request resource types defined in this version of the
/// FHIR specification.
class RequestResourceTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestResourceTypeBuilder._({
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
  factory RequestResourceTypeBuilder(
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
    return RequestResourceTypeBuilder._(
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

  /// Create empty [RequestResourceTypeBuilder] with element only
  factory RequestResourceTypeBuilder.empty() =>
      RequestResourceTypeBuilder._(valueString: '');

  /// Factory constructor to create [RequestResourceTypeBuilder]
  /// from JSON.
  factory RequestResourceTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestResourceTypeBuilder cannot be constructed from JSON.',
      );
    }
    return RequestResourceTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// Appointment
  static RequestResourceTypeBuilder Appointment = RequestResourceTypeBuilder._(
    valueString: 'Appointment',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appointment'.toFhirStringBuilder,
  );

  /// AppointmentResponse
  static RequestResourceTypeBuilder AppointmentResponse =
      RequestResourceTypeBuilder._(
    valueString: 'AppointmentResponse',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AppointmentResponse'.toFhirStringBuilder,
  );

  /// CarePlan
  static RequestResourceTypeBuilder CarePlan = RequestResourceTypeBuilder._(
    valueString: 'CarePlan',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CarePlan'.toFhirStringBuilder,
  );

  /// Claim
  static RequestResourceTypeBuilder Claim = RequestResourceTypeBuilder._(
    valueString: 'Claim',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Claim'.toFhirStringBuilder,
  );

  /// CommunicationRequest
  static RequestResourceTypeBuilder CommunicationRequest =
      RequestResourceTypeBuilder._(
    valueString: 'CommunicationRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CommunicationRequest'.toFhirStringBuilder,
  );

  /// Contract
  static RequestResourceTypeBuilder Contract = RequestResourceTypeBuilder._(
    valueString: 'Contract',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contract'.toFhirStringBuilder,
  );

  /// DeviceRequest
  static RequestResourceTypeBuilder DeviceRequest =
      RequestResourceTypeBuilder._(
    valueString: 'DeviceRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceRequest'.toFhirStringBuilder,
  );

  /// EnrollmentRequest
  static RequestResourceTypeBuilder EnrollmentRequest =
      RequestResourceTypeBuilder._(
    valueString: 'EnrollmentRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentRequest'.toFhirStringBuilder,
  );

  /// ImmunizationRecommendation
  static RequestResourceTypeBuilder ImmunizationRecommendation =
      RequestResourceTypeBuilder._(
    valueString: 'ImmunizationRecommendation',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationRecommendation'.toFhirStringBuilder,
  );

  /// MedicationRequest
  static RequestResourceTypeBuilder MedicationRequest =
      RequestResourceTypeBuilder._(
    valueString: 'MedicationRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationRequest'.toFhirStringBuilder,
  );

  /// NutritionOrder
  static RequestResourceTypeBuilder NutritionOrder =
      RequestResourceTypeBuilder._(
    valueString: 'NutritionOrder',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionOrder'.toFhirStringBuilder,
  );

  /// ServiceRequest
  static RequestResourceTypeBuilder ServiceRequest =
      RequestResourceTypeBuilder._(
    valueString: 'ServiceRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ServiceRequest'.toFhirStringBuilder,
  );

  /// SupplyRequest
  static RequestResourceTypeBuilder SupplyRequest =
      RequestResourceTypeBuilder._(
    valueString: 'SupplyRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyRequest'.toFhirStringBuilder,
  );

  /// Task
  static RequestResourceTypeBuilder Task = RequestResourceTypeBuilder._(
    valueString: 'Task',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Task'.toFhirStringBuilder,
  );

  /// VisionPrescription
  static RequestResourceTypeBuilder VisionPrescription =
      RequestResourceTypeBuilder._(
    valueString: 'VisionPrescription',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VisionPrescription'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RequestResourceTypeBuilder elementOnly =
      RequestResourceTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<RequestResourceTypeBuilder> values = [
    Appointment,
    AppointmentResponse,
    CarePlan,
    Claim,
    CommunicationRequest,
    Contract,
    DeviceRequest,
    EnrollmentRequest,
    ImmunizationRecommendation,
    MedicationRequest,
    NutritionOrder,
    ServiceRequest,
    SupplyRequest,
    Task,
    VisionPrescription,
  ];

  /// Clones the current instance
  @override
  RequestResourceTypeBuilder clone() => RequestResourceTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RequestResourceTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RequestResourceTypeBuilder._(
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
  RequestResourceTypeBuilder copyWith({
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
        'Invalid input for RequestResourceType: $newValue',
      );
    }
    return RequestResourceTypeBuilder._(
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
