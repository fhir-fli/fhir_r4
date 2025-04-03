// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Behavior a server can exhibit when a criteria state does not exist
/// (e.g., state prior to a create or after a delete).
class CriteriaNotExistsBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CriteriaNotExistsBehaviorBuilder._({
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
  factory CriteriaNotExistsBehaviorBuilder(
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
    return CriteriaNotExistsBehaviorBuilder._(
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

  /// Create empty [CriteriaNotExistsBehaviorBuilder] with element only
  factory CriteriaNotExistsBehaviorBuilder.empty() =>
      CriteriaNotExistsBehaviorBuilder._(valueString: '');

  /// Factory constructor to create [CriteriaNotExistsBehaviorBuilder]
  /// from JSON.
  factory CriteriaNotExistsBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehaviorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CriteriaNotExistsBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return CriteriaNotExistsBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// test_passes
  static CriteriaNotExistsBehaviorBuilder test_passes =
      CriteriaNotExistsBehaviorBuilder._(
    valueString: 'test-passes',
    system: 'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'test passes'.toFhirStringBuilder,
  );

  /// test_fails
  static CriteriaNotExistsBehaviorBuilder test_fails =
      CriteriaNotExistsBehaviorBuilder._(
    valueString: 'test-fails',
    system: 'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'test fails'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CriteriaNotExistsBehaviorBuilder elementOnly =
      CriteriaNotExistsBehaviorBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CriteriaNotExistsBehaviorBuilder> values = [
    test_passes,
    test_fails,
  ];

  /// Clones the current instance
  @override
  CriteriaNotExistsBehaviorBuilder clone() =>
      CriteriaNotExistsBehaviorBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CriteriaNotExistsBehaviorBuilder withElement(ElementBuilder? newElement) {
    return CriteriaNotExistsBehaviorBuilder._(
        valueString: valueString, element: newElement,);
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
  CriteriaNotExistsBehaviorBuilder copyWith({
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
          'Invalid input for CriteriaNotExistsBehavior: $newValue',);
    }
    return CriteriaNotExistsBehaviorBuilder._(
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
