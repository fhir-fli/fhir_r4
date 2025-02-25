// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the system level.
class SystemRestfulInteraction extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  SystemRestfulInteraction._(
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

  /// Create empty [SystemRestfulInteraction] with element only
  factory SystemRestfulInteraction.empty() => SystemRestfulInteraction._('');

  /// Factory constructor to create [SystemRestfulInteraction] from JSON.
  factory SystemRestfulInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteraction.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SystemRestfulInteraction cannot be constructed from JSON.',
      );
    }
    return SystemRestfulInteraction._(
      value,
      element: element,
    );
  }

  /// read
  static final SystemRestfulInteraction read = SystemRestfulInteraction._(
    'read',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'read'.toFhirString,
  );

  /// vread
  static final SystemRestfulInteraction vread = SystemRestfulInteraction._(
    'vread',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'vread'.toFhirString,
  );

  /// update
  static final SystemRestfulInteraction update = SystemRestfulInteraction._(
    'update',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'update'.toFhirString,
  );

  /// patch
  static final SystemRestfulInteraction patch = SystemRestfulInteraction._(
    'patch',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'patch'.toFhirString,
  );

  /// delete
  static final SystemRestfulInteraction delete = SystemRestfulInteraction._(
    'delete',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'delete'.toFhirString,
  );

  /// history
  static final SystemRestfulInteraction history = SystemRestfulInteraction._(
    'history',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history'.toFhirString,
  );

  /// history_instance
  static final SystemRestfulInteraction history_instance =
      SystemRestfulInteraction._(
    'history-instance',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-instance'.toFhirString,
  );

  /// history_type
  static final SystemRestfulInteraction history_type =
      SystemRestfulInteraction._(
    'history-type',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-type'.toFhirString,
  );

  /// history_system
  static final SystemRestfulInteraction history_system =
      SystemRestfulInteraction._(
    'history-system',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-system'.toFhirString,
  );

  /// create
  static final SystemRestfulInteraction create = SystemRestfulInteraction._(
    'create',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'create'.toFhirString,
  );

  /// search
  static final SystemRestfulInteraction search = SystemRestfulInteraction._(
    'search',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search'.toFhirString,
  );

  /// search_type
  static final SystemRestfulInteraction search_type =
      SystemRestfulInteraction._(
    'search-type',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search-type'.toFhirString,
  );

  /// search_system
  static final SystemRestfulInteraction search_system =
      SystemRestfulInteraction._(
    'search-system',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search-system'.toFhirString,
  );

  /// capabilities
  static final SystemRestfulInteraction capabilities =
      SystemRestfulInteraction._(
    'capabilities',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'capabilities'.toFhirString,
  );

  /// transaction
  static final SystemRestfulInteraction transaction =
      SystemRestfulInteraction._(
    'transaction',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'transaction'.toFhirString,
  );

  /// batch
  static final SystemRestfulInteraction batch = SystemRestfulInteraction._(
    'batch',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'batch'.toFhirString,
  );

  /// operation
  static final SystemRestfulInteraction operation = SystemRestfulInteraction._(
    'operation',
    system: 'http://hl7.org/fhir/ValueSet/system-restful-interaction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'operation'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final SystemRestfulInteraction elementOnly =
      SystemRestfulInteraction._('');

  /// List of all enum-like values
  static final List<SystemRestfulInteraction> values = [
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
  SystemRestfulInteraction clone() => SystemRestfulInteraction._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SystemRestfulInteraction withElement(Element? newElement) {
    return SystemRestfulInteraction._(
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
  SystemRestfulInteraction copyWith({
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
    return SystemRestfulInteraction._(
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
