// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A list of all the request resource types defined in this version of the FHIR specification.
@collection
class RequestResourceType {
  /// Constructor for internal use (like enum)
  RequestResourceType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RequestResourceType values
  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Appointment = RequestResourceType(
    fhirCode: 'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType AppointmentResponse = RequestResourceType(
    fhirCode: 'AppointmentResponse',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType CarePlan = RequestResourceType(
    fhirCode: 'CarePlan',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Claim = RequestResourceType(
    fhirCode: 'Claim',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType CommunicationRequest = RequestResourceType(
    fhirCode: 'CommunicationRequest',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Contract = RequestResourceType(
    fhirCode: 'Contract',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType DeviceRequest = RequestResourceType(
    fhirCode: 'DeviceRequest',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType EnrollmentRequest = RequestResourceType(
    fhirCode: 'EnrollmentRequest',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType ImmunizationRecommendation =
      RequestResourceType(
    fhirCode: 'ImmunizationRecommendation',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType MedicationRequest = RequestResourceType(
    fhirCode: 'MedicationRequest',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType NutritionOrder = RequestResourceType(
    fhirCode: 'NutritionOrder',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType ServiceRequest = RequestResourceType(
    fhirCode: 'ServiceRequest',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType SupplyRequest = RequestResourceType(
    fhirCode: 'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType Task = RequestResourceType(
    fhirCode: 'Task',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestResourceType VisionPrescription = RequestResourceType(
    fhirCode: 'VisionPrescription',
  );

  /// For instances where an Element is present but not value

  static final RequestResourceType elementOnly = RequestResourceType();

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
    return RequestResourceType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return RequestResourceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RequestResourceType.$fhirCode';
}
