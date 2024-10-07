import 'package:json_annotation/json_annotation.dart';

/// Resource types defined as part of FHIR that can be represented as in-line definitions of a care plan activity.
enum CarePlanActivityKind {
  @JsonValue('Appointment')
  Appointment,
  @JsonValue('CommunicationRequest')
  CommunicationRequest,
  @JsonValue('DeviceRequest')
  DeviceRequest,
  @JsonValue('MedicationRequest')
  MedicationRequest,
  @JsonValue('NutritionOrder')
  NutritionOrder,
  @JsonValue('Task')
  Task,
  @JsonValue('ServiceRequest')
  ServiceRequest,
  @JsonValue('VisionPrescription')
  VisionPrescription,
;

@override
  String toString() {
      switch(this) {
        case Appointment: return 'Appointment';
        case CommunicationRequest: return 'CommunicationRequest';
        case DeviceRequest: return 'DeviceRequest';
        case MedicationRequest: return 'MedicationRequest';
        case NutritionOrder: return 'NutritionOrder';
        case Task: return 'Task';
        case ServiceRequest: return 'ServiceRequest';
        case VisionPrescription: return 'VisionPrescription';
      }
      }
String toJson() => toString();
  CarePlanActivityKind fromString(String str) {
    switch(str) {
      case 'Appointment': return CarePlanActivityKind.Appointment;
      case 'CommunicationRequest': return CarePlanActivityKind.CommunicationRequest;
      case 'DeviceRequest': return CarePlanActivityKind.DeviceRequest;
      case 'MedicationRequest': return CarePlanActivityKind.MedicationRequest;
      case 'NutritionOrder': return CarePlanActivityKind.NutritionOrder;
      case 'Task': return CarePlanActivityKind.Task;
      case 'ServiceRequest': return CarePlanActivityKind.ServiceRequest;
      case 'VisionPrescription': return CarePlanActivityKind.VisionPrescription;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CarePlanActivityKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

