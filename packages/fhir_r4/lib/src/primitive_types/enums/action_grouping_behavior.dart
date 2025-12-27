part of '../primitive_types.dart';

/// Actual enum for ActionGroupingBehavior
enum ActionGroupingBehaviorEnum {
  /// visual-group
  visualGroup,

  /// logical-group
  logicalGroup,

  /// sentence-group
  sentenceGroup,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionGroupingBehaviorEnum.visualGroup:
        return 'visual-group';
      case ActionGroupingBehaviorEnum.logicalGroup:
        return 'logical-group';
      case ActionGroupingBehaviorEnum.sentenceGroup:
        return 'sentence-group';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionGroupingBehaviorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionGroupingBehaviorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionGroupingBehaviorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'visual-group':
        return ActionGroupingBehaviorEnum.visualGroup;
      case 'logical-group':
        return ActionGroupingBehaviorEnum.logicalGroup;
      case 'sentence-group':
        return ActionGroupingBehaviorEnum.sentenceGroup;
    }
    return null;
  }
}

/// Defines organization behavior of a group.
class ActionGroupingBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ActionGroupingBehavior._({
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
  factory ActionGroupingBehavior(
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
    final valueEnum = ActionGroupingBehaviorEnum.fromString(valueString);
    return ActionGroupingBehavior._(
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

  /// Factory constructor to create [ActionGroupingBehavior]
  /// from JSON.
  factory ActionGroupingBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ActionGroupingBehaviorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehavior._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionGroupingBehavior cannot be constructed from JSON.',
      );
    }
    return ActionGroupingBehavior._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ActionGroupingBehavior
  final ActionGroupingBehaviorEnum? valueEnum;

  /// visual_group
  static const ActionGroupingBehavior visualGroup = ActionGroupingBehavior._(
    valueString: 'visual-group',
    valueEnum: ActionGroupingBehaviorEnum.visualGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Visual Group',
    ),
  );

  /// logical_group
  static const ActionGroupingBehavior logicalGroup = ActionGroupingBehavior._(
    valueString: 'logical-group',
    valueEnum: ActionGroupingBehaviorEnum.logicalGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Logical Group',
    ),
  );

  /// sentence_group
  static const ActionGroupingBehavior sentenceGroup = ActionGroupingBehavior._(
    valueString: 'sentence-group',
    valueEnum: ActionGroupingBehaviorEnum.sentenceGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Sentence Group',
    ),
  );

  /// List of all enum-like values
  static final List<ActionGroupingBehavior> values = [
    visualGroup,
    logicalGroup,
    sentenceGroup,
  ];

  /// Returns the enum value with an element attached
  ActionGroupingBehavior withElement(Element? newElement) {
    return ActionGroupingBehavior._(
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
  ActionGroupingBehavior clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ActionGroupingBehaviorCopyWithImpl<ActionGroupingBehavior> get copyWith =>
      ActionGroupingBehaviorCopyWithImpl<ActionGroupingBehavior>(
        this,
        (v) => v as ActionGroupingBehavior,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ActionGroupingBehaviorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ActionGroupingBehaviorCopyWithImpl(super._value, super._then);

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
      ActionGroupingBehavior(
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
