part of '../primitive_types.dart';

/// Actual enum for ActionRequiredBehavior
enum ActionRequiredBehaviorBuilderEnum {
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
      case ActionRequiredBehaviorBuilderEnum.must:
        return 'must';
      case ActionRequiredBehaviorBuilderEnum.could:
        return 'could';
      case ActionRequiredBehaviorBuilderEnum.mustUnlessDocumented:
        return 'must-unless-documented';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionRequiredBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionRequiredBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionRequiredBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'must':
        return ActionRequiredBehaviorBuilderEnum.must;
      case 'could':
        return ActionRequiredBehaviorBuilderEnum.could;
      case 'must-unless-documented':
        return ActionRequiredBehaviorBuilderEnum.mustUnlessDocumented;
    }
    return null;
  }
}

/// Defines expectations around whether an action or action group is
/// required.
class ActionRequiredBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionRequiredBehaviorBuilder._({
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
  factory ActionRequiredBehaviorBuilder(
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
    final valueEnum = ActionRequiredBehaviorBuilderEnum.fromString(
      valueString,
    );
    return ActionRequiredBehaviorBuilder._(
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

  /// Create empty [ActionRequiredBehaviorBuilder]
  /// with element only
  factory ActionRequiredBehaviorBuilder.empty() =>
      ActionRequiredBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionRequiredBehaviorBuilder] from JSON.
  factory ActionRequiredBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRequiredBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionRequiredBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionRequiredBehaviorBuilder
  final ActionRequiredBehaviorBuilderEnum? valueEnum;

  /// must
  static ActionRequiredBehaviorBuilder must = ActionRequiredBehaviorBuilder._(
    valueString: 'must',
    valueEnum: ActionRequiredBehaviorBuilderEnum.must,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-required-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Must',
    ),
  );

  /// could
  static ActionRequiredBehaviorBuilder could = ActionRequiredBehaviorBuilder._(
    valueString: 'could',
    valueEnum: ActionRequiredBehaviorBuilderEnum.could,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-required-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Could',
    ),
  );

  /// must_unless_documented
  static ActionRequiredBehaviorBuilder mustUnlessDocumented =
      ActionRequiredBehaviorBuilder._(
    valueString: 'must-unless-documented',
    valueEnum: ActionRequiredBehaviorBuilderEnum.mustUnlessDocumented,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-required-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Must Unless Documented',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionRequiredBehaviorBuilder elementOnly =
      ActionRequiredBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionRequiredBehaviorBuilder> values = [
    must,
    could,
    mustUnlessDocumented,
  ];

  /// Returns the enum value with an element attached
  ActionRequiredBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionRequiredBehaviorBuilder._(
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
