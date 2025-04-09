// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GoalLifecycleStatus
enum GoalLifecycleStatusEnum {
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
      case GoalLifecycleStatusEnum.proposed:
        return 'proposed';
      case GoalLifecycleStatusEnum.planned:
        return 'planned';
      case GoalLifecycleStatusEnum.accepted:
        return 'accepted';
      case GoalLifecycleStatusEnum.active:
        return 'active';
      case GoalLifecycleStatusEnum.onHold:
        return 'on-hold';
      case GoalLifecycleStatusEnum.completed:
        return 'completed';
      case GoalLifecycleStatusEnum.cancelled:
        return 'cancelled';
      case GoalLifecycleStatusEnum.enteredInError:
        return 'entered-in-error';
      case GoalLifecycleStatusEnum.rejected:
        return 'rejected';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GoalLifecycleStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GoalLifecycleStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GoalLifecycleStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposed':
        return GoalLifecycleStatusEnum.proposed;
      case 'planned':
        return GoalLifecycleStatusEnum.planned;
      case 'accepted':
        return GoalLifecycleStatusEnum.accepted;
      case 'active':
        return GoalLifecycleStatusEnum.active;
      case 'on-hold':
        return GoalLifecycleStatusEnum.onHold;
      case 'completed':
        return GoalLifecycleStatusEnum.completed;
      case 'cancelled':
        return GoalLifecycleStatusEnum.cancelled;
      case 'entered-in-error':
        return GoalLifecycleStatusEnum.enteredInError;
      case 'rejected':
        return GoalLifecycleStatusEnum.rejected;
    }
    return null;
  }
}

/// Codes that reflect the current state of a goal and whether the goal is
/// still being targeted.
class GoalLifecycleStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GoalLifecycleStatus._({
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
  factory GoalLifecycleStatus(
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
    final valueEnum = GoalLifecycleStatusEnum.fromString(valueString);
    return GoalLifecycleStatus._(
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

  /// Factory constructor to create [GoalLifecycleStatus]
  /// from JSON.
  factory GoalLifecycleStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GoalLifecycleStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalLifecycleStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GoalLifecycleStatus cannot be constructed from JSON.',
      );
    }
    return GoalLifecycleStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GoalLifecycleStatus
  final GoalLifecycleStatusEnum? valueEnum;

  /// proposed
  static const GoalLifecycleStatus proposed = GoalLifecycleStatus._(
    valueString: 'proposed',
    valueEnum: GoalLifecycleStatusEnum.proposed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposed',
    ),
  );

  /// planned
  static const GoalLifecycleStatus planned = GoalLifecycleStatus._(
    valueString: 'planned',
    valueEnum: GoalLifecycleStatusEnum.planned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Planned',
    ),
  );

  /// accepted
  static const GoalLifecycleStatus accepted = GoalLifecycleStatus._(
    valueString: 'accepted',
    valueEnum: GoalLifecycleStatusEnum.accepted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Accepted',
    ),
  );

  /// active
  static const GoalLifecycleStatus active = GoalLifecycleStatus._(
    valueString: 'active',
    valueEnum: GoalLifecycleStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static const GoalLifecycleStatus onHold = GoalLifecycleStatus._(
    valueString: 'on-hold',
    valueEnum: GoalLifecycleStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static const GoalLifecycleStatus completed = GoalLifecycleStatus._(
    valueString: 'completed',
    valueEnum: GoalLifecycleStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// cancelled
  static const GoalLifecycleStatus cancelled = GoalLifecycleStatus._(
    valueString: 'cancelled',
    valueEnum: GoalLifecycleStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const GoalLifecycleStatus enteredInError = GoalLifecycleStatus._(
    valueString: 'entered-in-error',
    valueEnum: GoalLifecycleStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// rejected
  static const GoalLifecycleStatus rejected = GoalLifecycleStatus._(
    valueString: 'rejected',
    valueEnum: GoalLifecycleStatusEnum.rejected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/goal-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Rejected',
    ),
  );

  /// List of all enum-like values
  static final List<GoalLifecycleStatus> values = [
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
  GoalLifecycleStatus withElement(Element? newElement) {
    return GoalLifecycleStatus._(
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
  GoalLifecycleStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GoalLifecycleStatusCopyWithImpl<GoalLifecycleStatus> get copyWith =>
      GoalLifecycleStatusCopyWithImpl<GoalLifecycleStatus>(
        this,
        (v) => v as GoalLifecycleStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GoalLifecycleStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GoalLifecycleStatusCopyWithImpl(super._value, super._then);

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
      GoalLifecycleStatus(
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
