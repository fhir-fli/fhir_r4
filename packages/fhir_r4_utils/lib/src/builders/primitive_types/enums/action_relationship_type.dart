// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines the types of relationships between actions.
class ActionRelationshipTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionRelationshipTypeBuilder._({
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
    return ActionRelationshipTypeBuilder._(
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

  /// Create empty [ActionRelationshipTypeBuilder] with element only
  factory ActionRelationshipTypeBuilder.empty() =>
      ActionRelationshipTypeBuilder._(valueString: '');

  /// Factory constructor to create [ActionRelationshipTypeBuilder]
  /// from JSON.
  factory ActionRelationshipTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipTypeBuilder.elementOnly.withElement(element);
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

  /// before_start
  static ActionRelationshipTypeBuilder before_start =
      ActionRelationshipTypeBuilder._(
    valueString: 'before-start',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Before Start'.toFhirStringBuilder,
  );

  /// before
  static ActionRelationshipTypeBuilder before = ActionRelationshipTypeBuilder._(
    valueString: 'before',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Before'.toFhirStringBuilder,
  );

  /// before_end
  static ActionRelationshipTypeBuilder before_end =
      ActionRelationshipTypeBuilder._(
    valueString: 'before-end',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Before End'.toFhirStringBuilder,
  );

  /// concurrent_with_start
  static ActionRelationshipTypeBuilder concurrent_with_start =
      ActionRelationshipTypeBuilder._(
    valueString: 'concurrent-with-start',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Concurrent With Start'.toFhirStringBuilder,
  );

  /// concurrent
  static ActionRelationshipTypeBuilder concurrent =
      ActionRelationshipTypeBuilder._(
    valueString: 'concurrent',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Concurrent'.toFhirStringBuilder,
  );

  /// concurrent_with_end
  static ActionRelationshipTypeBuilder concurrent_with_end =
      ActionRelationshipTypeBuilder._(
    valueString: 'concurrent-with-end',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Concurrent With End'.toFhirStringBuilder,
  );

  /// after_start
  static ActionRelationshipTypeBuilder after_start =
      ActionRelationshipTypeBuilder._(
    valueString: 'after-start',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'After Start'.toFhirStringBuilder,
  );

  /// after
  static ActionRelationshipTypeBuilder after = ActionRelationshipTypeBuilder._(
    valueString: 'after',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'After'.toFhirStringBuilder,
  );

  /// after_end
  static ActionRelationshipTypeBuilder after_end =
      ActionRelationshipTypeBuilder._(
    valueString: 'after-end',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'After End'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionRelationshipTypeBuilder elementOnly =
      ActionRelationshipTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ActionRelationshipTypeBuilder> values = [
    before_start,
    before,
    before_end,
    concurrent_with_start,
    concurrent,
    concurrent_with_end,
    after_start,
    after,
    after_end,
  ];

  /// Clones the current instance
  @override
  ActionRelationshipTypeBuilder clone() => ActionRelationshipTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ActionRelationshipTypeBuilder withElement(ElementBuilder? newElement) {
    return ActionRelationshipTypeBuilder._(
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
  ActionRelationshipTypeBuilder copyWith({
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
          'Invalid input for ActionRelationshipType: $newValue');
    }
    return ActionRelationshipTypeBuilder._(
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
