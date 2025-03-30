// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines organization behavior of a group.
class ActionGroupingBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionGroupingBehaviorBuilder._({
    required super.validatedValue,
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
  factory ActionGroupingBehaviorBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return ActionGroupingBehaviorBuilder._(
      validatedValue: validated,
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

  /// Create empty [ActionGroupingBehaviorBuilder] with element only
  factory ActionGroupingBehaviorBuilder.empty() =>
      ActionGroupingBehaviorBuilder._(validatedValue: '');

  /// Factory constructor to create [ActionGroupingBehaviorBuilder]
  /// from JSON.
  factory ActionGroupingBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehaviorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionGroupingBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionGroupingBehaviorBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// visual_group
  static ActionGroupingBehaviorBuilder visual_group =
      ActionGroupingBehaviorBuilder._(
    validatedValue: 'visual-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Visual Group'.toFhirStringBuilder,
  );

  /// logical_group
  static ActionGroupingBehaviorBuilder logical_group =
      ActionGroupingBehaviorBuilder._(
    validatedValue: 'logical-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Logical Group'.toFhirStringBuilder,
  );

  /// sentence_group
  static ActionGroupingBehaviorBuilder sentence_group =
      ActionGroupingBehaviorBuilder._(
    validatedValue: 'sentence-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sentence Group'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionGroupingBehaviorBuilder elementOnly =
      ActionGroupingBehaviorBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ActionGroupingBehaviorBuilder> values = [
    visual_group,
    logical_group,
    sentence_group,
  ];

  /// Clones the current instance
  @override
  ActionGroupingBehaviorBuilder clone() => ActionGroupingBehaviorBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ActionGroupingBehaviorBuilder withElement(ElementBuilder? newElement) {
    return ActionGroupingBehaviorBuilder._(
      validatedValue: value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ActionGroupingBehaviorBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ActionGroupingBehaviorBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
