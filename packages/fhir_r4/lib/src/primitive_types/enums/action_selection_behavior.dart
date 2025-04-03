// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines selection behavior of a group.
class ActionSelectionBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ActionSelectionBehavior._({
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
  factory ActionSelectionBehavior(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ActionSelectionBehavior._(
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

  /// Create empty [ActionSelectionBehavior] with element only
  factory ActionSelectionBehavior.empty() =>
      ActionSelectionBehavior._(valueString: '');

  /// Factory constructor to create [ActionSelectionBehavior] from JSON.
  factory ActionSelectionBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionSelectionBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionSelectionBehavior cannot be constructed from JSON.',
      );
    }
    return ActionSelectionBehavior._(
      valueString: value,
      element: element,
    );
  }

  /// any
  static final ActionSelectionBehavior any = ActionSelectionBehavior._(
    valueString: 'any',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Any'.toFhirString,
  );

  /// all
  static final ActionSelectionBehavior all = ActionSelectionBehavior._(
    valueString: 'all',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'All'.toFhirString,
  );

  /// all_or_none
  static final ActionSelectionBehavior all_or_none = ActionSelectionBehavior._(
    valueString: 'all-or-none',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'All Or None'.toFhirString,
  );

  /// exactly_one
  static final ActionSelectionBehavior exactly_one = ActionSelectionBehavior._(
    valueString: 'exactly-one',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exactly One'.toFhirString,
  );

  /// at_most_one
  static final ActionSelectionBehavior at_most_one = ActionSelectionBehavior._(
    valueString: 'at-most-one',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'At Most One'.toFhirString,
  );

  /// one_or_more
  static final ActionSelectionBehavior one_or_more = ActionSelectionBehavior._(
    valueString: 'one-or-more',
    system: 'http://hl7.org/fhir/ValueSet/action-selection-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'One Or More'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ActionSelectionBehavior elementOnly =
      ActionSelectionBehavior._(valueString: '');

  /// List of all enum-like values
  static final List<ActionSelectionBehavior> values = [
    any,
    all,
    all_or_none,
    exactly_one,
    at_most_one,
    one_or_more,
  ];

  /// Clones the current instance
  @override
  ActionSelectionBehavior clone() => ActionSelectionBehavior._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionSelectionBehavior withElement(Element? newElement) {
    return ActionSelectionBehavior._(
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

  /// Creates a modified copy with updated properties.
  @override
  ActionSelectionBehavior copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for ActionSelectionBehavior: $newValue',);
    }
    return ActionSelectionBehavior._(
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
