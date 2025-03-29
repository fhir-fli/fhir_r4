// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A list of all the request resource types defined in this version of the
/// FHIR specification.
class RequestResourceTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestResourceTypeBuilder._({
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
  factory RequestResourceTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return RequestResourceTypeBuilder._(
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

  /// Create empty [RequestResourceTypeBuilder] with element only
  factory RequestResourceTypeBuilder.empty() =>
      RequestResourceTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [RequestResourceTypeBuilder] from JSON.
  factory RequestResourceTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestResourceTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestResourceTypeBuilder cannot be constructed from JSON.',
      );
    }
    return RequestResourceTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// Appointment
  static RequestResourceTypeBuilder Appointment = RequestResourceTypeBuilder._(
    validatedValue: 'Appointment',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appointment'.toFhirStringBuilder,
  );

  /// AppointmentResponse
  static RequestResourceTypeBuilder AppointmentResponse =
      RequestResourceTypeBuilder._(
    validatedValue: 'AppointmentResponse',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AppointmentResponse'.toFhirStringBuilder,
  );

  /// CarePlan
  static RequestResourceTypeBuilder CarePlan = RequestResourceTypeBuilder._(
    validatedValue: 'CarePlan',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CarePlan'.toFhirStringBuilder,
  );

  /// Claim
  static RequestResourceTypeBuilder Claim = RequestResourceTypeBuilder._(
    validatedValue: 'Claim',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Claim'.toFhirStringBuilder,
  );

  /// CommunicationRequest
  static RequestResourceTypeBuilder CommunicationRequest =
      RequestResourceTypeBuilder._(
    validatedValue: 'CommunicationRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CommunicationRequest'.toFhirStringBuilder,
  );

  /// Contract
  static RequestResourceTypeBuilder Contract = RequestResourceTypeBuilder._(
    validatedValue: 'Contract',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contract'.toFhirStringBuilder,
  );

  /// DeviceRequest
  static RequestResourceTypeBuilder DeviceRequest =
      RequestResourceTypeBuilder._(
    validatedValue: 'DeviceRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceRequest'.toFhirStringBuilder,
  );

  /// EnrollmentRequest
  static RequestResourceTypeBuilder EnrollmentRequest =
      RequestResourceTypeBuilder._(
    validatedValue: 'EnrollmentRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentRequest'.toFhirStringBuilder,
  );

  /// ImmunizationRecommendation
  static RequestResourceTypeBuilder ImmunizationRecommendation =
      RequestResourceTypeBuilder._(
    validatedValue: 'ImmunizationRecommendation',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationRecommendation'.toFhirStringBuilder,
  );

  /// MedicationRequest
  static RequestResourceTypeBuilder MedicationRequest =
      RequestResourceTypeBuilder._(
    validatedValue: 'MedicationRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationRequest'.toFhirStringBuilder,
  );

  /// NutritionOrder
  static RequestResourceTypeBuilder NutritionOrder =
      RequestResourceTypeBuilder._(
    validatedValue: 'NutritionOrder',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionOrder'.toFhirStringBuilder,
  );

  /// ServiceRequest
  static RequestResourceTypeBuilder ServiceRequest =
      RequestResourceTypeBuilder._(
    validatedValue: 'ServiceRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ServiceRequest'.toFhirStringBuilder,
  );

  /// SupplyRequest
  static RequestResourceTypeBuilder SupplyRequest =
      RequestResourceTypeBuilder._(
    validatedValue: 'SupplyRequest',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyRequest'.toFhirStringBuilder,
  );

  /// Task
  static RequestResourceTypeBuilder Task = RequestResourceTypeBuilder._(
    validatedValue: 'Task',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Task'.toFhirStringBuilder,
  );

  /// VisionPrescription
  static RequestResourceTypeBuilder VisionPrescription =
      RequestResourceTypeBuilder._(
    validatedValue: 'VisionPrescription',
    system:
        'http://hl7.org/fhir/ValueSet/request-resource-types'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VisionPrescription'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RequestResourceTypeBuilder elementOnly =
      RequestResourceTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<RequestResourceTypeBuilder> values = [
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
  RequestResourceTypeBuilder clone() => RequestResourceTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RequestResourceTypeBuilder withElement(ElementBuilder? newElement) {
    return RequestResourceTypeBuilder._(
        validatedValue: value, element: newElement);
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
  RequestResourceTypeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return RequestResourceTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
