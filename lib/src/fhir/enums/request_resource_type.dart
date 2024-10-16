import 'package:fhir_r4/fhir_r4.dart';

/// A list of all the request resource types defined in this version of the FHIR specification.
enum RequestResourceType {
  /// Display: Appointment
  /// Definition: A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  Appointment('Appointment'),

  /// Display: AppointmentResponse
  /// Definition: A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
  AppointmentResponse('AppointmentResponse'),

  /// Display: CarePlan
  /// Definition: Healthcare plan for patient or group.
  CarePlan('CarePlan'),

  /// Display: Claim
  /// Definition: Claim, Pre-determination or Pre-authorization.
  Claim('Claim'),

  /// Display: CommunicationRequest
  /// Definition: A request for information to be sent to a receiver.
  CommunicationRequest('CommunicationRequest'),

  /// Display: Contract
  /// Definition: Legal Agreement.
  Contract('Contract'),

  /// Display: DeviceRequest
  /// Definition: Medical device request.
  DeviceRequest('DeviceRequest'),

  /// Display: EnrollmentRequest
  /// Definition: Enrollment request.
  EnrollmentRequest('EnrollmentRequest'),

  /// Display: ImmunizationRecommendation
  /// Definition: Guidance or advice relating to an immunization.
  ImmunizationRecommendation('ImmunizationRecommendation'),

  /// Display: MedicationRequest
  /// Definition: Ordering of medication for patient or group.
  MedicationRequest('MedicationRequest'),

  /// Display: NutritionOrder
  /// Definition: Diet, formula or nutritional supplement request.
  NutritionOrder('NutritionOrder'),

  /// Display: ServiceRequest
  /// Definition: A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
  ServiceRequest('ServiceRequest'),

  /// Display: SupplyRequest
  /// Definition: Request for a medication, substance or device.
  SupplyRequest('SupplyRequest'),

  /// Display: Task
  /// Definition: A task to be performed.
  Task('Task'),

  /// Display: VisionPrescription
  /// Definition: Prescription for vision correction products for a patient.
  VisionPrescription('VisionPrescription'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RequestResourceType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RequestResourceType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceType.elementOnly.withElement(element);
    }
    return RequestResourceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RequestResourceType withElement(Element? newElement) {
    return RequestResourceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
