// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines the types of relationships between actions.
class ActionRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ActionRelationshipType._({
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
  factory ActionRelationshipType(
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
    return ActionRelationshipType._(
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

  /// Create empty [ActionRelationshipType] with element only
  factory ActionRelationshipType.empty() =>
      ActionRelationshipType._(valueString: '');

  /// Factory constructor to create [ActionRelationshipType] from JSON.
  factory ActionRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionRelationshipType cannot be constructed from JSON.',
      );
    }
    return ActionRelationshipType._(
      valueString: value,
      element: element,
    );
  }

  /// before_start
  static final ActionRelationshipType before_start = ActionRelationshipType._(
    valueString: 'before-start',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Before Start'.toFhirString,
  );

  /// before
  static final ActionRelationshipType before = ActionRelationshipType._(
    valueString: 'before',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Before'.toFhirString,
  );

  /// before_end
  static final ActionRelationshipType before_end = ActionRelationshipType._(
    valueString: 'before-end',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Before End'.toFhirString,
  );

  /// concurrent_with_start
  static final ActionRelationshipType concurrent_with_start =
      ActionRelationshipType._(
    valueString: 'concurrent-with-start',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Concurrent With Start'.toFhirString,
  );

  /// concurrent
  static final ActionRelationshipType concurrent = ActionRelationshipType._(
    valueString: 'concurrent',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Concurrent'.toFhirString,
  );

  /// concurrent_with_end
  static final ActionRelationshipType concurrent_with_end =
      ActionRelationshipType._(
    valueString: 'concurrent-with-end',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Concurrent With End'.toFhirString,
  );

  /// after_start
  static final ActionRelationshipType after_start = ActionRelationshipType._(
    valueString: 'after-start',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'After Start'.toFhirString,
  );

  /// after
  static final ActionRelationshipType after = ActionRelationshipType._(
    valueString: 'after',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'After'.toFhirString,
  );

  /// after_end
  static final ActionRelationshipType after_end = ActionRelationshipType._(
    valueString: 'after-end',
    system: 'http://hl7.org/fhir/ValueSet/action-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'After End'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ActionRelationshipType elementOnly =
      ActionRelationshipType._(valueString: '');

  /// List of all enum-like values
  static final List<ActionRelationshipType> values = [
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
  ActionRelationshipType clone() => ActionRelationshipType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ActionRelationshipType copyWith({
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
          'Invalid input for ActionRelationshipType: $newValue');
    }
    return ActionRelationshipType._(
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
