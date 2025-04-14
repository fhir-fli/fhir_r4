// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResearchSubjectStatus
enum ResearchSubjectStatusBuilderEnum {
  /// candidate
  candidate,

  /// eligible
  eligible,

  /// follow-up
  followUp,

  /// ineligible
  ineligible,

  /// not-registered
  notRegistered,

  /// off-study
  offStudy,

  /// on-study
  onStudy,

  /// on-study-intervention
  onStudyIntervention,

  /// on-study-observation
  onStudyObservation,

  /// pending-on-study
  pendingOnStudy,

  /// potential-candidate
  potentialCandidate,

  /// screening
  screening,

  /// withdrawn
  withdrawn,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResearchSubjectStatusBuilderEnum.candidate:
        return 'candidate';
      case ResearchSubjectStatusBuilderEnum.eligible:
        return 'eligible';
      case ResearchSubjectStatusBuilderEnum.followUp:
        return 'follow-up';
      case ResearchSubjectStatusBuilderEnum.ineligible:
        return 'ineligible';
      case ResearchSubjectStatusBuilderEnum.notRegistered:
        return 'not-registered';
      case ResearchSubjectStatusBuilderEnum.offStudy:
        return 'off-study';
      case ResearchSubjectStatusBuilderEnum.onStudy:
        return 'on-study';
      case ResearchSubjectStatusBuilderEnum.onStudyIntervention:
        return 'on-study-intervention';
      case ResearchSubjectStatusBuilderEnum.onStudyObservation:
        return 'on-study-observation';
      case ResearchSubjectStatusBuilderEnum.pendingOnStudy:
        return 'pending-on-study';
      case ResearchSubjectStatusBuilderEnum.potentialCandidate:
        return 'potential-candidate';
      case ResearchSubjectStatusBuilderEnum.screening:
        return 'screening';
      case ResearchSubjectStatusBuilderEnum.withdrawn:
        return 'withdrawn';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResearchSubjectStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ResearchSubjectStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResearchSubjectStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'candidate':
        return ResearchSubjectStatusBuilderEnum.candidate;
      case 'eligible':
        return ResearchSubjectStatusBuilderEnum.eligible;
      case 'follow-up':
        return ResearchSubjectStatusBuilderEnum.followUp;
      case 'ineligible':
        return ResearchSubjectStatusBuilderEnum.ineligible;
      case 'not-registered':
        return ResearchSubjectStatusBuilderEnum.notRegistered;
      case 'off-study':
        return ResearchSubjectStatusBuilderEnum.offStudy;
      case 'on-study':
        return ResearchSubjectStatusBuilderEnum.onStudy;
      case 'on-study-intervention':
        return ResearchSubjectStatusBuilderEnum.onStudyIntervention;
      case 'on-study-observation':
        return ResearchSubjectStatusBuilderEnum.onStudyObservation;
      case 'pending-on-study':
        return ResearchSubjectStatusBuilderEnum.pendingOnStudy;
      case 'potential-candidate':
        return ResearchSubjectStatusBuilderEnum.potentialCandidate;
      case 'screening':
        return ResearchSubjectStatusBuilderEnum.screening;
      case 'withdrawn':
        return ResearchSubjectStatusBuilderEnum.withdrawn;
    }
    return null;
  }
}

/// Indicates the progression of a study subject through a study.
class ResearchSubjectStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResearchSubjectStatusBuilder._({
    required super.valueString,
    this.valueEnum,
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
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = ResearchSubjectStatusBuilderEnum.fromString(
      valueString,
    );
    return ResearchSubjectStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [ResearchSubjectStatusBuilder]
  /// with element only
  factory ResearchSubjectStatusBuilder.empty() =>
      ResearchSubjectStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ResearchSubjectStatusBuilder] from JSON.
  factory ResearchSubjectStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchSubjectStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ResearchSubjectStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ResearchSubjectStatusBuilder
  final ResearchSubjectStatusBuilderEnum? valueEnum;

  /// candidate
  static ResearchSubjectStatusBuilder candidate =
      ResearchSubjectStatusBuilder._(
    valueString: 'candidate',
    valueEnum: ResearchSubjectStatusBuilderEnum.candidate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Candidate',
    ),
  );

  /// eligible
  static ResearchSubjectStatusBuilder eligible = ResearchSubjectStatusBuilder._(
    valueString: 'eligible',
    valueEnum: ResearchSubjectStatusBuilderEnum.eligible,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Eligible',
    ),
  );

  /// follow_up
  static ResearchSubjectStatusBuilder followUp = ResearchSubjectStatusBuilder._(
    valueString: 'follow-up',
    valueEnum: ResearchSubjectStatusBuilderEnum.followUp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Follow-up',
    ),
  );

  /// ineligible
  static ResearchSubjectStatusBuilder ineligible =
      ResearchSubjectStatusBuilder._(
    valueString: 'ineligible',
    valueEnum: ResearchSubjectStatusBuilderEnum.ineligible,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ineligible',
    ),
  );

  /// not_registered
  static ResearchSubjectStatusBuilder notRegistered =
      ResearchSubjectStatusBuilder._(
    valueString: 'not-registered',
    valueEnum: ResearchSubjectStatusBuilderEnum.notRegistered,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Registered',
    ),
  );

  /// off_study
  static ResearchSubjectStatusBuilder offStudy = ResearchSubjectStatusBuilder._(
    valueString: 'off-study',
    valueEnum: ResearchSubjectStatusBuilderEnum.offStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Off-study',
    ),
  );

  /// on_study
  static ResearchSubjectStatusBuilder onStudy = ResearchSubjectStatusBuilder._(
    valueString: 'on-study',
    valueEnum: ResearchSubjectStatusBuilderEnum.onStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On-study',
    ),
  );

  /// on_study_intervention
  static ResearchSubjectStatusBuilder onStudyIntervention =
      ResearchSubjectStatusBuilder._(
    valueString: 'on-study-intervention',
    valueEnum: ResearchSubjectStatusBuilderEnum.onStudyIntervention,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On-study-intervention',
    ),
  );

  /// on_study_observation
  static ResearchSubjectStatusBuilder onStudyObservation =
      ResearchSubjectStatusBuilder._(
    valueString: 'on-study-observation',
    valueEnum: ResearchSubjectStatusBuilderEnum.onStudyObservation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On-study-observation',
    ),
  );

  /// pending_on_study
  static ResearchSubjectStatusBuilder pendingOnStudy =
      ResearchSubjectStatusBuilder._(
    valueString: 'pending-on-study',
    valueEnum: ResearchSubjectStatusBuilderEnum.pendingOnStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pending on-study',
    ),
  );

  /// potential_candidate
  static ResearchSubjectStatusBuilder potentialCandidate =
      ResearchSubjectStatusBuilder._(
    valueString: 'potential-candidate',
    valueEnum: ResearchSubjectStatusBuilderEnum.potentialCandidate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Potential Candidate',
    ),
  );

  /// screening
  static ResearchSubjectStatusBuilder screening =
      ResearchSubjectStatusBuilder._(
    valueString: 'screening',
    valueEnum: ResearchSubjectStatusBuilderEnum.screening,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Screening',
    ),
  );

  /// withdrawn
  static ResearchSubjectStatusBuilder withdrawn =
      ResearchSubjectStatusBuilder._(
    valueString: 'withdrawn',
    valueEnum: ResearchSubjectStatusBuilderEnum.withdrawn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Withdrawn',
    ),
  );

  /// For instances where an Element is present but not value
  static ResearchSubjectStatusBuilder elementOnly =
      ResearchSubjectStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ResearchSubjectStatusBuilder> values = [
    candidate,
    eligible,
    followUp,
    ineligible,
    notRegistered,
    offStudy,
    onStudy,
    onStudyIntervention,
    onStudyObservation,
    pendingOnStudy,
    potentialCandidate,
    screening,
    withdrawn,
  ];

  /// Returns the enum value with an element attached
  ResearchSubjectStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ResearchSubjectStatusBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
