// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResearchStudyStatus
enum ResearchStudyStatusEnum {
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
      case ResearchStudyStatusEnum.active:
        return 'active';
      case ResearchStudyStatusEnum.administrativelyCompleted:
        return 'administratively-completed';
      case ResearchStudyStatusEnum.approved:
        return 'approved';
      case ResearchStudyStatusEnum.closedToAccrual:
        return 'closed-to-accrual';
      case ResearchStudyStatusEnum.closedToAccrualAndIntervention:
        return 'closed-to-accrual-and-intervention';
      case ResearchStudyStatusEnum.completed:
        return 'completed';
      case ResearchStudyStatusEnum.disapproved:
        return 'disapproved';
      case ResearchStudyStatusEnum.inReview:
        return 'in-review';
      case ResearchStudyStatusEnum.temporarilyClosedToAccrual:
        return 'temporarily-closed-to-accrual';
      case ResearchStudyStatusEnum.temporarilyClosedToAccrualAndIntervention:
        return 'temporarily-closed-to-accrual-and-intervention';
      case ResearchStudyStatusEnum.withdrawn:
        return 'withdrawn';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResearchStudyStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ResearchStudyStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResearchStudyStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return ResearchStudyStatusEnum.active;
      case 'administratively-completed':
        return ResearchStudyStatusEnum.administrativelyCompleted;
      case 'approved':
        return ResearchStudyStatusEnum.approved;
      case 'closed-to-accrual':
        return ResearchStudyStatusEnum.closedToAccrual;
      case 'closed-to-accrual-and-intervention':
        return ResearchStudyStatusEnum.closedToAccrualAndIntervention;
      case 'completed':
        return ResearchStudyStatusEnum.completed;
      case 'disapproved':
        return ResearchStudyStatusEnum.disapproved;
      case 'in-review':
        return ResearchStudyStatusEnum.inReview;
      case 'temporarily-closed-to-accrual':
        return ResearchStudyStatusEnum.temporarilyClosedToAccrual;
      case 'temporarily-closed-to-accrual-and-intervention':
        return ResearchStudyStatusEnum
            .temporarilyClosedToAccrualAndIntervention;
      case 'withdrawn':
        return ResearchStudyStatusEnum.withdrawn;
    }
    return null;
  }
}

/// Codes that convey the current status of the research study.
class ResearchStudyStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ResearchStudyStatus._({
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
  factory ResearchStudyStatus(
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
    final valueEnum = ResearchStudyStatusEnum.fromString(valueString);
    return ResearchStudyStatus._(
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

  /// Factory constructor to create [ResearchStudyStatus]
  /// from JSON.
  factory ResearchStudyStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ResearchStudyStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchStudyStatus cannot be constructed from JSON.',
      );
    }
    return ResearchStudyStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ResearchStudyStatus
  final ResearchStudyStatusEnum? valueEnum;

  /// active
  static const ResearchStudyStatus active = ResearchStudyStatus._(
    valueString: 'active',
    valueEnum: ResearchStudyStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// administratively_completed
  static const ResearchStudyStatus administrativelyCompleted =
      ResearchStudyStatus._(
    valueString: 'administratively-completed',
    valueEnum: ResearchStudyStatusEnum.administrativelyCompleted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Administratively Completed',
    ),
  );

  /// approved
  static const ResearchStudyStatus approved = ResearchStudyStatus._(
    valueString: 'approved',
    valueEnum: ResearchStudyStatusEnum.approved,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Approved',
    ),
  );

  /// closed_to_accrual
  static const ResearchStudyStatus closedToAccrual = ResearchStudyStatus._(
    valueString: 'closed-to-accrual',
    valueEnum: ResearchStudyStatusEnum.closedToAccrual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Closed to Accrual',
    ),
  );

  /// closed_to_accrual_and_intervention
  static const ResearchStudyStatus closedToAccrualAndIntervention =
      ResearchStudyStatus._(
    valueString: 'closed-to-accrual-and-intervention',
    valueEnum: ResearchStudyStatusEnum.closedToAccrualAndIntervention,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Closed to Accrual and Intervention',
    ),
  );

  /// completed
  static const ResearchStudyStatus completed = ResearchStudyStatus._(
    valueString: 'completed',
    valueEnum: ResearchStudyStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// disapproved
  static const ResearchStudyStatus disapproved = ResearchStudyStatus._(
    valueString: 'disapproved',
    valueEnum: ResearchStudyStatusEnum.disapproved,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Disapproved',
    ),
  );

  /// in_review
  static const ResearchStudyStatus inReview = ResearchStudyStatus._(
    valueString: 'in-review',
    valueEnum: ResearchStudyStatusEnum.inReview,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Review',
    ),
  );

  /// temporarily_closed_to_accrual
  static const ResearchStudyStatus temporarilyClosedToAccrual =
      ResearchStudyStatus._(
    valueString: 'temporarily-closed-to-accrual',
    valueEnum: ResearchStudyStatusEnum.temporarilyClosedToAccrual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Temporarily Closed to Accrual',
    ),
  );

  /// temporarily_closed_to_accrual_and_intervention
  static const ResearchStudyStatus temporarilyClosedToAccrualAndIntervention =
      ResearchStudyStatus._(
    valueString: 'temporarily-closed-to-accrual-and-intervention',
    valueEnum:
        ResearchStudyStatusEnum.temporarilyClosedToAccrualAndIntervention,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Temporarily Closed to Accrual and Intervention',
    ),
  );

  /// withdrawn
  static const ResearchStudyStatus withdrawn = ResearchStudyStatus._(
    valueString: 'withdrawn',
    valueEnum: ResearchStudyStatusEnum.withdrawn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-study-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Withdrawn',
    ),
  );

  /// List of all enum-like values
  static final List<ResearchStudyStatus> values = [
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
  ResearchStudyStatus withElement(Element? newElement) {
    return ResearchStudyStatus._(
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
  ResearchStudyStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ResearchStudyStatusCopyWithImpl<ResearchStudyStatus> get copyWith =>
      ResearchStudyStatusCopyWithImpl<ResearchStudyStatus>(
        this,
        (v) => v as ResearchStudyStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ResearchStudyStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ResearchStudyStatusCopyWithImpl(super._value, super._then);

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
      ResearchStudyStatus(
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
