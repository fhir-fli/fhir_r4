// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the progression of a study subject through a study.
class ResearchSubjectStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResearchSubjectStatusBuilder._({
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
  factory ResearchSubjectStatusBuilder(
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
    return ResearchSubjectStatusBuilder._(
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

  /// Create empty [ResearchSubjectStatusBuilder] with element only
  factory ResearchSubjectStatusBuilder.empty() =>
      ResearchSubjectStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [ResearchSubjectStatusBuilder]
  /// from JSON.
  factory ResearchSubjectStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchSubjectStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ResearchSubjectStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// candidate
  static ResearchSubjectStatusBuilder candidate =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'candidate',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Candidate'.toFhirStringBuilder,
  );

  /// eligible
  static ResearchSubjectStatusBuilder eligible = ResearchSubjectStatusBuilder._(
    validatedValue: 'eligible',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Eligible'.toFhirStringBuilder,
  );

  /// follow_up
  static ResearchSubjectStatusBuilder follow_up =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'follow-up',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Follow-up'.toFhirStringBuilder,
  );

  /// ineligible
  static ResearchSubjectStatusBuilder ineligible =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'ineligible',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ineligible'.toFhirStringBuilder,
  );

  /// not_registered
  static ResearchSubjectStatusBuilder not_registered =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'not-registered',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not Registered'.toFhirStringBuilder,
  );

  /// off_study
  static ResearchSubjectStatusBuilder off_study =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'off-study',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Off-study'.toFhirStringBuilder,
  );

  /// on_study
  static ResearchSubjectStatusBuilder on_study = ResearchSubjectStatusBuilder._(
    validatedValue: 'on-study',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On-study'.toFhirStringBuilder,
  );

  /// on_study_intervention
  static ResearchSubjectStatusBuilder on_study_intervention =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'on-study-intervention',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On-study-intervention'.toFhirStringBuilder,
  );

  /// on_study_observation
  static ResearchSubjectStatusBuilder on_study_observation =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'on-study-observation',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On-study-observation'.toFhirStringBuilder,
  );

  /// pending_on_study
  static ResearchSubjectStatusBuilder pending_on_study =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'pending-on-study',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pending on-study'.toFhirStringBuilder,
  );

  /// potential_candidate
  static ResearchSubjectStatusBuilder potential_candidate =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'potential-candidate',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Potential Candidate'.toFhirStringBuilder,
  );

  /// screening
  static ResearchSubjectStatusBuilder screening =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'screening',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Screening'.toFhirStringBuilder,
  );

  /// withdrawn
  static ResearchSubjectStatusBuilder withdrawn =
      ResearchSubjectStatusBuilder._(
    validatedValue: 'withdrawn',
    system:
        'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Withdrawn'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ResearchSubjectStatusBuilder elementOnly =
      ResearchSubjectStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ResearchSubjectStatusBuilder> values = [
    candidate,
    eligible,
    follow_up,
    ineligible,
    not_registered,
    off_study,
    on_study,
    on_study_intervention,
    on_study_observation,
    pending_on_study,
    potential_candidate,
    screening,
    withdrawn,
  ];

  /// Clones the current instance
  @override
  ResearchSubjectStatusBuilder clone() => ResearchSubjectStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ResearchSubjectStatusBuilder withElement(ElementBuilder? newElement) {
    return ResearchSubjectStatusBuilder._(
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
  ResearchSubjectStatusBuilder copyWith({
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
    return ResearchSubjectStatusBuilder._(
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
