// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Operations supported by REST at the system level.
class SystemRestfulInteractionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SystemRestfulInteractionBuilder._({
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
  factory SystemRestfulInteractionBuilder(
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
    return SystemRestfulInteractionBuilder._(
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

  /// Create empty [SystemRestfulInteractionBuilder] with element only
  factory SystemRestfulInteractionBuilder.empty() =>
      SystemRestfulInteractionBuilder._(validatedValue: '');

  /// Factory constructor to create [SystemRestfulInteractionBuilder] from JSON.
  factory SystemRestfulInteractionBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteractionBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SystemRestfulInteractionBuilder cannot be constructed from JSON.',
      );
    }
    return SystemRestfulInteractionBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// read
  static SystemRestfulInteractionBuilder read =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'read',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'read'.toFhirStringBuilder,
  );

  /// vread
  static SystemRestfulInteractionBuilder vread =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'vread',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'vread'.toFhirStringBuilder,
  );

  /// update
  static SystemRestfulInteractionBuilder update =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'update',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'update'.toFhirStringBuilder,
  );

  /// patch
  static SystemRestfulInteractionBuilder patch =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'patch'.toFhirStringBuilder,
  );

  /// delete
  static SystemRestfulInteractionBuilder delete =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'delete'.toFhirStringBuilder,
  );

  /// history
  static SystemRestfulInteractionBuilder history =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'history',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history'.toFhirStringBuilder,
  );

  /// history_instance
  static SystemRestfulInteractionBuilder history_instance =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'history-instance',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-instance'.toFhirStringBuilder,
  );

  /// history_type
  static SystemRestfulInteractionBuilder history_type =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'history-type',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-type'.toFhirStringBuilder,
  );

  /// history_system
  static SystemRestfulInteractionBuilder history_system =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'history-system',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-system'.toFhirStringBuilder,
  );

  /// create
  static SystemRestfulInteractionBuilder create =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'create',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'create'.toFhirStringBuilder,
  );

  /// search
  static SystemRestfulInteractionBuilder search =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'search',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search'.toFhirStringBuilder,
  );

  /// search_type
  static SystemRestfulInteractionBuilder search_type =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'search-type',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search-type'.toFhirStringBuilder,
  );

  /// search_system
  static SystemRestfulInteractionBuilder search_system =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'search-system',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search-system'.toFhirStringBuilder,
  );

  /// capabilities
  static SystemRestfulInteractionBuilder capabilities =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'capabilities',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'capabilities'.toFhirStringBuilder,
  );

  /// transaction
  static SystemRestfulInteractionBuilder transaction =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'transaction',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'transaction'.toFhirStringBuilder,
  );

  /// batch
  static SystemRestfulInteractionBuilder batch =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'batch',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'batch'.toFhirStringBuilder,
  );

  /// operation
  static SystemRestfulInteractionBuilder operation =
      SystemRestfulInteractionBuilder._(
    validatedValue: 'operation',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'operation'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SystemRestfulInteractionBuilder elementOnly =
      SystemRestfulInteractionBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SystemRestfulInteractionBuilder> values = [
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
  SystemRestfulInteractionBuilder clone() => SystemRestfulInteractionBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SystemRestfulInteractionBuilder withElement(ElementBuilder? newElement) {
    return SystemRestfulInteractionBuilder._(
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
  SystemRestfulInteractionBuilder copyWith({
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
    return SystemRestfulInteractionBuilder._(
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
