import 'package:json_annotation/json_annotation.dart';

/// A list of all the request resource types defined in this version of the FHIR specification.
enum RequestResourceType {
  /// Display: Appointment
  /// Definition: A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  @JsonValue('Appointment')
  Appointment,
  /// Display: AppointmentResponse
  /// Definition: A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
  @JsonValue('AppointmentResponse')
  AppointmentResponse,
  /// Display: CarePlan
  /// Definition: Healthcare plan for patient or group.
  @JsonValue('CarePlan')
  CarePlan,
  /// Display: Claim
  /// Definition: Claim, Pre-determination or Pre-authorization.
  @JsonValue('Claim')
  Claim,
  /// Display: CommunicationRequest
  /// Definition: A request for information to be sent to a receiver.
  @JsonValue('CommunicationRequest')
  CommunicationRequest,
  /// Display: Contract
  /// Definition: Legal Agreement.
  @JsonValue('Contract')
  Contract,
  /// Display: DeviceRequest
  /// Definition: Medical device request.
  @JsonValue('DeviceRequest')
  DeviceRequest,
  /// Display: EnrollmentRequest
  /// Definition: Enrollment request.
  @JsonValue('EnrollmentRequest')
  EnrollmentRequest,
  /// Display: ImmunizationRecommendation
  /// Definition: Guidance or advice relating to an immunization.
  @JsonValue('ImmunizationRecommendation')
  ImmunizationRecommendation,
  /// Display: MedicationRequest
  /// Definition: Ordering of medication for patient or group.
  @JsonValue('MedicationRequest')
  MedicationRequest,
  /// Display: NutritionOrder
  /// Definition: Diet, formula or nutritional supplement request.
  @JsonValue('NutritionOrder')
  NutritionOrder,
  /// Display: ServiceRequest
  /// Definition: A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
  @JsonValue('ServiceRequest')
  ServiceRequest,
  /// Display: SupplyRequest
  /// Definition: Request for a medication, substance or device.
  @JsonValue('SupplyRequest')
  SupplyRequest,
  /// Display: Task
  /// Definition: A task to be performed.
  @JsonValue('Task')
  Task,
  /// Display: VisionPrescription
  /// Definition: Prescription for vision correction products for a patient.
  @JsonValue('VisionPrescription')
  VisionPrescription,
;

@override
  String toString() {
      switch(this) {
        case Appointment: return 'Appointment';
        case AppointmentResponse: return 'AppointmentResponse';
        case CarePlan: return 'CarePlan';
        case Claim: return 'Claim';
        case CommunicationRequest: return 'CommunicationRequest';
        case Contract: return 'Contract';
        case DeviceRequest: return 'DeviceRequest';
        case EnrollmentRequest: return 'EnrollmentRequest';
        case ImmunizationRecommendation: return 'ImmunizationRecommendation';
        case MedicationRequest: return 'MedicationRequest';
        case NutritionOrder: return 'NutritionOrder';
        case ServiceRequest: return 'ServiceRequest';
        case SupplyRequest: return 'SupplyRequest';
        case Task: return 'Task';
        case VisionPrescription: return 'VisionPrescription';
      }
      }
String toJson() => toString();
  RequestResourceType fromString(String str) {
    switch(str) {
      case 'Appointment': return RequestResourceType.Appointment;
      case 'AppointmentResponse': return RequestResourceType.AppointmentResponse;
      case 'CarePlan': return RequestResourceType.CarePlan;
      case 'Claim': return RequestResourceType.Claim;
      case 'CommunicationRequest': return RequestResourceType.CommunicationRequest;
      case 'Contract': return RequestResourceType.Contract;
      case 'DeviceRequest': return RequestResourceType.DeviceRequest;
      case 'EnrollmentRequest': return RequestResourceType.EnrollmentRequest;
      case 'ImmunizationRecommendation': return RequestResourceType.ImmunizationRecommendation;
      case 'MedicationRequest': return RequestResourceType.MedicationRequest;
      case 'NutritionOrder': return RequestResourceType.NutritionOrder;
      case 'ServiceRequest': return RequestResourceType.ServiceRequest;
      case 'SupplyRequest': return RequestResourceType.SupplyRequest;
      case 'Task': return RequestResourceType.Task;
      case 'VisionPrescription': return RequestResourceType.VisionPrescription;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 RequestResourceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

