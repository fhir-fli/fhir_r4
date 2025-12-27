part of '../primitive_types.dart';

/// Actual enum for TypeRestfulInteraction
enum TypeRestfulInteractionBuilderEnum {
  /// read
  read,

  /// vread
  vread,

  /// update
  update,

  /// patch
  patch,

  /// delete
  delete,

  /// history
  history,

  /// history-instance
  historyInstance,

  /// history-type
  historyType,

  /// history-system
  historySystem,

  /// create
  create,

  /// search
  search,

  /// search-type
  searchType,

  /// search-system
  searchSystem,

  /// capabilities
  capabilities,

  /// transaction
  transaction,

  /// batch
  batch,

  /// operation
  operation,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TypeRestfulInteractionBuilderEnum.read:
        return 'read';
      case TypeRestfulInteractionBuilderEnum.vread:
        return 'vread';
      case TypeRestfulInteractionBuilderEnum.update:
        return 'update';
      case TypeRestfulInteractionBuilderEnum.patch:
        return 'patch';
      case TypeRestfulInteractionBuilderEnum.delete:
        return 'delete';
      case TypeRestfulInteractionBuilderEnum.history:
        return 'history';
      case TypeRestfulInteractionBuilderEnum.historyInstance:
        return 'history-instance';
      case TypeRestfulInteractionBuilderEnum.historyType:
        return 'history-type';
      case TypeRestfulInteractionBuilderEnum.historySystem:
        return 'history-system';
      case TypeRestfulInteractionBuilderEnum.create:
        return 'create';
      case TypeRestfulInteractionBuilderEnum.search:
        return 'search';
      case TypeRestfulInteractionBuilderEnum.searchType:
        return 'search-type';
      case TypeRestfulInteractionBuilderEnum.searchSystem:
        return 'search-system';
      case TypeRestfulInteractionBuilderEnum.capabilities:
        return 'capabilities';
      case TypeRestfulInteractionBuilderEnum.transaction:
        return 'transaction';
      case TypeRestfulInteractionBuilderEnum.batch:
        return 'batch';
      case TypeRestfulInteractionBuilderEnum.operation:
        return 'operation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TypeRestfulInteractionBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TypeRestfulInteractionBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TypeRestfulInteractionBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'read':
        return TypeRestfulInteractionBuilderEnum.read;
      case 'vread':
        return TypeRestfulInteractionBuilderEnum.vread;
      case 'update':
        return TypeRestfulInteractionBuilderEnum.update;
      case 'patch':
        return TypeRestfulInteractionBuilderEnum.patch;
      case 'delete':
        return TypeRestfulInteractionBuilderEnum.delete;
      case 'history':
        return TypeRestfulInteractionBuilderEnum.history;
      case 'history-instance':
        return TypeRestfulInteractionBuilderEnum.historyInstance;
      case 'history-type':
        return TypeRestfulInteractionBuilderEnum.historyType;
      case 'history-system':
        return TypeRestfulInteractionBuilderEnum.historySystem;
      case 'create':
        return TypeRestfulInteractionBuilderEnum.create;
      case 'search':
        return TypeRestfulInteractionBuilderEnum.search;
      case 'search-type':
        return TypeRestfulInteractionBuilderEnum.searchType;
      case 'search-system':
        return TypeRestfulInteractionBuilderEnum.searchSystem;
      case 'capabilities':
        return TypeRestfulInteractionBuilderEnum.capabilities;
      case 'transaction':
        return TypeRestfulInteractionBuilderEnum.transaction;
      case 'batch':
        return TypeRestfulInteractionBuilderEnum.batch;
      case 'operation':
        return TypeRestfulInteractionBuilderEnum.operation;
    }
    return null;
  }
}

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteractionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TypeRestfulInteractionBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = TypeRestfulInteractionBuilderEnum.fromString(
      valueString,
    );
    return TypeRestfulInteractionBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [TypeRestfulInteractionBuilder]
  /// with element only
  factory TypeRestfulInteractionBuilder.empty() =>
      TypeRestfulInteractionBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TypeRestfulInteractionBuilder] from JSON.
  factory TypeRestfulInteractionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteractionBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for TypeRestfulInteractionBuilder
  final TypeRestfulInteractionBuilderEnum? valueEnum;

  /// read
  static TypeRestfulInteractionBuilder read = TypeRestfulInteractionBuilder._(
    valueString: 'read',
    valueEnum: TypeRestfulInteractionBuilderEnum.read,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'read',
    ),
  );

  /// vread
  static TypeRestfulInteractionBuilder vread = TypeRestfulInteractionBuilder._(
    valueString: 'vread',
    valueEnum: TypeRestfulInteractionBuilderEnum.vread,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'vread',
    ),
  );

  /// update
  static TypeRestfulInteractionBuilder update = TypeRestfulInteractionBuilder._(
    valueString: 'update',
    valueEnum: TypeRestfulInteractionBuilderEnum.update,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'update',
    ),
  );

  /// patch
  static TypeRestfulInteractionBuilder patch = TypeRestfulInteractionBuilder._(
    valueString: 'patch',
    valueEnum: TypeRestfulInteractionBuilderEnum.patch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'patch',
    ),
  );

  /// delete
  static TypeRestfulInteractionBuilder delete = TypeRestfulInteractionBuilder._(
    valueString: 'delete',
    valueEnum: TypeRestfulInteractionBuilderEnum.delete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'delete',
    ),
  );

  /// history
  static TypeRestfulInteractionBuilder history =
      TypeRestfulInteractionBuilder._(
    valueString: 'history',
    valueEnum: TypeRestfulInteractionBuilderEnum.history,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history',
    ),
  );

  /// history_instance
  static TypeRestfulInteractionBuilder historyInstance =
      TypeRestfulInteractionBuilder._(
    valueString: 'history-instance',
    valueEnum: TypeRestfulInteractionBuilderEnum.historyInstance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-instance',
    ),
  );

  /// history_type
  static TypeRestfulInteractionBuilder historyType =
      TypeRestfulInteractionBuilder._(
    valueString: 'history-type',
    valueEnum: TypeRestfulInteractionBuilderEnum.historyType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-type',
    ),
  );

  /// history_system
  static TypeRestfulInteractionBuilder historySystem =
      TypeRestfulInteractionBuilder._(
    valueString: 'history-system',
    valueEnum: TypeRestfulInteractionBuilderEnum.historySystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-system',
    ),
  );

  /// create
  static TypeRestfulInteractionBuilder create = TypeRestfulInteractionBuilder._(
    valueString: 'create',
    valueEnum: TypeRestfulInteractionBuilderEnum.create,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'create',
    ),
  );

  /// search
  static TypeRestfulInteractionBuilder search = TypeRestfulInteractionBuilder._(
    valueString: 'search',
    valueEnum: TypeRestfulInteractionBuilderEnum.search,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search',
    ),
  );

  /// search_type
  static TypeRestfulInteractionBuilder searchType =
      TypeRestfulInteractionBuilder._(
    valueString: 'search-type',
    valueEnum: TypeRestfulInteractionBuilderEnum.searchType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search-type',
    ),
  );

  /// search_system
  static TypeRestfulInteractionBuilder searchSystem =
      TypeRestfulInteractionBuilder._(
    valueString: 'search-system',
    valueEnum: TypeRestfulInteractionBuilderEnum.searchSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search-system',
    ),
  );

  /// capabilities
  static TypeRestfulInteractionBuilder capabilities =
      TypeRestfulInteractionBuilder._(
    valueString: 'capabilities',
    valueEnum: TypeRestfulInteractionBuilderEnum.capabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'capabilities',
    ),
  );

  /// transaction
  static TypeRestfulInteractionBuilder transaction =
      TypeRestfulInteractionBuilder._(
    valueString: 'transaction',
    valueEnum: TypeRestfulInteractionBuilderEnum.transaction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'transaction',
    ),
  );

  /// batch
  static TypeRestfulInteractionBuilder batch = TypeRestfulInteractionBuilder._(
    valueString: 'batch',
    valueEnum: TypeRestfulInteractionBuilderEnum.batch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'batch',
    ),
  );

  /// operation
  static TypeRestfulInteractionBuilder operation =
      TypeRestfulInteractionBuilder._(
    valueString: 'operation',
    valueEnum: TypeRestfulInteractionBuilderEnum.operation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'operation',
    ),
  );

  /// For instances where an Element is present but not value
  static TypeRestfulInteractionBuilder elementOnly =
      TypeRestfulInteractionBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TypeRestfulInteractionBuilder> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    historyInstance,
    historyType,
    historySystem,
    create,
    search,
    searchType,
    searchSystem,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Returns the enum value with an element attached
  TypeRestfulInteractionBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TypeRestfulInteractionBuilder._(
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
}
