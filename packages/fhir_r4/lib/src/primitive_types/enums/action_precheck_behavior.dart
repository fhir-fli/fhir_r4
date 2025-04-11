// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionPrecheckBehavior
enum ActionPrecheckBehaviorEnum {
  /// yes
  yes,

  /// no
  no,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionPrecheckBehaviorEnum.yes:
        return 'yes';
      case ActionPrecheckBehaviorEnum.no:
        return 'no';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionPrecheckBehaviorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionPrecheckBehaviorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionPrecheckBehaviorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'yes':
        return ActionPrecheckBehaviorEnum.yes;
      case 'no':
        return ActionPrecheckBehaviorEnum.no;
    }
    return null;
  }
}

/// Defines selection frequency behavior for an action or group.
class ActionPrecheckBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ActionPrecheckBehavior._({
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
  factory ActionPrecheckBehavior(
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
    final valueEnum = ActionPrecheckBehaviorEnum.fromString(valueString);
    return ActionPrecheckBehavior._(
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

  /// Factory constructor to create [ActionPrecheckBehavior]
  /// from JSON.
  factory ActionPrecheckBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ActionPrecheckBehaviorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionPrecheckBehavior._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionPrecheckBehavior cannot be constructed from JSON.',
      );
    }
    return ActionPrecheckBehavior._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ActionPrecheckBehavior
  final ActionPrecheckBehaviorEnum? valueEnum;

  /// yes
  static const ActionPrecheckBehavior yes = ActionPrecheckBehavior._(
    valueString: 'yes',
    valueEnum: ActionPrecheckBehaviorEnum.yes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-precheck-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Yes',
    ),
  );

  /// no
  static const ActionPrecheckBehavior no = ActionPrecheckBehavior._(
    valueString: 'no',
    valueEnum: ActionPrecheckBehaviorEnum.no,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-precheck-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'No',
    ),
  );

  /// List of all enum-like values
  static final List<ActionPrecheckBehavior> values = [
    yes,
    no,
  ];

  /// Returns the enum value with an element attached
  ActionPrecheckBehavior withElement(Element? newElement) {
    return ActionPrecheckBehavior._(
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
  ActionPrecheckBehavior clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ActionPrecheckBehaviorCopyWithImpl<ActionPrecheckBehavior> get copyWith =>
      ActionPrecheckBehaviorCopyWithImpl<ActionPrecheckBehavior>(
        this,
        (v) => v as ActionPrecheckBehavior,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ActionPrecheckBehaviorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ActionPrecheckBehaviorCopyWithImpl(super._value, super._then);

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
      ActionPrecheckBehavior(
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
