// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A list of all the request resource types defined in this version of the FHIR specification.
class RequestResourceType {
  // Private constructor for internal use (like enum)
  RequestResourceType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RequestResourceType values
  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Appointment = RequestResourceType._(
    'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType AppointmentResponse = RequestResourceType._(
    'AppointmentResponse',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType CarePlan = RequestResourceType._(
    'CarePlan',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Claim = RequestResourceType._(
    'Claim',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType CommunicationRequest = RequestResourceType._(
    'CommunicationRequest',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Contract = RequestResourceType._(
    'Contract',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType DeviceRequest = RequestResourceType._(
    'DeviceRequest',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType EnrollmentRequest = RequestResourceType._(
    'EnrollmentRequest',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType ImmunizationRecommendation =
      RequestResourceType._(
    'ImmunizationRecommendation',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType MedicationRequest = RequestResourceType._(
    'MedicationRequest',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType NutritionOrder = RequestResourceType._(
    'NutritionOrder',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType ServiceRequest = RequestResourceType._(
    'ServiceRequest',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType SupplyRequest = RequestResourceType._(
    'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Task = RequestResourceType._(
    'Task',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType VisionPrescription = RequestResourceType._(
    'VisionPrescription',
  );

  /// For instances where an Element is present but not value

  static final RequestResourceType elementOnly = RequestResourceType._('');

  /// List of all enum-like values
  static final List<RequestResourceType> values = [
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

  /// Returns the enum value with an element attached
  RequestResourceType withElement(Element? newElement) {
    return RequestResourceType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RequestResourceType] from JSON.
  static RequestResourceType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceType.elementOnly.withElement(element);
    }
    return RequestResourceType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
