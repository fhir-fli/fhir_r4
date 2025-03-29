// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines expectations around whether an action or action group is
/// required.
class ActionRequiredBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionRequiredBehaviorBuilder._({
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
  factory ActionRequiredBehaviorBuilder(
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
    return ActionRequiredBehaviorBuilder._(
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

  /// Create empty [ActionRequiredBehaviorBuilder] with element only
  factory ActionRequiredBehaviorBuilder.empty() =>
      ActionRequiredBehaviorBuilder._(validatedValue: '');

  /// Factory constructor to create [ActionRequiredBehaviorBuilder] from JSON.
  factory ActionRequiredBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehaviorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRequiredBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionRequiredBehaviorBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// must
  static ActionRequiredBehaviorBuilder must = ActionRequiredBehaviorBuilder._(
    validatedValue: 'must',
    system: 'http://hl7.org/fhir/ValueSet/action-required-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Must'.toFhirStringBuilder,
  );

  /// could
  static ActionRequiredBehaviorBuilder could = ActionRequiredBehaviorBuilder._(
    validatedValue: 'could',
    system: 'http://hl7.org/fhir/ValueSet/action-required-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Could'.toFhirStringBuilder,
  );

  /// must_unless_documented
  static ActionRequiredBehaviorBuilder must_unless_documented =
      ActionRequiredBehaviorBuilder._(
    validatedValue: 'must-unless-documented',
    system: 'http://hl7.org/fhir/ValueSet/action-required-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Must Unless Documented'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionRequiredBehaviorBuilder elementOnly =
      ActionRequiredBehaviorBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ActionRequiredBehaviorBuilder> values = [
    must,
    could,
    must_unless_documented,
  ];

  /// Clones the current instance
  @override
  ActionRequiredBehaviorBuilder clone() => ActionRequiredBehaviorBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ActionRequiredBehaviorBuilder withElement(ElementBuilder? newElement) {
    return ActionRequiredBehaviorBuilder._(
        validatedValue: value, element: newElement);
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
  ActionRequiredBehaviorBuilder copyWith({
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
    return ActionRequiredBehaviorBuilder._(
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
