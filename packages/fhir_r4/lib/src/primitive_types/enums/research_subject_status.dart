// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResearchSubjectStatus
enum ResearchSubjectStatusEnum {
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
      case ResearchSubjectStatusEnum.candidate:
        return 'candidate';
      case ResearchSubjectStatusEnum.eligible:
        return 'eligible';
      case ResearchSubjectStatusEnum.followUp:
        return 'follow-up';
      case ResearchSubjectStatusEnum.ineligible:
        return 'ineligible';
      case ResearchSubjectStatusEnum.notRegistered:
        return 'not-registered';
      case ResearchSubjectStatusEnum.offStudy:
        return 'off-study';
      case ResearchSubjectStatusEnum.onStudy:
        return 'on-study';
      case ResearchSubjectStatusEnum.onStudyIntervention:
        return 'on-study-intervention';
      case ResearchSubjectStatusEnum.onStudyObservation:
        return 'on-study-observation';
      case ResearchSubjectStatusEnum.pendingOnStudy:
        return 'pending-on-study';
      case ResearchSubjectStatusEnum.potentialCandidate:
        return 'potential-candidate';
      case ResearchSubjectStatusEnum.screening:
        return 'screening';
      case ResearchSubjectStatusEnum.withdrawn:
        return 'withdrawn';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResearchSubjectStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ResearchSubjectStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResearchSubjectStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'candidate':
        return ResearchSubjectStatusEnum.candidate;
      case 'eligible':
        return ResearchSubjectStatusEnum.eligible;
      case 'follow-up':
        return ResearchSubjectStatusEnum.followUp;
      case 'ineligible':
        return ResearchSubjectStatusEnum.ineligible;
      case 'not-registered':
        return ResearchSubjectStatusEnum.notRegistered;
      case 'off-study':
        return ResearchSubjectStatusEnum.offStudy;
      case 'on-study':
        return ResearchSubjectStatusEnum.onStudy;
      case 'on-study-intervention':
        return ResearchSubjectStatusEnum.onStudyIntervention;
      case 'on-study-observation':
        return ResearchSubjectStatusEnum.onStudyObservation;
      case 'pending-on-study':
        return ResearchSubjectStatusEnum.pendingOnStudy;
      case 'potential-candidate':
        return ResearchSubjectStatusEnum.potentialCandidate;
      case 'screening':
        return ResearchSubjectStatusEnum.screening;
      case 'withdrawn':
        return ResearchSubjectStatusEnum.withdrawn;
    }
    return null;
  }
}

/// Indicates the progression of a study subject through a study.
class ResearchSubjectStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ResearchSubjectStatus._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ResearchSubjectStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ResearchSubjectStatusEnum.fromString(valueString);
    return ResearchSubjectStatus._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ResearchSubjectStatus]
  /// from JSON.
  factory ResearchSubjectStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ResearchSubjectStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchSubjectStatus cannot be constructed from JSON.',
      );
    }
    return ResearchSubjectStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ResearchSubjectStatus
  final ResearchSubjectStatusEnum? valueEnum;

  /// candidate
  static const ResearchSubjectStatus candidate = ResearchSubjectStatus._(
    valueString: 'candidate',
    valueEnum: ResearchSubjectStatusEnum.candidate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Candidate',
    ),
  );

  /// eligible
  static const ResearchSubjectStatus eligible = ResearchSubjectStatus._(
    valueString: 'eligible',
    valueEnum: ResearchSubjectStatusEnum.eligible,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Eligible',
    ),
  );

  /// follow_up
  static const ResearchSubjectStatus followUp = ResearchSubjectStatus._(
    valueString: 'follow-up',
    valueEnum: ResearchSubjectStatusEnum.followUp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Follow-up',
    ),
  );

  /// ineligible
  static const ResearchSubjectStatus ineligible = ResearchSubjectStatus._(
    valueString: 'ineligible',
    valueEnum: ResearchSubjectStatusEnum.ineligible,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ineligible',
    ),
  );

  /// not_registered
  static const ResearchSubjectStatus notRegistered = ResearchSubjectStatus._(
    valueString: 'not-registered',
    valueEnum: ResearchSubjectStatusEnum.notRegistered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Registered',
    ),
  );

  /// off_study
  static const ResearchSubjectStatus offStudy = ResearchSubjectStatus._(
    valueString: 'off-study',
    valueEnum: ResearchSubjectStatusEnum.offStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Off-study',
    ),
  );

  /// on_study
  static const ResearchSubjectStatus onStudy = ResearchSubjectStatus._(
    valueString: 'on-study',
    valueEnum: ResearchSubjectStatusEnum.onStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On-study',
    ),
  );

  /// on_study_intervention
  static const ResearchSubjectStatus onStudyIntervention =
      ResearchSubjectStatus._(
    valueString: 'on-study-intervention',
    valueEnum: ResearchSubjectStatusEnum.onStudyIntervention,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On-study-intervention',
    ),
  );

  /// on_study_observation
  static const ResearchSubjectStatus onStudyObservation =
      ResearchSubjectStatus._(
    valueString: 'on-study-observation',
    valueEnum: ResearchSubjectStatusEnum.onStudyObservation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On-study-observation',
    ),
  );

  /// pending_on_study
  static const ResearchSubjectStatus pendingOnStudy = ResearchSubjectStatus._(
    valueString: 'pending-on-study',
    valueEnum: ResearchSubjectStatusEnum.pendingOnStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pending on-study',
    ),
  );

  /// potential_candidate
  static const ResearchSubjectStatus potentialCandidate =
      ResearchSubjectStatus._(
    valueString: 'potential-candidate',
    valueEnum: ResearchSubjectStatusEnum.potentialCandidate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Potential Candidate',
    ),
  );

  /// screening
  static const ResearchSubjectStatus screening = ResearchSubjectStatus._(
    valueString: 'screening',
    valueEnum: ResearchSubjectStatusEnum.screening,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Screening',
    ),
  );

  /// withdrawn
  static const ResearchSubjectStatus withdrawn = ResearchSubjectStatus._(
    valueString: 'withdrawn',
    valueEnum: ResearchSubjectStatusEnum.withdrawn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-subject-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Withdrawn',
    ),
  );

  /// List of all enum-like values
  static final List<ResearchSubjectStatus> values = [
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
  ResearchSubjectStatus withElement(Element? newElement) {
    return ResearchSubjectStatus._(
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

  @override
  ResearchSubjectStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ResearchSubjectStatusCopyWithImpl<ResearchSubjectStatus> get copyWith =>
      ResearchSubjectStatusCopyWithImpl<ResearchSubjectStatus>(
        this,
        (v) => v as ResearchSubjectStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ResearchSubjectStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ResearchSubjectStatusCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ResearchSubjectStatus(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
