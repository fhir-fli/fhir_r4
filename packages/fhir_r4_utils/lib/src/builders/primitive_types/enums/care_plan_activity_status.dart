// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that reflect the current state of a care plan activity within its
/// overall life cycle.
class CarePlanActivityStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CarePlanActivityStatusBuilder._({
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
  factory CarePlanActivityStatusBuilder(
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
    return CarePlanActivityStatusBuilder._(
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

  /// Create empty [CarePlanActivityStatusBuilder] with element only
  factory CarePlanActivityStatusBuilder.empty() =>
      CarePlanActivityStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [CarePlanActivityStatusBuilder] from JSON.
  factory CarePlanActivityStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityStatusBuilder cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// not_started
  static CarePlanActivityStatusBuilder not_started =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'not-started',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Started'.toFhirStringBuilder,
  );

  /// scheduled
  static CarePlanActivityStatusBuilder scheduled =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'scheduled',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Scheduled'.toFhirStringBuilder,
  );

  /// in_progress
  static CarePlanActivityStatusBuilder in_progress =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// on_hold
  static CarePlanActivityStatusBuilder on_hold =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// completed
  static CarePlanActivityStatusBuilder completed =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// cancelled
  static CarePlanActivityStatusBuilder cancelled =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// stopped
  static CarePlanActivityStatusBuilder stopped =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// unknown
  static CarePlanActivityStatusBuilder unknown =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// entered_in_error
  static CarePlanActivityStatusBuilder entered_in_error =
      CarePlanActivityStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CarePlanActivityStatusBuilder elementOnly =
      CarePlanActivityStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<CarePlanActivityStatusBuilder> values = [
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
  CarePlanActivityStatusBuilder clone() => CarePlanActivityStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityStatusBuilder withElement(ElementBuilder? newElement) {
    return CarePlanActivityStatusBuilder._(
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
  CarePlanActivityStatusBuilder copyWith({
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
    return CarePlanActivityStatusBuilder._(
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
