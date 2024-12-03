// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A list of all the request resource types defined in this version of the FHIR specification.
class RequestResourceType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RequestResourceType._(super.value, [super.element]);

  /// Factory constructor to create [RequestResourceType] from JSON.
  factory RequestResourceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'RequestResourceType cannot be constructed from JSON.');
    }
    return RequestResourceType._(value, element);
  }

  /// Appointment
  static final RequestResourceType Appointment = RequestResourceType._(
    'Appointment',
  );

  /// AppointmentResponse
  static final RequestResourceType AppointmentResponse = RequestResourceType._(
    'AppointmentResponse',
  );

  /// CarePlan
  static final RequestResourceType CarePlan = RequestResourceType._(
    'CarePlan',
  );

  /// Claim
  static final RequestResourceType Claim = RequestResourceType._(
    'Claim',
  );

  /// CommunicationRequest
  static final RequestResourceType CommunicationRequest = RequestResourceType._(
    'CommunicationRequest',
  );

  /// Contract
  static final RequestResourceType Contract = RequestResourceType._(
    'Contract',
  );

  /// DeviceRequest
  static final RequestResourceType DeviceRequest = RequestResourceType._(
    'DeviceRequest',
  );

  /// EnrollmentRequest
  static final RequestResourceType EnrollmentRequest = RequestResourceType._(
    'EnrollmentRequest',
  );

  /// ImmunizationRecommendation
  static final RequestResourceType ImmunizationRecommendation =
      RequestResourceType._(
    'ImmunizationRecommendation',
  );

  /// MedicationRequest
  static final RequestResourceType MedicationRequest = RequestResourceType._(
    'MedicationRequest',
  );

  /// NutritionOrder
  static final RequestResourceType NutritionOrder = RequestResourceType._(
    'NutritionOrder',
  );

  /// ServiceRequest
  static final RequestResourceType ServiceRequest = RequestResourceType._(
    'ServiceRequest',
  );

  /// SupplyRequest
  static final RequestResourceType SupplyRequest = RequestResourceType._(
    'SupplyRequest',
  );

  /// Task
  static final RequestResourceType Task = RequestResourceType._(
    'Task',
  );

  /// VisionPrescription
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

  /// Clones the current instance
  @override
  RequestResourceType clone() => RequestResourceType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  RequestResourceType setElement(
    String name,
    dynamic elementValue,
  ) {
    return RequestResourceType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  RequestResourceType withElement(Element? newElement) {
    return RequestResourceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  RequestResourceType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RequestResourceType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
