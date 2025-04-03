// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteractionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TypeRestfulInteractionBuilder._({
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
  factory TypeRestfulInteractionBuilder(
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
    return TypeRestfulInteractionBuilder._(
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

  /// Create empty [TypeRestfulInteractionBuilder] with element only
  factory TypeRestfulInteractionBuilder.empty() =>
      TypeRestfulInteractionBuilder._(valueString: '');

  /// Factory constructor to create [TypeRestfulInteractionBuilder]
  /// from JSON.
  factory TypeRestfulInteractionBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteractionBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeRestfulInteractionBuilder cannot be constructed from JSON.',
      );
    }
    return TypeRestfulInteractionBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// read
  static TypeRestfulInteractionBuilder read = TypeRestfulInteractionBuilder._(
    valueString: 'read',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'read'.toFhirStringBuilder,
  );

  /// vread
  static TypeRestfulInteractionBuilder vread = TypeRestfulInteractionBuilder._(
    valueString: 'vread',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'vread'.toFhirStringBuilder,
  );

  /// update
  static TypeRestfulInteractionBuilder update = TypeRestfulInteractionBuilder._(
    valueString: 'update',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'update'.toFhirStringBuilder,
  );

  /// patch
  static TypeRestfulInteractionBuilder patch = TypeRestfulInteractionBuilder._(
    valueString: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'patch'.toFhirStringBuilder,
  );

  /// delete
  static TypeRestfulInteractionBuilder delete = TypeRestfulInteractionBuilder._(
    valueString: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'delete'.toFhirStringBuilder,
  );

  /// history
  static TypeRestfulInteractionBuilder history =
      TypeRestfulInteractionBuilder._(
    valueString: 'history',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history'.toFhirStringBuilder,
  );

  /// history_instance
  static TypeRestfulInteractionBuilder history_instance =
      TypeRestfulInteractionBuilder._(
    valueString: 'history-instance',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-instance'.toFhirStringBuilder,
  );

  /// history_type
  static TypeRestfulInteractionBuilder history_type =
      TypeRestfulInteractionBuilder._(
    valueString: 'history-type',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-type'.toFhirStringBuilder,
  );

  /// history_system
  static TypeRestfulInteractionBuilder history_system =
      TypeRestfulInteractionBuilder._(
    valueString: 'history-system',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-system'.toFhirStringBuilder,
  );

  /// create
  static TypeRestfulInteractionBuilder create = TypeRestfulInteractionBuilder._(
    valueString: 'create',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'create'.toFhirStringBuilder,
  );

  /// search
  static TypeRestfulInteractionBuilder search = TypeRestfulInteractionBuilder._(
    valueString: 'search',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search'.toFhirStringBuilder,
  );

  /// search_type
  static TypeRestfulInteractionBuilder search_type =
      TypeRestfulInteractionBuilder._(
    valueString: 'search-type',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search-type'.toFhirStringBuilder,
  );

  /// search_system
  static TypeRestfulInteractionBuilder search_system =
      TypeRestfulInteractionBuilder._(
    valueString: 'search-system',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search-system'.toFhirStringBuilder,
  );

  /// capabilities
  static TypeRestfulInteractionBuilder capabilities =
      TypeRestfulInteractionBuilder._(
    valueString: 'capabilities',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'capabilities'.toFhirStringBuilder,
  );

  /// transaction
  static TypeRestfulInteractionBuilder transaction =
      TypeRestfulInteractionBuilder._(
    valueString: 'transaction',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'transaction'.toFhirStringBuilder,
  );

  /// batch
  static TypeRestfulInteractionBuilder batch = TypeRestfulInteractionBuilder._(
    valueString: 'batch',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'batch'.toFhirStringBuilder,
  );

  /// operation
  static TypeRestfulInteractionBuilder operation =
      TypeRestfulInteractionBuilder._(
    valueString: 'operation',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'operation'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static TypeRestfulInteractionBuilder elementOnly =
      TypeRestfulInteractionBuilder._(valueString: '');

  /// List of all enum-like values
  static List<TypeRestfulInteractionBuilder> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    history_instance,
    history_type,
    history_system,
    create,
    search,
    search_type,
    search_system,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Clones the current instance
  @override
  TypeRestfulInteractionBuilder clone() => TypeRestfulInteractionBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  TypeRestfulInteractionBuilder withElement(ElementBuilder? newElement) {
    return TypeRestfulInteractionBuilder._(
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
  TypeRestfulInteractionBuilder copyWith({
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
          'Invalid input for TypeRestfulInteraction: $newValue');
    }
    return TypeRestfulInteractionBuilder._(
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
