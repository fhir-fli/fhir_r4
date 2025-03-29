// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Current state of the encounter.
class EncounterStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EncounterStatusBuilder._({
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
  factory EncounterStatusBuilder(
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
    return EncounterStatusBuilder._(
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

  /// Create empty [EncounterStatusBuilder] with element only
  factory EncounterStatusBuilder.empty() =>
      EncounterStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [EncounterStatusBuilder] from JSON.
  factory EncounterStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EncounterStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// planned
  static EncounterStatusBuilder planned = EncounterStatusBuilder._(
    validatedValue: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Planned'.toFhirStringBuilder,
  );

  /// arrived
  static EncounterStatusBuilder arrived = EncounterStatusBuilder._(
    validatedValue: 'arrived',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Arrived'.toFhirStringBuilder,
  );

  /// triaged
  static EncounterStatusBuilder triaged = EncounterStatusBuilder._(
    validatedValue: 'triaged',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Triaged'.toFhirStringBuilder,
  );

  /// in_progress
  static EncounterStatusBuilder in_progress = EncounterStatusBuilder._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// onleave
  static EncounterStatusBuilder onleave = EncounterStatusBuilder._(
    validatedValue: 'onleave',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Leave'.toFhirStringBuilder,
  );

  /// finished
  static EncounterStatusBuilder finished = EncounterStatusBuilder._(
    validatedValue: 'finished',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Finished'.toFhirStringBuilder,
  );

  /// cancelled
  static EncounterStatusBuilder cancelled = EncounterStatusBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static EncounterStatusBuilder entered_in_error = EncounterStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static EncounterStatusBuilder unknown = EncounterStatusBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/encounter-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EncounterStatusBuilder elementOnly =
      EncounterStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<EncounterStatusBuilder> values = [
    planned,
    arrived,
    triaged,
    in_progress,
    onleave,
    finished,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  EncounterStatusBuilder clone() => EncounterStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EncounterStatusBuilder withElement(ElementBuilder? newElement) {
    return EncounterStatusBuilder._(validatedValue: value, element: newElement);
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
  EncounterStatusBuilder copyWith({
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
    return EncounterStatusBuilder._(
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
