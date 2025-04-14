// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionRelationshipType
enum ActionRelationshipTypeBuilderEnum {
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
      case ActionRelationshipTypeBuilderEnum.beforeStart:
        return 'before-start';
      case ActionRelationshipTypeBuilderEnum.before:
        return 'before';
      case ActionRelationshipTypeBuilderEnum.beforeEnd:
        return 'before-end';
      case ActionRelationshipTypeBuilderEnum.concurrentWithStart:
        return 'concurrent-with-start';
      case ActionRelationshipTypeBuilderEnum.concurrent:
        return 'concurrent';
      case ActionRelationshipTypeBuilderEnum.concurrentWithEnd:
        return 'concurrent-with-end';
      case ActionRelationshipTypeBuilderEnum.afterStart:
        return 'after-start';
      case ActionRelationshipTypeBuilderEnum.after:
        return 'after';
      case ActionRelationshipTypeBuilderEnum.afterEnd:
        return 'after-end';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionRelationshipTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionRelationshipTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionRelationshipTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'before-start':
        return ActionRelationshipTypeBuilderEnum.beforeStart;
      case 'before':
        return ActionRelationshipTypeBuilderEnum.before;
      case 'before-end':
        return ActionRelationshipTypeBuilderEnum.beforeEnd;
      case 'concurrent-with-start':
        return ActionRelationshipTypeBuilderEnum.concurrentWithStart;
      case 'concurrent':
        return ActionRelationshipTypeBuilderEnum.concurrent;
      case 'concurrent-with-end':
        return ActionRelationshipTypeBuilderEnum.concurrentWithEnd;
      case 'after-start':
        return ActionRelationshipTypeBuilderEnum.afterStart;
      case 'after':
        return ActionRelationshipTypeBuilderEnum.after;
      case 'after-end':
        return ActionRelationshipTypeBuilderEnum.afterEnd;
    }
    return null;
  }
}

/// Defines the types of relationships between actions.
class ActionRelationshipTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionRelationshipTypeBuilder._({
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
  factory ActionRelationshipTypeBuilder(
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
    final valueEnum = ActionRelationshipTypeBuilderEnum.fromString(
      valueString,
    );
    return ActionRelationshipTypeBuilder._(
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

  /// Create empty [ActionRelationshipTypeBuilder]
  /// with element only
  factory ActionRelationshipTypeBuilder.empty() =>
      ActionRelationshipTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionRelationshipTypeBuilder] from JSON.
  factory ActionRelationshipTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRelationshipTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ActionRelationshipTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionRelationshipTypeBuilder
  final ActionRelationshipTypeBuilderEnum? valueEnum;

  /// before_start
  static ActionRelationshipTypeBuilder beforeStart =
      ActionRelationshipTypeBuilder._(
    valueString: 'before-start',
    valueEnum: ActionRelationshipTypeBuilderEnum.beforeStart,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Before Start',
    ),
  );

  /// before
  static ActionRelationshipTypeBuilder before = ActionRelationshipTypeBuilder._(
    valueString: 'before',
    valueEnum: ActionRelationshipTypeBuilderEnum.before,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Before',
    ),
  );

  /// before_end
  static ActionRelationshipTypeBuilder beforeEnd =
      ActionRelationshipTypeBuilder._(
    valueString: 'before-end',
    valueEnum: ActionRelationshipTypeBuilderEnum.beforeEnd,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Before End',
    ),
  );

  /// concurrent_with_start
  static ActionRelationshipTypeBuilder concurrentWithStart =
      ActionRelationshipTypeBuilder._(
    valueString: 'concurrent-with-start',
    valueEnum: ActionRelationshipTypeBuilderEnum.concurrentWithStart,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Concurrent With Start',
    ),
  );

  /// concurrent
  static ActionRelationshipTypeBuilder concurrent =
      ActionRelationshipTypeBuilder._(
    valueString: 'concurrent',
    valueEnum: ActionRelationshipTypeBuilderEnum.concurrent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Concurrent',
    ),
  );

  /// concurrent_with_end
  static ActionRelationshipTypeBuilder concurrentWithEnd =
      ActionRelationshipTypeBuilder._(
    valueString: 'concurrent-with-end',
    valueEnum: ActionRelationshipTypeBuilderEnum.concurrentWithEnd,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Concurrent With End',
    ),
  );

  /// after_start
  static ActionRelationshipTypeBuilder afterStart =
      ActionRelationshipTypeBuilder._(
    valueString: 'after-start',
    valueEnum: ActionRelationshipTypeBuilderEnum.afterStart,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'After Start',
    ),
  );

  /// after
  static ActionRelationshipTypeBuilder after = ActionRelationshipTypeBuilder._(
    valueString: 'after',
    valueEnum: ActionRelationshipTypeBuilderEnum.after,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'After',
    ),
  );

  /// after_end
  static ActionRelationshipTypeBuilder afterEnd =
      ActionRelationshipTypeBuilder._(
    valueString: 'after-end',
    valueEnum: ActionRelationshipTypeBuilderEnum.afterEnd,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-relationship-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'After End',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionRelationshipTypeBuilder elementOnly =
      ActionRelationshipTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionRelationshipTypeBuilder> values = [
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
  ActionRelationshipTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionRelationshipTypeBuilder._(
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
