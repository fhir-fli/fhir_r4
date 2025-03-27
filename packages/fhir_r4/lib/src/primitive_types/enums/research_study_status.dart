// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that convey the current status of the research study.
class ResearchStudyStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ResearchStudyStatus._({
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
  factory ResearchStudyStatus(
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
    return ResearchStudyStatus._(
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

  /// Create empty [ResearchStudyStatus] with element only
  factory ResearchStudyStatus.empty() =>
      ResearchStudyStatus._(validatedValue: '');

  /// Factory constructor to create [ResearchStudyStatus] from JSON.
  factory ResearchStudyStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ResearchStudyStatus cannot be constructed from JSON.',);
    }
    return ResearchStudyStatus._(validatedValue: value, element: element);
  }

  /// active
  static final ResearchStudyStatus active = ResearchStudyStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// administratively_completed
  static final ResearchStudyStatus administratively_completed =
      ResearchStudyStatus._(
    validatedValue: 'administratively-completed',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Administratively Completed'.toFhirString,
  );

  /// approved
  static final ResearchStudyStatus approved = ResearchStudyStatus._(
    validatedValue: 'approved',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Approved'.toFhirString,
  );

  /// closed_to_accrual
  static final ResearchStudyStatus closed_to_accrual = ResearchStudyStatus._(
    validatedValue: 'closed-to-accrual',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Closed to Accrual'.toFhirString,
  );

  /// closed_to_accrual_and_intervention
  static final ResearchStudyStatus closed_to_accrual_and_intervention =
      ResearchStudyStatus._(
    validatedValue: 'closed-to-accrual-and-intervention',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Closed to Accrual and Intervention'.toFhirString,
  );

  /// completed
  static final ResearchStudyStatus completed = ResearchStudyStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// disapproved
  static final ResearchStudyStatus disapproved = ResearchStudyStatus._(
    validatedValue: 'disapproved',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Disapproved'.toFhirString,
  );

  /// in_review
  static final ResearchStudyStatus in_review = ResearchStudyStatus._(
    validatedValue: 'in-review',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Review'.toFhirString,
  );

  /// temporarily_closed_to_accrual
  static final ResearchStudyStatus temporarily_closed_to_accrual =
      ResearchStudyStatus._(
    validatedValue: 'temporarily-closed-to-accrual',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temporarily Closed to Accrual'.toFhirString,
  );

  /// temporarily_closed_to_accrual_and_intervention
  static final ResearchStudyStatus
      temporarily_closed_to_accrual_and_intervention = ResearchStudyStatus._(
    validatedValue: 'temporarily-closed-to-accrual-and-intervention',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Temporarily Closed to Accrual and Intervention'.toFhirString,
  );

  /// withdrawn
  static final ResearchStudyStatus withdrawn = ResearchStudyStatus._(
    validatedValue: 'withdrawn',
    system: 'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Withdrawn'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ResearchStudyStatus elementOnly =
      ResearchStudyStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<ResearchStudyStatus> values = [
    active,
    administratively_completed,
    approved,
    closed_to_accrual,
    closed_to_accrual_and_intervention,
    completed,
    disapproved,
    in_review,
    temporarily_closed_to_accrual,
    temporarily_closed_to_accrual_and_intervention,
    withdrawn,
  ];

  /// Clones the current instance
  @override
  ResearchStudyStatus clone() => ResearchStudyStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ResearchStudyStatus withElement(Element? newElement) {
    return ResearchStudyStatus._(validatedValue: value, element: newElement);
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
  ResearchStudyStatus copyWith({
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
    return ResearchStudyStatus._(
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
