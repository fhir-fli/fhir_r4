// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResearchStudyStatus
enum ResearchStudyStatusBuilderEnum {
  /// active
  active,

  /// administratively-completed
  administrativelyCompleted,

  /// approved
  approved,

  /// closed-to-accrual
  closedToAccrual,

  /// closed-to-accrual-and-intervention
  closedToAccrualAndIntervention,

  /// completed
  completed,

  /// disapproved
  disapproved,

  /// in-review
  inReview,

  /// temporarily-closed-to-accrual
  temporarilyClosedToAccrual,

  /// temporarily-closed-to-accrual-and-intervention
  temporarilyClosedToAccrualAndIntervention,

  /// withdrawn
  withdrawn,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResearchStudyStatusBuilderEnum.active:
        return 'active';
      case ResearchStudyStatusBuilderEnum.administrativelyCompleted:
        return 'administratively-completed';
      case ResearchStudyStatusBuilderEnum.approved:
        return 'approved';
      case ResearchStudyStatusBuilderEnum.closedToAccrual:
        return 'closed-to-accrual';
      case ResearchStudyStatusBuilderEnum.closedToAccrualAndIntervention:
        return 'closed-to-accrual-and-intervention';
      case ResearchStudyStatusBuilderEnum.completed:
        return 'completed';
      case ResearchStudyStatusBuilderEnum.disapproved:
        return 'disapproved';
      case ResearchStudyStatusBuilderEnum.inReview:
        return 'in-review';
      case ResearchStudyStatusBuilderEnum.temporarilyClosedToAccrual:
        return 'temporarily-closed-to-accrual';
      case ResearchStudyStatusBuilderEnum
            .temporarilyClosedToAccrualAndIntervention:
        return 'temporarily-closed-to-accrual-and-intervention';
      case ResearchStudyStatusBuilderEnum.withdrawn:
        return 'withdrawn';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResearchStudyStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ResearchStudyStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResearchStudyStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return ResearchStudyStatusBuilderEnum.active;
      case 'administratively-completed':
        return ResearchStudyStatusBuilderEnum.administrativelyCompleted;
      case 'approved':
        return ResearchStudyStatusBuilderEnum.approved;
      case 'closed-to-accrual':
        return ResearchStudyStatusBuilderEnum.closedToAccrual;
      case 'closed-to-accrual-and-intervention':
        return ResearchStudyStatusBuilderEnum.closedToAccrualAndIntervention;
      case 'completed':
        return ResearchStudyStatusBuilderEnum.completed;
      case 'disapproved':
        return ResearchStudyStatusBuilderEnum.disapproved;
      case 'in-review':
        return ResearchStudyStatusBuilderEnum.inReview;
      case 'temporarily-closed-to-accrual':
        return ResearchStudyStatusBuilderEnum.temporarilyClosedToAccrual;
      case 'temporarily-closed-to-accrual-and-intervention':
        return ResearchStudyStatusBuilderEnum
            .temporarilyClosedToAccrualAndIntervention;
      case 'withdrawn':
        return ResearchStudyStatusBuilderEnum.withdrawn;
    }
    return null;
  }
}

/// Codes that convey the current status of the research study.
class ResearchStudyStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResearchStudyStatusBuilder._({
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
  factory ResearchStudyStatusBuilder(
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
    final valueEnum = ResearchStudyStatusBuilderEnum.fromString(
      valueString,
    );
    return ResearchStudyStatusBuilder._(
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

  /// Create empty [ResearchStudyStatusBuilder]
  /// with element only
  factory ResearchStudyStatusBuilder.empty() =>
      ResearchStudyStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ResearchStudyStatusBuilder] from JSON.
  factory ResearchStudyStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ResearchStudyStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ResearchStudyStatusBuilder
  final ResearchStudyStatusBuilderEnum? valueEnum;

  /// active
  static ResearchStudyStatusBuilder active = ResearchStudyStatusBuilder._(
    valueString: 'active',
    valueEnum: ResearchStudyStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// administratively_completed
  static ResearchStudyStatusBuilder administrativelyCompleted =
      ResearchStudyStatusBuilder._(
    valueString: 'administratively-completed',
    valueEnum: ResearchStudyStatusBuilderEnum.administrativelyCompleted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Administratively Completed',
    ),
  );

  /// approved
  static ResearchStudyStatusBuilder approved = ResearchStudyStatusBuilder._(
    valueString: 'approved',
    valueEnum: ResearchStudyStatusBuilderEnum.approved,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Approved',
    ),
  );

  /// closed_to_accrual
  static ResearchStudyStatusBuilder closedToAccrual =
      ResearchStudyStatusBuilder._(
    valueString: 'closed-to-accrual',
    valueEnum: ResearchStudyStatusBuilderEnum.closedToAccrual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Closed to Accrual',
    ),
  );

  /// closed_to_accrual_and_intervention
  static ResearchStudyStatusBuilder closedToAccrualAndIntervention =
      ResearchStudyStatusBuilder._(
    valueString: 'closed-to-accrual-and-intervention',
    valueEnum: ResearchStudyStatusBuilderEnum.closedToAccrualAndIntervention,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Closed to Accrual and Intervention',
    ),
  );

  /// completed
  static ResearchStudyStatusBuilder completed = ResearchStudyStatusBuilder._(
    valueString: 'completed',
    valueEnum: ResearchStudyStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// disapproved
  static ResearchStudyStatusBuilder disapproved = ResearchStudyStatusBuilder._(
    valueString: 'disapproved',
    valueEnum: ResearchStudyStatusBuilderEnum.disapproved,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Disapproved',
    ),
  );

  /// in_review
  static ResearchStudyStatusBuilder inReview = ResearchStudyStatusBuilder._(
    valueString: 'in-review',
    valueEnum: ResearchStudyStatusBuilderEnum.inReview,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Review',
    ),
  );

  /// temporarily_closed_to_accrual
  static ResearchStudyStatusBuilder temporarilyClosedToAccrual =
      ResearchStudyStatusBuilder._(
    valueString: 'temporarily-closed-to-accrual',
    valueEnum: ResearchStudyStatusBuilderEnum.temporarilyClosedToAccrual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Temporarily Closed to Accrual',
    ),
  );

  /// temporarily_closed_to_accrual_and_intervention
  static ResearchStudyStatusBuilder temporarilyClosedToAccrualAndIntervention =
      ResearchStudyStatusBuilder._(
    valueString: 'temporarily-closed-to-accrual-and-intervention',
    valueEnum: ResearchStudyStatusBuilderEnum
        .temporarilyClosedToAccrualAndIntervention,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Temporarily Closed to Accrual and Intervention',
    ),
  );

  /// withdrawn
  static ResearchStudyStatusBuilder withdrawn = ResearchStudyStatusBuilder._(
    valueString: 'withdrawn',
    valueEnum: ResearchStudyStatusBuilderEnum.withdrawn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Withdrawn',
    ),
  );

  /// For instances where an Element is present but not value
  static ResearchStudyStatusBuilder elementOnly = ResearchStudyStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ResearchStudyStatusBuilder> values = [
    active,
    administrativelyCompleted,
    approved,
    closedToAccrual,
    closedToAccrualAndIntervention,
    completed,
    disapproved,
    inReview,
    temporarilyClosedToAccrual,
    temporarilyClosedToAccrualAndIntervention,
    withdrawn,
  ];

  /// Returns the enum value with an element attached
  ResearchStudyStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ResearchStudyStatusBuilder._(
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
