// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How slices are interpreted when evaluating an instance.
class SlicingRulesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SlicingRulesBuilder._({
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
  factory SlicingRulesBuilder(
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
    return SlicingRulesBuilder._(
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

  /// Create empty [SlicingRulesBuilder] with element only
  factory SlicingRulesBuilder.empty() =>
      SlicingRulesBuilder._(validatedValue: '');

  /// Factory constructor to create [SlicingRulesBuilder] from JSON.
  factory SlicingRulesBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRulesBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlicingRulesBuilder cannot be constructed from JSON.',
      );
    }
    return SlicingRulesBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// closed
  static SlicingRulesBuilder closed = SlicingRulesBuilder._(
    validatedValue: 'closed',
    system:
        'http://hl7.org/fhir/ValueSet/resource-slicing-rules'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Closed'.toFhirStringBuilder,
  );

  /// open
  static SlicingRulesBuilder open = SlicingRulesBuilder._(
    validatedValue: 'open',
    system:
        'http://hl7.org/fhir/ValueSet/resource-slicing-rules'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open'.toFhirStringBuilder,
  );

  /// openAtEnd
  static SlicingRulesBuilder openAtEnd = SlicingRulesBuilder._(
    validatedValue: 'openAtEnd',
    system:
        'http://hl7.org/fhir/ValueSet/resource-slicing-rules'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open at End'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SlicingRulesBuilder elementOnly =
      SlicingRulesBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SlicingRulesBuilder> values = [
    closed,
    open,
    openAtEnd,
  ];

  /// Clones the current instance
  @override
  SlicingRulesBuilder clone() => SlicingRulesBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SlicingRulesBuilder withElement(ElementBuilder? newElement) {
    return SlicingRulesBuilder._(validatedValue: value, element: newElement);
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
  SlicingRulesBuilder copyWith({
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
    return SlicingRulesBuilder._(
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
