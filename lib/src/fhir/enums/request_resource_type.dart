// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A list of all the request resource types defined in this version of the FHIR specification.
@Entity()
class RequestResourceType extends FhirCode {
  /// Factory constructor to create [RequestResourceType] from JSON.
  factory RequestResourceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceType.elementOnly(element);
    }
    if (values.contains(value)) {
      return RequestResourceType._(value, element);
    }
    throw ArgumentError(
      'RequestResourceType.fromJson: JSON value is not a valid value',
    );
  }

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.Appointment([this.element])
      : dbValue = 'Appointment',
        super('Appointment', element);

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.AppointmentResponse([this.element])
      : dbValue = 'AppointmentResponse',
        super('AppointmentResponse', element);

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.CarePlan([this.element])
      : dbValue = 'CarePlan',
        super('CarePlan', element);

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.Claim([this.element])
      : dbValue = 'Claim',
        super('Claim', element);

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.CommunicationRequest([this.element])
      : dbValue = 'CommunicationRequest',
        super('CommunicationRequest', element);

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.Contract([this.element])
      : dbValue = 'Contract',
        super('Contract', element);

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.DeviceRequest([this.element])
      : dbValue = 'DeviceRequest',
        super('DeviceRequest', element);

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.EnrollmentRequest([this.element])
      : dbValue = 'EnrollmentRequest',
        super('EnrollmentRequest', element);

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.ImmunizationRecommendation([this.element])
      : dbValue = 'ImmunizationRecommendation',
        super('ImmunizationRecommendation', element);

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.MedicationRequest([this.element])
      : dbValue = 'MedicationRequest',
        super('MedicationRequest', element);

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.NutritionOrder([this.element])
      : dbValue = 'NutritionOrder',
        super('NutritionOrder', element);

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.ServiceRequest([this.element])
      : dbValue = 'ServiceRequest',
        super('ServiceRequest', element);

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.SupplyRequest([this.element])
      : dbValue = 'SupplyRequest',
        super('SupplyRequest', element);

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.Task([this.element])
      : dbValue = 'Task',
        super('Task', element);

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RequestResourceType.VisionPrescription([this.element])
      : dbValue = 'VisionPrescription',
        super('VisionPrescription', element);

  /// For instances where an Element is present but not value

  RequestResourceType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RequestResourceType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'Appointment',
    'AppointmentResponse',
    'CarePlan',
    'Claim',
    'CommunicationRequest',
    'Contract',
    'DeviceRequest',
    'EnrollmentRequest',
    'ImmunizationRecommendation',
    'MedicationRequest',
    'NutritionOrder',
    'ServiceRequest',
    'SupplyRequest',
    'Task',
    'VisionPrescription',
  ];

  /// Returns the enum value with an element attached
  RequestResourceType withElement(Element? newElement) {
    return RequestResourceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RequestResourceType.$value';
}
