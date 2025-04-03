// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the level of importance to be assigned to actioning the
/// request.
class RequestPriorityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestPriorityBuilder._({
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
  factory RequestPriorityBuilder(
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
    return RequestPriorityBuilder._(
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

  /// Create empty [RequestPriorityBuilder] with element only
  factory RequestPriorityBuilder.empty() =>
      RequestPriorityBuilder._(valueString: '');

  /// Factory constructor to create [RequestPriorityBuilder]
  /// from JSON.
  factory RequestPriorityBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriorityBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestPriorityBuilder cannot be constructed from JSON.',
      );
    }
    return RequestPriorityBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// routine
  static RequestPriorityBuilder routine = RequestPriorityBuilder._(
    valueString: 'routine',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Routine'.toFhirStringBuilder,
  );

  /// urgent
  static RequestPriorityBuilder urgent = RequestPriorityBuilder._(
    valueString: 'urgent',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Urgent'.toFhirStringBuilder,
  );

  /// asap
  static RequestPriorityBuilder asap = RequestPriorityBuilder._(
    valueString: 'asap',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ASAP'.toFhirStringBuilder,
  );

  /// stat
  static RequestPriorityBuilder stat = RequestPriorityBuilder._(
    valueString: 'stat',
    system: 'http://hl7.org/fhir/ValueSet/request-priority'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'STAT'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RequestPriorityBuilder elementOnly =
      RequestPriorityBuilder._(valueString: '');

  /// List of all enum-like values
  static List<RequestPriorityBuilder> values = [
    routine,
    urgent,
    asap,
    stat,
  ];

  /// Clones the current instance
  @override
  RequestPriorityBuilder clone() => RequestPriorityBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RequestPriorityBuilder withElement(ElementBuilder? newElement) {
    return RequestPriorityBuilder._(
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
  RequestPriorityBuilder copyWith({
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
      throw ArgumentError('Invalid input for RequestPriority: $newValue');
    }
    return RequestPriorityBuilder._(
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
