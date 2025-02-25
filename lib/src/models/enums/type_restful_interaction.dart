// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteraction extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TypeRestfulInteraction._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [TypeRestfulInteraction] with element only
  factory TypeRestfulInteraction.empty() => TypeRestfulInteraction._('');

  /// Factory constructor to create [TypeRestfulInteraction] from JSON.
  factory TypeRestfulInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteraction.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeRestfulInteraction cannot be constructed from JSON.',
      );
    }
    return TypeRestfulInteraction._(
      value,
      element: element,
    );
  }

  /// read
  static final TypeRestfulInteraction read = TypeRestfulInteraction._(
    'read',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'read'.toFhirString,
  );

  /// vread
  static final TypeRestfulInteraction vread = TypeRestfulInteraction._(
    'vread',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'vread'.toFhirString,
  );

  /// update
  static final TypeRestfulInteraction update = TypeRestfulInteraction._(
    'update',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'update'.toFhirString,
  );

  /// patch
  static final TypeRestfulInteraction patch = TypeRestfulInteraction._(
    'patch',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'patch'.toFhirString,
  );

  /// delete
  static final TypeRestfulInteraction delete = TypeRestfulInteraction._(
    'delete',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'delete'.toFhirString,
  );

  /// history
  static final TypeRestfulInteraction history = TypeRestfulInteraction._(
    'history',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history'.toFhirString,
  );

  /// history_instance
  static final TypeRestfulInteraction history_instance =
      TypeRestfulInteraction._(
    'history-instance',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-instance'.toFhirString,
  );

  /// history_type
  static final TypeRestfulInteraction history_type = TypeRestfulInteraction._(
    'history-type',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-type'.toFhirString,
  );

  /// history_system
  static final TypeRestfulInteraction history_system = TypeRestfulInteraction._(
    'history-system',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-system'.toFhirString,
  );

  /// create
  static final TypeRestfulInteraction create = TypeRestfulInteraction._(
    'create',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'create'.toFhirString,
  );

  /// search
  static final TypeRestfulInteraction search = TypeRestfulInteraction._(
    'search',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search'.toFhirString,
  );

  /// search_type
  static final TypeRestfulInteraction search_type = TypeRestfulInteraction._(
    'search-type',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search-type'.toFhirString,
  );

  /// search_system
  static final TypeRestfulInteraction search_system = TypeRestfulInteraction._(
    'search-system',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search-system'.toFhirString,
  );

  /// capabilities
  static final TypeRestfulInteraction capabilities = TypeRestfulInteraction._(
    'capabilities',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'capabilities'.toFhirString,
  );

  /// transaction
  static final TypeRestfulInteraction transaction = TypeRestfulInteraction._(
    'transaction',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'transaction'.toFhirString,
  );

  /// batch
  static final TypeRestfulInteraction batch = TypeRestfulInteraction._(
    'batch',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'batch'.toFhirString,
  );

  /// operation
  static final TypeRestfulInteraction operation = TypeRestfulInteraction._(
    'operation',
    system: 'http://hl7.org/fhir/ValueSet/type-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'operation'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final TypeRestfulInteraction elementOnly =
      TypeRestfulInteraction._('');

  /// List of all enum-like values
  static final List<TypeRestfulInteraction> values = [
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
  TypeRestfulInteraction clone() => TypeRestfulInteraction._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TypeRestfulInteraction withElement(Element? newElement) {
    return TypeRestfulInteraction._(
      value,
      element: newElement,
    );
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
  TypeRestfulInteraction copyWith({
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
    return TypeRestfulInteraction._(
      newValue ?? value,
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
