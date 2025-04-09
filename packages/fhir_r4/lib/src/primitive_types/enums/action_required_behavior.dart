// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionRequiredBehavior
enum ActionRequiredBehaviorEnum {
  /// must
  must,

  /// could
  could,

  /// must-unless-documented
  mustUnlessDocumented,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionRequiredBehaviorEnum.must:
        return 'must';
      case ActionRequiredBehaviorEnum.could:
        return 'could';
      case ActionRequiredBehaviorEnum.mustUnlessDocumented:
        return 'must-unless-documented';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionRequiredBehaviorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionRequiredBehaviorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionRequiredBehaviorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'must':
        return ActionRequiredBehaviorEnum.must;
      case 'could':
        return ActionRequiredBehaviorEnum.could;
      case 'must-unless-documented':
        return ActionRequiredBehaviorEnum.mustUnlessDocumented;
    }
    return null;
  }
}

/// Defines expectations around whether an action or action group is
/// required.
class ActionRequiredBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ActionRequiredBehavior._({
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
  factory ActionRequiredBehavior(
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
    final valueEnum = ActionRequiredBehaviorEnum.fromString(valueString);
    return ActionRequiredBehavior._(
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

  /// Factory constructor to create [ActionRequiredBehavior]
  /// from JSON.
  factory ActionRequiredBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ActionRequiredBehaviorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehavior._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRequiredBehavior cannot be constructed from JSON.',
      );
    }
    return ActionRequiredBehavior._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ActionRequiredBehavior
  final ActionRequiredBehaviorEnum? valueEnum;

  /// must
  static const ActionRequiredBehavior must = ActionRequiredBehavior._(
    valueString: 'must',
    valueEnum: ActionRequiredBehaviorEnum.must,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-required-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Must',
    ),
  );

  /// could
  static const ActionRequiredBehavior could = ActionRequiredBehavior._(
    valueString: 'could',
    valueEnum: ActionRequiredBehaviorEnum.could,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-required-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Could',
    ),
  );

  /// must_unless_documented
  static const ActionRequiredBehavior mustUnlessDocumented =
      ActionRequiredBehavior._(
    valueString: 'must-unless-documented',
    valueEnum: ActionRequiredBehaviorEnum.mustUnlessDocumented,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-required-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Must Unless Documented',
    ),
  );

  /// List of all enum-like values
  static final List<ActionRequiredBehavior> values = [
    must,
    could,
    mustUnlessDocumented,
  ];

  /// Returns the enum value with an element attached
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior._(
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
  ActionRequiredBehavior clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ActionRequiredBehaviorCopyWithImpl<ActionRequiredBehavior> get copyWith =>
      ActionRequiredBehaviorCopyWithImpl<ActionRequiredBehavior>(
        this,
        (v) => v as ActionRequiredBehavior,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ActionRequiredBehaviorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ActionRequiredBehaviorCopyWithImpl(super._value, super._then);

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
      ActionRequiredBehavior(
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
