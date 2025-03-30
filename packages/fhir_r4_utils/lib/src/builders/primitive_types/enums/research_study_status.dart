// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes that convey the current status of the research study.
class ResearchStudyStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResearchStudyStatusBuilder._({
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
  factory ResearchStudyStatusBuilder(
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
    return ResearchStudyStatusBuilder._(
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

  /// Create empty [ResearchStudyStatusBuilder] with element only
  factory ResearchStudyStatusBuilder.empty() =>
      ResearchStudyStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [ResearchStudyStatusBuilder]
  /// from JSON.
  factory ResearchStudyStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ResearchStudyStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static ResearchStudyStatusBuilder active = ResearchStudyStatusBuilder._(
    validatedValue: 'active',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// administratively_completed
  static ResearchStudyStatusBuilder administratively_completed =
      ResearchStudyStatusBuilder._(
    validatedValue: 'administratively-completed',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Administratively Completed'.toFhirStringBuilder,
  );

  /// approved
  static ResearchStudyStatusBuilder approved = ResearchStudyStatusBuilder._(
    validatedValue: 'approved',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Approved'.toFhirStringBuilder,
  );

  /// closed_to_accrual
  static ResearchStudyStatusBuilder closed_to_accrual =
      ResearchStudyStatusBuilder._(
    validatedValue: 'closed-to-accrual',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Closed to Accrual'.toFhirStringBuilder,
  );

  /// closed_to_accrual_and_intervention
  static ResearchStudyStatusBuilder closed_to_accrual_and_intervention =
      ResearchStudyStatusBuilder._(
    validatedValue: 'closed-to-accrual-and-intervention',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Closed to Accrual and Intervention'.toFhirStringBuilder,
  );

  /// completed
  static ResearchStudyStatusBuilder completed = ResearchStudyStatusBuilder._(
    validatedValue: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// disapproved
  static ResearchStudyStatusBuilder disapproved = ResearchStudyStatusBuilder._(
    validatedValue: 'disapproved',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Disapproved'.toFhirStringBuilder,
  );

  /// in_review
  static ResearchStudyStatusBuilder in_review = ResearchStudyStatusBuilder._(
    validatedValue: 'in-review',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Review'.toFhirStringBuilder,
  );

  /// temporarily_closed_to_accrual
  static ResearchStudyStatusBuilder temporarily_closed_to_accrual =
      ResearchStudyStatusBuilder._(
    validatedValue: 'temporarily-closed-to-accrual',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Temporarily Closed to Accrual'.toFhirStringBuilder,
  );

  /// temporarily_closed_to_accrual_and_intervention
  static ResearchStudyStatusBuilder
      temporarily_closed_to_accrual_and_intervention =
      ResearchStudyStatusBuilder._(
    validatedValue: 'temporarily-closed-to-accrual-and-intervention',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Temporarily Closed to Accrual and Intervention'.toFhirStringBuilder,
  );

  /// withdrawn
  static ResearchStudyStatusBuilder withdrawn = ResearchStudyStatusBuilder._(
    validatedValue: 'withdrawn',
    system:
        'http://hl7.org/fhir/ValueSet/research-study-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Withdrawn'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ResearchStudyStatusBuilder elementOnly =
      ResearchStudyStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ResearchStudyStatusBuilder> values = [
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
  ResearchStudyStatusBuilder clone() => ResearchStudyStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ResearchStudyStatusBuilder withElement(ElementBuilder? newElement) {
    return ResearchStudyStatusBuilder._(
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
  ResearchStudyStatusBuilder copyWith({
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
    return ResearchStudyStatusBuilder._(
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
