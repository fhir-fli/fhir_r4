// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines expectations around whether an action or action group is
/// required.
class ActionRequiredBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ActionRequiredBehavior._({
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
  factory ActionRequiredBehavior(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ActionRequiredBehavior._(
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

  /// Create empty [ActionRequiredBehavior] with element only
  factory ActionRequiredBehavior.empty() =>
      ActionRequiredBehavior._(validatedValue: '');

  /// Factory constructor to create [ActionRequiredBehavior] from JSON.
  factory ActionRequiredBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRequiredBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRequiredBehavior cannot be constructed from JSON.',
      );
    }
    return ActionRequiredBehavior._(validatedValue: value, element: element);
  }

  /// must
  static final ActionRequiredBehavior must = ActionRequiredBehavior._(
    validatedValue: 'must',
    system: 'http://hl7.org/fhir/ValueSet/action-required-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Must'.toFhirString,
  );

  /// could
  static final ActionRequiredBehavior could = ActionRequiredBehavior._(
    validatedValue: 'could',
    system: 'http://hl7.org/fhir/ValueSet/action-required-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Could'.toFhirString,
  );

  /// must_unless_documented
  static final ActionRequiredBehavior must_unless_documented =
      ActionRequiredBehavior._(
    validatedValue: 'must-unless-documented',
    system: 'http://hl7.org/fhir/ValueSet/action-required-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Must Unless Documented'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ActionRequiredBehavior elementOnly =
      ActionRequiredBehavior._(validatedValue: '');

  /// List of all enum-like values
  static final List<ActionRequiredBehavior> values = [
    must,
    could,
    must_unless_documented,
  ];

  /// Clones the current instance
  @override
  ActionRequiredBehavior clone() => ActionRequiredBehavior._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionRequiredBehavior withElement(Element? newElement) {
    return ActionRequiredBehavior._(validatedValue: value, element: newElement);
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
  ActionRequiredBehavior copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return ActionRequiredBehavior._(
      validatedValue: newValue ?? value,
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
