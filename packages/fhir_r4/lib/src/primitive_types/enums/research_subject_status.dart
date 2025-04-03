// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates the progression of a study subject through a study.
class ResearchSubjectStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ResearchSubjectStatus._({
    required super.valueString,
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
  factory ResearchSubjectStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ResearchSubjectStatus._(
      valueString: valueString,
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

  /// Create empty [ResearchSubjectStatus] with element only
  factory ResearchSubjectStatus.empty() =>
      ResearchSubjectStatus._(valueString: '');

  /// Factory constructor to create [ResearchSubjectStatus] from JSON.
  factory ResearchSubjectStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchSubjectStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchSubjectStatus cannot be constructed from JSON.',
      );
    }
    return ResearchSubjectStatus._(
      valueString: value,
      element: element,
    );
  }

  /// candidate
  static final ResearchSubjectStatus candidate = ResearchSubjectStatus._(
    valueString: 'candidate',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Candidate'.toFhirString,
  );

  /// eligible
  static final ResearchSubjectStatus eligible = ResearchSubjectStatus._(
    valueString: 'eligible',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Eligible'.toFhirString,
  );

  /// follow_up
  static final ResearchSubjectStatus follow_up = ResearchSubjectStatus._(
    valueString: 'follow-up',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Follow-up'.toFhirString,
  );

  /// ineligible
  static final ResearchSubjectStatus ineligible = ResearchSubjectStatus._(
    valueString: 'ineligible',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ineligible'.toFhirString,
  );

  /// not_registered
  static final ResearchSubjectStatus not_registered = ResearchSubjectStatus._(
    valueString: 'not-registered',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Registered'.toFhirString,
  );

  /// off_study
  static final ResearchSubjectStatus off_study = ResearchSubjectStatus._(
    valueString: 'off-study',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Off-study'.toFhirString,
  );

  /// on_study
  static final ResearchSubjectStatus on_study = ResearchSubjectStatus._(
    valueString: 'on-study',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On-study'.toFhirString,
  );

  /// on_study_intervention
  static final ResearchSubjectStatus on_study_intervention =
      ResearchSubjectStatus._(
    valueString: 'on-study-intervention',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On-study-intervention'.toFhirString,
  );

  /// on_study_observation
  static final ResearchSubjectStatus on_study_observation =
      ResearchSubjectStatus._(
    valueString: 'on-study-observation',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On-study-observation'.toFhirString,
  );

  /// pending_on_study
  static final ResearchSubjectStatus pending_on_study = ResearchSubjectStatus._(
    valueString: 'pending-on-study',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pending on-study'.toFhirString,
  );

  /// potential_candidate
  static final ResearchSubjectStatus potential_candidate =
      ResearchSubjectStatus._(
    valueString: 'potential-candidate',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Potential Candidate'.toFhirString,
  );

  /// screening
  static final ResearchSubjectStatus screening = ResearchSubjectStatus._(
    valueString: 'screening',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Screening'.toFhirString,
  );

  /// withdrawn
  static final ResearchSubjectStatus withdrawn = ResearchSubjectStatus._(
    valueString: 'withdrawn',
    system: 'http://hl7.org/fhir/ValueSet/research-subject-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Withdrawn'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ResearchSubjectStatus elementOnly =
      ResearchSubjectStatus._(valueString: '');

  /// List of all enum-like values
  static final List<ResearchSubjectStatus> values = [
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
  ResearchSubjectStatus clone() => ResearchSubjectStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ResearchSubjectStatus copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for ResearchSubjectStatus: $newValue');
    }
    return ResearchSubjectStatus._(
      valueString: newValue ?? valueString,
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
