// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines selection behavior of a group.
class ActionSelectionBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionSelectionBehaviorBuilder._({
    required super.valueString,
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
    return ActionSelectionBehaviorBuilder._(
      valueString: valueString,
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

  /// Create empty [ActionSelectionBehaviorBuilder] with element only
  factory ActionSelectionBehaviorBuilder.empty() =>
      ActionSelectionBehaviorBuilder._(valueString: '');

  /// Factory constructor to create [ActionSelectionBehaviorBuilder]
  /// from JSON.
  factory ActionSelectionBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehaviorBuilder.elementOnly.withElement(element);
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

  /// any
  static ActionSelectionBehaviorBuilder any = ActionSelectionBehaviorBuilder._(
    valueString: 'any',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Any'.toFhirStringBuilder,
  );

  /// all
  static ActionSelectionBehaviorBuilder all = ActionSelectionBehaviorBuilder._(
    valueString: 'all',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'All'.toFhirStringBuilder,
  );

  /// all_or_none
  static ActionSelectionBehaviorBuilder all_or_none =
      ActionSelectionBehaviorBuilder._(
    valueString: 'all-or-none',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'All Or None'.toFhirStringBuilder,
  );

  /// exactly_one
  static ActionSelectionBehaviorBuilder exactly_one =
      ActionSelectionBehaviorBuilder._(
    valueString: 'exactly-one',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Exactly One'.toFhirStringBuilder,
  );

  /// at_most_one
  static ActionSelectionBehaviorBuilder at_most_one =
      ActionSelectionBehaviorBuilder._(
    valueString: 'at-most-one',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'At Most One'.toFhirStringBuilder,
  );

  /// one_or_more
  static ActionSelectionBehaviorBuilder one_or_more =
      ActionSelectionBehaviorBuilder._(
    valueString: 'one-or-more',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'One Or More'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionSelectionBehaviorBuilder elementOnly =
      ActionSelectionBehaviorBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ActionSelectionBehaviorBuilder> values = [
    any,
    all,
    all_or_none,
    exactly_one,
    at_most_one,
    one_or_more,
  ];

  /// Clones the current instance
  @override
  ActionSelectionBehaviorBuilder clone() => ActionSelectionBehaviorBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ActionSelectionBehaviorBuilder withElement(ElementBuilder? newElement) {
    return ActionSelectionBehaviorBuilder._(
        valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  ActionSelectionBehaviorBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for ActionSelectionBehavior: $newValue');
    }
    return ActionSelectionBehaviorBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
