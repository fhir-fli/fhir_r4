part of '../primitive_types.dart';

/// Actual enum for GoalLifecycleStatus
enum GoalLifecycleStatusBuilderEnum {
  /// proposed
  proposed,

  /// planned
  planned,

  /// accepted
  accepted,

  /// active
  active,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,

  /// rejected
  rejected,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GoalLifecycleStatusBuilderEnum.proposed:
        return 'proposed';
      case GoalLifecycleStatusBuilderEnum.planned:
        return 'planned';
      case GoalLifecycleStatusBuilderEnum.accepted:
        return 'accepted';
      case GoalLifecycleStatusBuilderEnum.active:
        return 'active';
      case GoalLifecycleStatusBuilderEnum.onHold:
        return 'on-hold';
      case GoalLifecycleStatusBuilderEnum.completed:
        return 'completed';
      case GoalLifecycleStatusBuilderEnum.cancelled:
        return 'cancelled';
      case GoalLifecycleStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case GoalLifecycleStatusBuilderEnum.rejected:
        return 'rejected';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GoalLifecycleStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GoalLifecycleStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GoalLifecycleStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposed':
        return GoalLifecycleStatusBuilderEnum.proposed;
      case 'planned':
        return GoalLifecycleStatusBuilderEnum.planned;
      case 'accepted':
        return GoalLifecycleStatusBuilderEnum.accepted;
      case 'active':
        return GoalLifecycleStatusBuilderEnum.active;
      case 'on-hold':
        return GoalLifecycleStatusBuilderEnum.onHold;
      case 'completed':
        return GoalLifecycleStatusBuilderEnum.completed;
      case 'cancelled':
        return GoalLifecycleStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return GoalLifecycleStatusBuilderEnum.enteredInError;
      case 'rejected':
        return GoalLifecycleStatusBuilderEnum.rejected;
    }
    return null;
  }
}

/// Codes that reflect the current state of a goal and whether the goal is
/// still being targeted.
class GoalLifecycleStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GoalLifecycleStatusBuilder._({
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
  factory GoalLifecycleStatusBuilder(
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
    final valueEnum = GoalLifecycleStatusBuilderEnum.fromString(
      valueString,
    );
    return GoalLifecycleStatusBuilder._(
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

  /// Create empty [GoalLifecycleStatusBuilder]
  /// with element only
  factory GoalLifecycleStatusBuilder.empty() =>
      GoalLifecycleStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GoalLifecycleStatusBuilder] from JSON.
  factory GoalLifecycleStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalLifecycleStatusBuilder cannot be constructed from JSON.',
      );
    }
    return GoalLifecycleStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GoalLifecycleStatusBuilder
  final GoalLifecycleStatusBuilderEnum? valueEnum;

  /// proposed
  static GoalLifecycleStatusBuilder proposed = GoalLifecycleStatusBuilder._(
    valueString: 'proposed',
    valueEnum: GoalLifecycleStatusBuilderEnum.proposed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposed',
    ),
  );

  /// planned
  static GoalLifecycleStatusBuilder planned = GoalLifecycleStatusBuilder._(
    valueString: 'planned',
    valueEnum: GoalLifecycleStatusBuilderEnum.planned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Planned',
    ),
  );

  /// accepted
  static GoalLifecycleStatusBuilder accepted = GoalLifecycleStatusBuilder._(
    valueString: 'accepted',
    valueEnum: GoalLifecycleStatusBuilderEnum.accepted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Accepted',
    ),
  );

  /// active
  static GoalLifecycleStatusBuilder active = GoalLifecycleStatusBuilder._(
    valueString: 'active',
    valueEnum: GoalLifecycleStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static GoalLifecycleStatusBuilder onHold = GoalLifecycleStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: GoalLifecycleStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static GoalLifecycleStatusBuilder completed = GoalLifecycleStatusBuilder._(
    valueString: 'completed',
    valueEnum: GoalLifecycleStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// cancelled
  static GoalLifecycleStatusBuilder cancelled = GoalLifecycleStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: GoalLifecycleStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static GoalLifecycleStatusBuilder enteredInError =
      GoalLifecycleStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: GoalLifecycleStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// rejected
  static GoalLifecycleStatusBuilder rejected = GoalLifecycleStatusBuilder._(
    valueString: 'rejected',
    valueEnum: GoalLifecycleStatusBuilderEnum.rejected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Rejected',
    ),
  );

  /// For instances where an Element is present but not value
  static GoalLifecycleStatusBuilder elementOnly = GoalLifecycleStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GoalLifecycleStatusBuilder> values = [
    proposed,
    planned,
    accepted,
    active,
    onHold,
    completed,
    cancelled,
    enteredInError,
    rejected,
  ];

  /// Returns the enum value with an element attached
  GoalLifecycleStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GoalLifecycleStatusBuilder._(
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
