part of '../primitive_types.dart';

/// Actual enum for TaskIntent
enum TaskIntentBuilderEnum {
  /// unknown
  unknown,

  /// proposal
  proposal,

  /// plan
  plan,

  /// directive
  directive,

  /// order
  order,

  /// original-order
  originalOrder,

  /// reflex-order
  reflexOrder,

  /// filler-order
  fillerOrder,

  /// instance-order
  instanceOrder,

  /// option
  option,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TaskIntentBuilderEnum.unknown:
        return 'unknown';
      case TaskIntentBuilderEnum.proposal:
        return 'proposal';
      case TaskIntentBuilderEnum.plan:
        return 'plan';
      case TaskIntentBuilderEnum.directive:
        return 'directive';
      case TaskIntentBuilderEnum.order:
        return 'order';
      case TaskIntentBuilderEnum.originalOrder:
        return 'original-order';
      case TaskIntentBuilderEnum.reflexOrder:
        return 'reflex-order';
      case TaskIntentBuilderEnum.fillerOrder:
        return 'filler-order';
      case TaskIntentBuilderEnum.instanceOrder:
        return 'instance-order';
      case TaskIntentBuilderEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TaskIntentBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TaskIntentBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TaskIntentBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unknown':
        return TaskIntentBuilderEnum.unknown;
      case 'proposal':
        return TaskIntentBuilderEnum.proposal;
      case 'plan':
        return TaskIntentBuilderEnum.plan;
      case 'directive':
        return TaskIntentBuilderEnum.directive;
      case 'order':
        return TaskIntentBuilderEnum.order;
      case 'original-order':
        return TaskIntentBuilderEnum.originalOrder;
      case 'reflex-order':
        return TaskIntentBuilderEnum.reflexOrder;
      case 'filler-order':
        return TaskIntentBuilderEnum.fillerOrder;
      case 'instance-order':
        return TaskIntentBuilderEnum.instanceOrder;
      case 'option':
        return TaskIntentBuilderEnum.option;
    }
    return null;
  }
}

/// Distinguishes whether the task is a proposal, plan or full order.
class TaskIntentBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TaskIntentBuilder._({
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
  factory TaskIntentBuilder(
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
    final valueEnum = TaskIntentBuilderEnum.fromString(
      valueString,
    );
    return TaskIntentBuilder._(
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

  /// Create empty [TaskIntentBuilder]
  /// with element only
  factory TaskIntentBuilder.empty() => TaskIntentBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TaskIntentBuilder] from JSON.
  factory TaskIntentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntentBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskIntentBuilder cannot be constructed from JSON.',
      );
    }
    return TaskIntentBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TaskIntentBuilder
  final TaskIntentBuilderEnum? valueEnum;

  /// unknown
  static TaskIntentBuilder unknown = TaskIntentBuilder._(
    valueString: 'unknown',
    valueEnum: TaskIntentBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// proposal
  static TaskIntentBuilder proposal = TaskIntentBuilder._(
    valueString: 'proposal',
    valueEnum: TaskIntentBuilderEnum.proposal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static TaskIntentBuilder plan = TaskIntentBuilder._(
    valueString: 'plan',
    valueEnum: TaskIntentBuilderEnum.plan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static TaskIntentBuilder directive = TaskIntentBuilder._(
    valueString: 'directive',
    valueEnum: TaskIntentBuilderEnum.directive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Directive',
    ),
  );

  /// order
  static TaskIntentBuilder order = TaskIntentBuilder._(
    valueString: 'order',
    valueEnum: TaskIntentBuilderEnum.order,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static TaskIntentBuilder originalOrder = TaskIntentBuilder._(
    valueString: 'original-order',
    valueEnum: TaskIntentBuilderEnum.originalOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static TaskIntentBuilder reflexOrder = TaskIntentBuilder._(
    valueString: 'reflex-order',
    valueEnum: TaskIntentBuilderEnum.reflexOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static TaskIntentBuilder fillerOrder = TaskIntentBuilder._(
    valueString: 'filler-order',
    valueEnum: TaskIntentBuilderEnum.fillerOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static TaskIntentBuilder instanceOrder = TaskIntentBuilder._(
    valueString: 'instance-order',
    valueEnum: TaskIntentBuilderEnum.instanceOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static TaskIntentBuilder option = TaskIntentBuilder._(
    valueString: 'option',
    valueEnum: TaskIntentBuilderEnum.option,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Option',
    ),
  );

  /// For instances where an Element is present but not value
  static TaskIntentBuilder elementOnly = TaskIntentBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TaskIntentBuilder> values = [
    unknown,
    proposal,
    plan,
    directive,
    order,
    originalOrder,
    reflexOrder,
    fillerOrder,
    instanceOrder,
    option,
  ];

  /// Returns the enum value with an element attached
  TaskIntentBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TaskIntentBuilder._(
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
