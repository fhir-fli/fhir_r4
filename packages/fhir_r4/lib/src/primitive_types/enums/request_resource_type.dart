// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the request resource types defined in this version of the
/// FHIR specification.
class RequestResourceType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  RequestResourceType._({
    required super.validatedValue,
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
  factory RequestResourceType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return RequestResourceType._(
      validatedValue: validated,
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

  /// Create empty [RequestResourceType] with element only
  factory RequestResourceType.empty() =>
      RequestResourceType._(validatedValue: '');

  /// Factory constructor to create [RequestResourceType] from JSON.
  factory RequestResourceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestResourceType cannot be constructed from JSON.',
      );
    }
    return RequestResourceType._(
      validatedValue: value,
      element: element,
    );
  }

  /// Appointment
  static final RequestResourceType Appointment = RequestResourceType._(
    validatedValue: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appointment'.toFhirString,
  );

  /// AppointmentResponse
  static final RequestResourceType AppointmentResponse = RequestResourceType._(
    validatedValue: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AppointmentResponse'.toFhirString,
  );

  /// CarePlan
  static final RequestResourceType CarePlan = RequestResourceType._(
    validatedValue: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CarePlan'.toFhirString,
  );

  /// Claim
  static final RequestResourceType Claim = RequestResourceType._(
    validatedValue: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// CommunicationRequest
  static final RequestResourceType CommunicationRequest = RequestResourceType._(
    validatedValue: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CommunicationRequest'.toFhirString,
  );

  /// Contract
  static final RequestResourceType Contract = RequestResourceType._(
    validatedValue: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contract'.toFhirString,
  );

  /// DeviceRequest
  static final RequestResourceType DeviceRequest = RequestResourceType._(
    validatedValue: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceRequest'.toFhirString,
  );

  /// EnrollmentRequest
  static final RequestResourceType EnrollmentRequest = RequestResourceType._(
    validatedValue: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentRequest'.toFhirString,
  );

  /// ImmunizationRecommendation
  static final RequestResourceType ImmunizationRecommendation =
      RequestResourceType._(
    validatedValue: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationRecommendation'.toFhirString,
  );

  /// MedicationRequest
  static final RequestResourceType MedicationRequest = RequestResourceType._(
    validatedValue: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationRequest'.toFhirString,
  );

  /// NutritionOrder
  static final RequestResourceType NutritionOrder = RequestResourceType._(
    validatedValue: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionOrder'.toFhirString,
  );

  /// ServiceRequest
  static final RequestResourceType ServiceRequest = RequestResourceType._(
    validatedValue: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ServiceRequest'.toFhirString,
  );

  /// SupplyRequest
  static final RequestResourceType SupplyRequest = RequestResourceType._(
    validatedValue: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyRequest'.toFhirString,
  );

  /// Task
  static final RequestResourceType Task = RequestResourceType._(
    validatedValue: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Task'.toFhirString,
  );

  /// VisionPrescription
  static final RequestResourceType VisionPrescription = RequestResourceType._(
    validatedValue: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VisionPrescription'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final RequestResourceType elementOnly =
      RequestResourceType._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RequestResourceType withElement(Element? newElement) {
    return RequestResourceType._(
      validatedValue: value,
      element: newElement,
    );
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RequestResourceType._(
      validatedValue: newValue ?? value,
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
