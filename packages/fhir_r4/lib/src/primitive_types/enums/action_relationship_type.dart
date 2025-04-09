// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionRelationshipType
enum ActionRelationshipTypeEnum {
  /// before-start
  beforeStart,

  /// before
  before,

  /// before-end
  beforeEnd,

  /// concurrent-with-start
  concurrentWithStart,

  /// concurrent
  concurrent,

  /// concurrent-with-end
  concurrentWithEnd,

  /// after-start
  afterStart,

  /// after
  after,

  /// after-end
  afterEnd,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionRelationshipTypeEnum.beforeStart:
        return 'before-start';
      case ActionRelationshipTypeEnum.before:
        return 'before';
      case ActionRelationshipTypeEnum.beforeEnd:
        return 'before-end';
      case ActionRelationshipTypeEnum.concurrentWithStart:
        return 'concurrent-with-start';
      case ActionRelationshipTypeEnum.concurrent:
        return 'concurrent';
      case ActionRelationshipTypeEnum.concurrentWithEnd:
        return 'concurrent-with-end';
      case ActionRelationshipTypeEnum.afterStart:
        return 'after-start';
      case ActionRelationshipTypeEnum.after:
        return 'after';
      case ActionRelationshipTypeEnum.afterEnd:
        return 'after-end';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionRelationshipTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionRelationshipTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionRelationshipTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'before-start':
        return ActionRelationshipTypeEnum.beforeStart;
      case 'before':
        return ActionRelationshipTypeEnum.before;
      case 'before-end':
        return ActionRelationshipTypeEnum.beforeEnd;
      case 'concurrent-with-start':
        return ActionRelationshipTypeEnum.concurrentWithStart;
      case 'concurrent':
        return ActionRelationshipTypeEnum.concurrent;
      case 'concurrent-with-end':
        return ActionRelationshipTypeEnum.concurrentWithEnd;
      case 'after-start':
        return ActionRelationshipTypeEnum.afterStart;
      case 'after':
        return ActionRelationshipTypeEnum.after;
      case 'after-end':
        return ActionRelationshipTypeEnum.afterEnd;
    }
    return null;
  }
}

/// Defines the types of relationships between actions.
class ActionRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ActionRelationshipType._({
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
  factory ActionRelationshipType(
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
    final valueEnum = ActionRelationshipTypeEnum.fromString(valueString);
    return ActionRelationshipType._(
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

  /// Factory constructor to create [ActionRelationshipType]
  /// from JSON.
  factory ActionRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ActionRelationshipTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRelationshipType cannot be constructed from JSON.',
      );
    }
    return ActionRelationshipType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ActionRelationshipType
  final ActionRelationshipTypeEnum? valueEnum;

  /// before_start
  static const ActionRelationshipType beforeStart = ActionRelationshipType._(
    valueString: 'before-start',
    valueEnum: ActionRelationshipTypeEnum.beforeStart,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Before Start',
    ),
  );

  /// before
  static const ActionRelationshipType before = ActionRelationshipType._(
    valueString: 'before',
    valueEnum: ActionRelationshipTypeEnum.before,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Before',
    ),
  );

  /// before_end
  static const ActionRelationshipType beforeEnd = ActionRelationshipType._(
    valueString: 'before-end',
    valueEnum: ActionRelationshipTypeEnum.beforeEnd,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Before End',
    ),
  );

  /// concurrent_with_start
  static const ActionRelationshipType concurrentWithStart =
      ActionRelationshipType._(
    valueString: 'concurrent-with-start',
    valueEnum: ActionRelationshipTypeEnum.concurrentWithStart,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Concurrent With Start',
    ),
  );

  /// concurrent
  static const ActionRelationshipType concurrent = ActionRelationshipType._(
    valueString: 'concurrent',
    valueEnum: ActionRelationshipTypeEnum.concurrent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Concurrent',
    ),
  );

  /// concurrent_with_end
  static const ActionRelationshipType concurrentWithEnd =
      ActionRelationshipType._(
    valueString: 'concurrent-with-end',
    valueEnum: ActionRelationshipTypeEnum.concurrentWithEnd,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Concurrent With End',
    ),
  );

  /// after_start
  static const ActionRelationshipType afterStart = ActionRelationshipType._(
    valueString: 'after-start',
    valueEnum: ActionRelationshipTypeEnum.afterStart,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'After Start',
    ),
  );

  /// after
  static const ActionRelationshipType after = ActionRelationshipType._(
    valueString: 'after',
    valueEnum: ActionRelationshipTypeEnum.after,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'After',
    ),
  );

  /// after_end
  static const ActionRelationshipType afterEnd = ActionRelationshipType._(
    valueString: 'after-end',
    valueEnum: ActionRelationshipTypeEnum.afterEnd,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'After End',
    ),
  );

  /// List of all enum-like values
  static final List<ActionRelationshipType> values = [
    beforeStart,
    before,
    beforeEnd,
    concurrentWithStart,
    concurrent,
    concurrentWithEnd,
    afterStart,
    after,
    afterEnd,
  ];

  /// Returns the enum value with an element attached
  ActionRelationshipType withElement(Element? newElement) {
    return ActionRelationshipType._(
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
  ActionRelationshipType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ActionRelationshipTypeCopyWithImpl<ActionRelationshipType> get copyWith =>
      ActionRelationshipTypeCopyWithImpl<ActionRelationshipType>(
        this,
        (v) => v as ActionRelationshipType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ActionRelationshipTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ActionRelationshipTypeCopyWithImpl(super._value, super._then);

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
      ActionRelationshipType(
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
