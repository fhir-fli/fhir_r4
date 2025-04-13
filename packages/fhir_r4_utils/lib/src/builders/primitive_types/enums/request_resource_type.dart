// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RequestResourceType
enum RequestResourceTypeBuilderEnum {
  /// Appointment
  appointment,

  /// AppointmentResponse
  appointmentResponse,

  /// CarePlan
  carePlan,

  /// Claim
  claim,

  /// CommunicationRequest
  communicationRequest,

  /// Contract
  contract,

  /// DeviceRequest
  deviceRequest,

  /// EnrollmentRequest
  enrollmentRequest,

  /// ImmunizationRecommendation
  immunizationRecommendation,

  /// MedicationRequest
  medicationRequest,

  /// NutritionOrder
  nutritionOrder,

  /// ServiceRequest
  serviceRequest,

  /// SupplyRequest
  supplyRequest,

  /// Task
  task,

  /// VisionPrescription
  visionPrescription,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RequestResourceTypeBuilderEnum.appointment:
        return 'Appointment';
      case RequestResourceTypeBuilderEnum.appointmentResponse:
        return 'AppointmentResponse';
      case RequestResourceTypeBuilderEnum.carePlan:
        return 'CarePlan';
      case RequestResourceTypeBuilderEnum.claim:
        return 'Claim';
      case RequestResourceTypeBuilderEnum.communicationRequest:
        return 'CommunicationRequest';
      case RequestResourceTypeBuilderEnum.contract:
        return 'Contract';
      case RequestResourceTypeBuilderEnum.deviceRequest:
        return 'DeviceRequest';
      case RequestResourceTypeBuilderEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case RequestResourceTypeBuilderEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case RequestResourceTypeBuilderEnum.medicationRequest:
        return 'MedicationRequest';
      case RequestResourceTypeBuilderEnum.nutritionOrder:
        return 'NutritionOrder';
      case RequestResourceTypeBuilderEnum.serviceRequest:
        return 'ServiceRequest';
      case RequestResourceTypeBuilderEnum.supplyRequest:
        return 'SupplyRequest';
      case RequestResourceTypeBuilderEnum.task:
        return 'Task';
      case RequestResourceTypeBuilderEnum.visionPrescription:
        return 'VisionPrescription';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestResourceTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestResourceTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestResourceTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Appointment':
        return RequestResourceTypeBuilderEnum.appointment;
      case 'AppointmentResponse':
        return RequestResourceTypeBuilderEnum.appointmentResponse;
      case 'CarePlan':
        return RequestResourceTypeBuilderEnum.carePlan;
      case 'Claim':
        return RequestResourceTypeBuilderEnum.claim;
      case 'CommunicationRequest':
        return RequestResourceTypeBuilderEnum.communicationRequest;
      case 'Contract':
        return RequestResourceTypeBuilderEnum.contract;
      case 'DeviceRequest':
        return RequestResourceTypeBuilderEnum.deviceRequest;
      case 'EnrollmentRequest':
        return RequestResourceTypeBuilderEnum.enrollmentRequest;
      case 'ImmunizationRecommendation':
        return RequestResourceTypeBuilderEnum.immunizationRecommendation;
      case 'MedicationRequest':
        return RequestResourceTypeBuilderEnum.medicationRequest;
      case 'NutritionOrder':
        return RequestResourceTypeBuilderEnum.nutritionOrder;
      case 'ServiceRequest':
        return RequestResourceTypeBuilderEnum.serviceRequest;
      case 'SupplyRequest':
        return RequestResourceTypeBuilderEnum.supplyRequest;
      case 'Task':
        return RequestResourceTypeBuilderEnum.task;
      case 'VisionPrescription':
        return RequestResourceTypeBuilderEnum.visionPrescription;
    }
    return null;
  }
}

/// A list of all the request resource types defined in this version of the
/// FHIR specification.
class RequestResourceTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestResourceTypeBuilder._({
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
    final valueEnum = RequestResourceTypeBuilderEnum.fromString(
      valueString,
    );
    return RequestResourceTypeBuilder._(
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

  /// Create empty [RequestResourceTypeBuilder]
  /// with element only
  factory RequestResourceTypeBuilder.empty() =>
      RequestResourceTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RequestResourceTypeBuilder] from JSON.
  factory RequestResourceTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceTypeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for RequestResourceTypeBuilder
  final RequestResourceTypeBuilderEnum? valueEnum;

  /// Appointment
  static RequestResourceTypeBuilder appointment = RequestResourceTypeBuilder._(
    valueString: 'Appointment',
    valueEnum: RequestResourceTypeBuilderEnum.appointment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static RequestResourceTypeBuilder appointmentResponse =
      RequestResourceTypeBuilder._(
    valueString: 'AppointmentResponse',
    valueEnum: RequestResourceTypeBuilderEnum.appointmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// CarePlan
  static RequestResourceTypeBuilder carePlan = RequestResourceTypeBuilder._(
    valueString: 'CarePlan',
    valueEnum: RequestResourceTypeBuilderEnum.carePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CarePlan',
    ),
  );

  /// Claim
  static RequestResourceTypeBuilder claim = RequestResourceTypeBuilder._(
    valueString: 'Claim',
    valueEnum: RequestResourceTypeBuilderEnum.claim,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Claim',
    ),
  );

  /// CommunicationRequest
  static RequestResourceTypeBuilder communicationRequest =
      RequestResourceTypeBuilder._(
    valueString: 'CommunicationRequest',
    valueEnum: RequestResourceTypeBuilderEnum.communicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// Contract
  static RequestResourceTypeBuilder contract = RequestResourceTypeBuilder._(
    valueString: 'Contract',
    valueEnum: RequestResourceTypeBuilderEnum.contract,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Contract',
    ),
  );

  /// DeviceRequest
  static RequestResourceTypeBuilder deviceRequest =
      RequestResourceTypeBuilder._(
    valueString: 'DeviceRequest',
    valueEnum: RequestResourceTypeBuilderEnum.deviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceRequest',
    ),
  );

  /// EnrollmentRequest
  static RequestResourceTypeBuilder enrollmentRequest =
      RequestResourceTypeBuilder._(
    valueString: 'EnrollmentRequest',
    valueEnum: RequestResourceTypeBuilderEnum.enrollmentRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// ImmunizationRecommendation
  static RequestResourceTypeBuilder immunizationRecommendation =
      RequestResourceTypeBuilder._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: RequestResourceTypeBuilderEnum.immunizationRecommendation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// MedicationRequest
  static RequestResourceTypeBuilder medicationRequest =
      RequestResourceTypeBuilder._(
    valueString: 'MedicationRequest',
    valueEnum: RequestResourceTypeBuilderEnum.medicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationRequest',
    ),
  );

  /// NutritionOrder
  static RequestResourceTypeBuilder nutritionOrder =
      RequestResourceTypeBuilder._(
    valueString: 'NutritionOrder',
    valueEnum: RequestResourceTypeBuilderEnum.nutritionOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionOrder',
    ),
  );

  /// ServiceRequest
  static RequestResourceTypeBuilder serviceRequest =
      RequestResourceTypeBuilder._(
    valueString: 'ServiceRequest',
    valueEnum: RequestResourceTypeBuilderEnum.serviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ServiceRequest',
    ),
  );

  /// SupplyRequest
  static RequestResourceTypeBuilder supplyRequest =
      RequestResourceTypeBuilder._(
    valueString: 'SupplyRequest',
    valueEnum: RequestResourceTypeBuilderEnum.supplyRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static RequestResourceTypeBuilder task = RequestResourceTypeBuilder._(
    valueString: 'Task',
    valueEnum: RequestResourceTypeBuilderEnum.task,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Task',
    ),
  );

  /// VisionPrescription
  static RequestResourceTypeBuilder visionPrescription =
      RequestResourceTypeBuilder._(
    valueString: 'VisionPrescription',
    valueEnum: RequestResourceTypeBuilderEnum.visionPrescription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'VisionPrescription',
    ),
  );

  /// For instances where an Element is present but not value
  static RequestResourceTypeBuilder elementOnly = RequestResourceTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RequestResourceTypeBuilder> values = [
    appointment,
    appointmentResponse,
    carePlan,
    claim,
    communicationRequest,
    contract,
    deviceRequest,
    enrollmentRequest,
    immunizationRecommendation,
    medicationRequest,
    nutritionOrder,
    serviceRequest,
    supplyRequest,
    task,
    visionPrescription,
  ];

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
}
