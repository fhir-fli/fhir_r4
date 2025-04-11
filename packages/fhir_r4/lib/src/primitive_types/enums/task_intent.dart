// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TaskIntent
enum TaskIntentEnum {
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
      case TaskIntentEnum.unknown:
        return 'unknown';
      case TaskIntentEnum.proposal:
        return 'proposal';
      case TaskIntentEnum.plan:
        return 'plan';
      case TaskIntentEnum.directive:
        return 'directive';
      case TaskIntentEnum.order:
        return 'order';
      case TaskIntentEnum.originalOrder:
        return 'original-order';
      case TaskIntentEnum.reflexOrder:
        return 'reflex-order';
      case TaskIntentEnum.fillerOrder:
        return 'filler-order';
      case TaskIntentEnum.instanceOrder:
        return 'instance-order';
      case TaskIntentEnum.option:
        return 'option';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TaskIntentEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TaskIntentEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TaskIntentEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'unknown':
        return TaskIntentEnum.unknown;
      case 'proposal':
        return TaskIntentEnum.proposal;
      case 'plan':
        return TaskIntentEnum.plan;
      case 'directive':
        return TaskIntentEnum.directive;
      case 'order':
        return TaskIntentEnum.order;
      case 'original-order':
        return TaskIntentEnum.originalOrder;
      case 'reflex-order':
        return TaskIntentEnum.reflexOrder;
      case 'filler-order':
        return TaskIntentEnum.fillerOrder;
      case 'instance-order':
        return TaskIntentEnum.instanceOrder;
      case 'option':
        return TaskIntentEnum.option;
    }
    return null;
  }
}

/// Distinguishes whether the task is a proposal, plan or full order.
class TaskIntent extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TaskIntent._({
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
  factory TaskIntent(
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
    final valueEnum = TaskIntentEnum.fromString(valueString);
    return TaskIntent._(
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

  /// Factory constructor to create [TaskIntent]
  /// from JSON.
  factory TaskIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TaskIntentEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskIntent._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TaskIntent cannot be constructed from JSON.',
      );
    }
    return TaskIntent._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TaskIntent
  final TaskIntentEnum? valueEnum;

  /// unknown
  static const TaskIntent unknown = TaskIntent._(
    valueString: 'unknown',
    valueEnum: TaskIntentEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// proposal
  static const TaskIntent proposal = TaskIntent._(
    valueString: 'proposal',
    valueEnum: TaskIntentEnum.proposal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposal',
    ),
  );

  /// plan
  static const TaskIntent plan = TaskIntent._(
    valueString: 'plan',
    valueEnum: TaskIntentEnum.plan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Plan',
    ),
  );

  /// directive
  static const TaskIntent directive = TaskIntent._(
    valueString: 'directive',
    valueEnum: TaskIntentEnum.directive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Directive',
    ),
  );

  /// order
  static const TaskIntent order = TaskIntent._(
    valueString: 'order',
    valueEnum: TaskIntentEnum.order,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Order',
    ),
  );

  /// original_order
  static const TaskIntent originalOrder = TaskIntent._(
    valueString: 'original-order',
    valueEnum: TaskIntentEnum.originalOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Original Order',
    ),
  );

  /// reflex_order
  static const TaskIntent reflexOrder = TaskIntent._(
    valueString: 'reflex-order',
    valueEnum: TaskIntentEnum.reflexOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reflex Order',
    ),
  );

  /// filler_order
  static const TaskIntent fillerOrder = TaskIntent._(
    valueString: 'filler-order',
    valueEnum: TaskIntentEnum.fillerOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Filler Order',
    ),
  );

  /// instance_order
  static const TaskIntent instanceOrder = TaskIntent._(
    valueString: 'instance-order',
    valueEnum: TaskIntentEnum.instanceOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Instance Order',
    ),
  );

  /// option
  static const TaskIntent option = TaskIntent._(
    valueString: 'option',
    valueEnum: TaskIntentEnum.option,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/task-intent',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Option',
    ),
  );

  /// List of all enum-like values
  static final List<TaskIntent> values = [
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
  TaskIntent withElement(Element? newElement) {
    return TaskIntent._(
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
  TaskIntent clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TaskIntentCopyWithImpl<TaskIntent> get copyWith =>
      TaskIntentCopyWithImpl<TaskIntent>(
        this,
        (v) => v as TaskIntent,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TaskIntentCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TaskIntentCopyWithImpl(super._value, super._then);

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
      TaskIntent(
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
