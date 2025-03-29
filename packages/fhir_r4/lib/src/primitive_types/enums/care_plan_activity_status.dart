// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that reflect the current state of a care plan activity within its
/// overall life cycle.
class CarePlanActivityStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CarePlanActivityStatus._({
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
  factory CarePlanActivityStatus(
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
    return CarePlanActivityStatus._(
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

  /// Create empty [CarePlanActivityStatus] with element only
  factory CarePlanActivityStatus.empty() =>
      CarePlanActivityStatus._(validatedValue: '');

  /// Factory constructor to create [CarePlanActivityStatus] from JSON.
  factory CarePlanActivityStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityStatus cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// not_started
  static final CarePlanActivityStatus not_started = CarePlanActivityStatus._(
    validatedValue: 'not-started',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Started'.toFhirString,
  );

  /// scheduled
  static final CarePlanActivityStatus scheduled = CarePlanActivityStatus._(
    validatedValue: 'scheduled',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Scheduled'.toFhirString,
  );

  /// in_progress
  static final CarePlanActivityStatus in_progress = CarePlanActivityStatus._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// on_hold
  static final CarePlanActivityStatus on_hold = CarePlanActivityStatus._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// completed
  static final CarePlanActivityStatus completed = CarePlanActivityStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// cancelled
  static final CarePlanActivityStatus cancelled = CarePlanActivityStatus._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// stopped
  static final CarePlanActivityStatus stopped = CarePlanActivityStatus._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// unknown
  static final CarePlanActivityStatus unknown = CarePlanActivityStatus._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// entered_in_error
  static final CarePlanActivityStatus entered_in_error =
      CarePlanActivityStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CarePlanActivityStatus elementOnly =
      CarePlanActivityStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<CarePlanActivityStatus> values = [
    not_started,
    scheduled,
    in_progress,
    on_hold,
    completed,
    cancelled,
    stopped,
    unknown,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CarePlanActivityStatus clone() => CarePlanActivityStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus._(
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
  CarePlanActivityStatus copyWith({
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
    return CarePlanActivityStatus._(
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
