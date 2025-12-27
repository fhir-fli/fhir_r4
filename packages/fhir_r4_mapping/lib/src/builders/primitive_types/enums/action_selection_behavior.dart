part of '../primitive_types.dart';

/// Actual enum for ActionSelectionBehavior
enum ActionSelectionBehaviorBuilderEnum {
  /// any
  any,

  /// all
  all,

  /// all-or-none
  allOrNone,

  /// exactly-one
  exactlyOne,

  /// at-most-one
  atMostOne,

  /// one-or-more
  oneOrMore,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionSelectionBehaviorBuilderEnum.any:
        return 'any';
      case ActionSelectionBehaviorBuilderEnum.all:
        return 'all';
      case ActionSelectionBehaviorBuilderEnum.allOrNone:
        return 'all-or-none';
      case ActionSelectionBehaviorBuilderEnum.exactlyOne:
        return 'exactly-one';
      case ActionSelectionBehaviorBuilderEnum.atMostOne:
        return 'at-most-one';
      case ActionSelectionBehaviorBuilderEnum.oneOrMore:
        return 'one-or-more';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionSelectionBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionSelectionBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionSelectionBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'any':
        return ActionSelectionBehaviorBuilderEnum.any;
      case 'all':
        return ActionSelectionBehaviorBuilderEnum.all;
      case 'all-or-none':
        return ActionSelectionBehaviorBuilderEnum.allOrNone;
      case 'exactly-one':
        return ActionSelectionBehaviorBuilderEnum.exactlyOne;
      case 'at-most-one':
        return ActionSelectionBehaviorBuilderEnum.atMostOne;
      case 'one-or-more':
        return ActionSelectionBehaviorBuilderEnum.oneOrMore;
    }
    return null;
  }
}

/// Defines selection behavior of a group.
class ActionSelectionBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionSelectionBehaviorBuilder._({
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
  factory ActionSelectionBehaviorBuilder(
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
    final valueEnum = ActionSelectionBehaviorBuilderEnum.fromString(
      valueString,
    );
    return ActionSelectionBehaviorBuilder._(
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

  /// Create empty [ActionSelectionBehaviorBuilder]
  /// with element only
  factory ActionSelectionBehaviorBuilder.empty() =>
      ActionSelectionBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionSelectionBehaviorBuilder] from JSON.
  factory ActionSelectionBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionSelectionBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionSelectionBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionSelectionBehaviorBuilder
  final ActionSelectionBehaviorBuilderEnum? valueEnum;

  /// any
  static ActionSelectionBehaviorBuilder any = ActionSelectionBehaviorBuilder._(
    valueString: 'any',
    valueEnum: ActionSelectionBehaviorBuilderEnum.any,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-selection-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Any',
    ),
  );

  /// all
  static ActionSelectionBehaviorBuilder all = ActionSelectionBehaviorBuilder._(
    valueString: 'all',
    valueEnum: ActionSelectionBehaviorBuilderEnum.all,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-selection-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'All',
    ),
  );

  /// all_or_none
  static ActionSelectionBehaviorBuilder allOrNone =
      ActionSelectionBehaviorBuilder._(
    valueString: 'all-or-none',
    valueEnum: ActionSelectionBehaviorBuilderEnum.allOrNone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-selection-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'All Or None',
    ),
  );

  /// exactly_one
  static ActionSelectionBehaviorBuilder exactlyOne =
      ActionSelectionBehaviorBuilder._(
    valueString: 'exactly-one',
    valueEnum: ActionSelectionBehaviorBuilderEnum.exactlyOne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-selection-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exactly One',
    ),
  );

  /// at_most_one
  static ActionSelectionBehaviorBuilder atMostOne =
      ActionSelectionBehaviorBuilder._(
    valueString: 'at-most-one',
    valueEnum: ActionSelectionBehaviorBuilderEnum.atMostOne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-selection-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'At Most One',
    ),
  );

  /// one_or_more
  static ActionSelectionBehaviorBuilder oneOrMore =
      ActionSelectionBehaviorBuilder._(
    valueString: 'one-or-more',
    valueEnum: ActionSelectionBehaviorBuilderEnum.oneOrMore,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-selection-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'One Or More',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionSelectionBehaviorBuilder elementOnly =
      ActionSelectionBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionSelectionBehaviorBuilder> values = [
    any,
    all,
    allOrNone,
    exactlyOne,
    atMostOne,
    oneOrMore,
  ];

  /// Returns the enum value with an element attached
  ActionSelectionBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionSelectionBehaviorBuilder._(
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
