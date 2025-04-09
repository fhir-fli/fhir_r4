// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RequestResourceType
enum RequestResourceTypeEnum {
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
      case RequestResourceTypeEnum.appointment:
        return 'Appointment';
      case RequestResourceTypeEnum.appointmentResponse:
        return 'AppointmentResponse';
      case RequestResourceTypeEnum.carePlan:
        return 'CarePlan';
      case RequestResourceTypeEnum.claim:
        return 'Claim';
      case RequestResourceTypeEnum.communicationRequest:
        return 'CommunicationRequest';
      case RequestResourceTypeEnum.contract:
        return 'Contract';
      case RequestResourceTypeEnum.deviceRequest:
        return 'DeviceRequest';
      case RequestResourceTypeEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case RequestResourceTypeEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case RequestResourceTypeEnum.medicationRequest:
        return 'MedicationRequest';
      case RequestResourceTypeEnum.nutritionOrder:
        return 'NutritionOrder';
      case RequestResourceTypeEnum.serviceRequest:
        return 'ServiceRequest';
      case RequestResourceTypeEnum.supplyRequest:
        return 'SupplyRequest';
      case RequestResourceTypeEnum.task:
        return 'Task';
      case RequestResourceTypeEnum.visionPrescription:
        return 'VisionPrescription';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestResourceTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestResourceTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestResourceTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Appointment':
        return RequestResourceTypeEnum.appointment;
      case 'AppointmentResponse':
        return RequestResourceTypeEnum.appointmentResponse;
      case 'CarePlan':
        return RequestResourceTypeEnum.carePlan;
      case 'Claim':
        return RequestResourceTypeEnum.claim;
      case 'CommunicationRequest':
        return RequestResourceTypeEnum.communicationRequest;
      case 'Contract':
        return RequestResourceTypeEnum.contract;
      case 'DeviceRequest':
        return RequestResourceTypeEnum.deviceRequest;
      case 'EnrollmentRequest':
        return RequestResourceTypeEnum.enrollmentRequest;
      case 'ImmunizationRecommendation':
        return RequestResourceTypeEnum.immunizationRecommendation;
      case 'MedicationRequest':
        return RequestResourceTypeEnum.medicationRequest;
      case 'NutritionOrder':
        return RequestResourceTypeEnum.nutritionOrder;
      case 'ServiceRequest':
        return RequestResourceTypeEnum.serviceRequest;
      case 'SupplyRequest':
        return RequestResourceTypeEnum.supplyRequest;
      case 'Task':
        return RequestResourceTypeEnum.task;
      case 'VisionPrescription':
        return RequestResourceTypeEnum.visionPrescription;
    }
    return null;
  }
}

/// A list of all the request resource types defined in this version of the
/// FHIR specification.
class RequestResourceType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RequestResourceType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory RequestResourceType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = RequestResourceTypeEnum.fromString(valueString);
    return RequestResourceType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [RequestResourceType]
  /// from JSON.
  factory RequestResourceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RequestResourceTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestResourceType cannot be constructed from JSON.',
      );
    }
    return RequestResourceType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RequestResourceType
  final RequestResourceTypeEnum? valueEnum;

  /// Appointment
  static const RequestResourceType appointment = RequestResourceType._(
    valueString: 'Appointment',
    valueEnum: RequestResourceTypeEnum.appointment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static const RequestResourceType appointmentResponse = RequestResourceType._(
    valueString: 'AppointmentResponse',
    valueEnum: RequestResourceTypeEnum.appointmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// CarePlan
  static const RequestResourceType carePlan = RequestResourceType._(
    valueString: 'CarePlan',
    valueEnum: RequestResourceTypeEnum.carePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CarePlan',
    ),
  );

  /// Claim
  static const RequestResourceType claim = RequestResourceType._(
    valueString: 'Claim',
    valueEnum: RequestResourceTypeEnum.claim,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Claim',
    ),
  );

  /// CommunicationRequest
  static const RequestResourceType communicationRequest = RequestResourceType._(
    valueString: 'CommunicationRequest',
    valueEnum: RequestResourceTypeEnum.communicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// Contract
  static const RequestResourceType contract = RequestResourceType._(
    valueString: 'Contract',
    valueEnum: RequestResourceTypeEnum.contract,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contract',
    ),
  );

  /// DeviceRequest
  static const RequestResourceType deviceRequest = RequestResourceType._(
    valueString: 'DeviceRequest',
    valueEnum: RequestResourceTypeEnum.deviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceRequest',
    ),
  );

  /// EnrollmentRequest
  static const RequestResourceType enrollmentRequest = RequestResourceType._(
    valueString: 'EnrollmentRequest',
    valueEnum: RequestResourceTypeEnum.enrollmentRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// ImmunizationRecommendation
  static const RequestResourceType immunizationRecommendation =
      RequestResourceType._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: RequestResourceTypeEnum.immunizationRecommendation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// MedicationRequest
  static const RequestResourceType medicationRequest = RequestResourceType._(
    valueString: 'MedicationRequest',
    valueEnum: RequestResourceTypeEnum.medicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationRequest',
    ),
  );

  /// NutritionOrder
  static const RequestResourceType nutritionOrder = RequestResourceType._(
    valueString: 'NutritionOrder',
    valueEnum: RequestResourceTypeEnum.nutritionOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NutritionOrder',
    ),
  );

  /// ServiceRequest
  static const RequestResourceType serviceRequest = RequestResourceType._(
    valueString: 'ServiceRequest',
    valueEnum: RequestResourceTypeEnum.serviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ServiceRequest',
    ),
  );

  /// SupplyRequest
  static const RequestResourceType supplyRequest = RequestResourceType._(
    valueString: 'SupplyRequest',
    valueEnum: RequestResourceTypeEnum.supplyRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static const RequestResourceType task = RequestResourceType._(
    valueString: 'Task',
    valueEnum: RequestResourceTypeEnum.task,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Task',
    ),
  );

  /// VisionPrescription
  static const RequestResourceType visionPrescription = RequestResourceType._(
    valueString: 'VisionPrescription',
    valueEnum: RequestResourceTypeEnum.visionPrescription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-resource-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'VisionPrescription',
    ),
  );

  /// List of all enum-like values
  static final List<RequestResourceType> values = [
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
  RequestResourceType withElement(Element? newElement) {
    return RequestResourceType._(
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

  @override
  RequestResourceType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RequestResourceTypeCopyWithImpl<RequestResourceType> get copyWith =>
      RequestResourceTypeCopyWithImpl<RequestResourceType>(
        this,
        (v) => v as RequestResourceType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RequestResourceTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RequestResourceTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      RequestResourceType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
