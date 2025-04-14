// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SystemRestfulInteraction
enum SystemRestfulInteractionBuilderEnum {
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
      case SystemRestfulInteractionBuilderEnum.read:
        return 'read';
      case SystemRestfulInteractionBuilderEnum.vread:
        return 'vread';
      case SystemRestfulInteractionBuilderEnum.update:
        return 'update';
      case SystemRestfulInteractionBuilderEnum.patch:
        return 'patch';
      case SystemRestfulInteractionBuilderEnum.delete:
        return 'delete';
      case SystemRestfulInteractionBuilderEnum.history:
        return 'history';
      case SystemRestfulInteractionBuilderEnum.historyInstance:
        return 'history-instance';
      case SystemRestfulInteractionBuilderEnum.historyType:
        return 'history-type';
      case SystemRestfulInteractionBuilderEnum.historySystem:
        return 'history-system';
      case SystemRestfulInteractionBuilderEnum.create:
        return 'create';
      case SystemRestfulInteractionBuilderEnum.search:
        return 'search';
      case SystemRestfulInteractionBuilderEnum.searchType:
        return 'search-type';
      case SystemRestfulInteractionBuilderEnum.searchSystem:
        return 'search-system';
      case SystemRestfulInteractionBuilderEnum.capabilities:
        return 'capabilities';
      case SystemRestfulInteractionBuilderEnum.transaction:
        return 'transaction';
      case SystemRestfulInteractionBuilderEnum.batch:
        return 'batch';
      case SystemRestfulInteractionBuilderEnum.operation:
        return 'operation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SystemRestfulInteractionBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SystemRestfulInteractionBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SystemRestfulInteractionBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'read':
        return SystemRestfulInteractionBuilderEnum.read;
      case 'vread':
        return SystemRestfulInteractionBuilderEnum.vread;
      case 'update':
        return SystemRestfulInteractionBuilderEnum.update;
      case 'patch':
        return SystemRestfulInteractionBuilderEnum.patch;
      case 'delete':
        return SystemRestfulInteractionBuilderEnum.delete;
      case 'history':
        return SystemRestfulInteractionBuilderEnum.history;
      case 'history-instance':
        return SystemRestfulInteractionBuilderEnum.historyInstance;
      case 'history-type':
        return SystemRestfulInteractionBuilderEnum.historyType;
      case 'history-system':
        return SystemRestfulInteractionBuilderEnum.historySystem;
      case 'create':
        return SystemRestfulInteractionBuilderEnum.create;
      case 'search':
        return SystemRestfulInteractionBuilderEnum.search;
      case 'search-type':
        return SystemRestfulInteractionBuilderEnum.searchType;
      case 'search-system':
        return SystemRestfulInteractionBuilderEnum.searchSystem;
      case 'capabilities':
        return SystemRestfulInteractionBuilderEnum.capabilities;
      case 'transaction':
        return SystemRestfulInteractionBuilderEnum.transaction;
      case 'batch':
        return SystemRestfulInteractionBuilderEnum.batch;
      case 'operation':
        return SystemRestfulInteractionBuilderEnum.operation;
    }
    return null;
  }
}

/// Operations supported by REST at the system level.
class SystemRestfulInteractionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SystemRestfulInteractionBuilder._({
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
  factory SystemRestfulInteractionBuilder(
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
    final valueEnum = SystemRestfulInteractionBuilderEnum.fromString(
      valueString,
    );
    return SystemRestfulInteractionBuilder._(
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

  /// Create empty [SystemRestfulInteractionBuilder]
  /// with element only
  factory SystemRestfulInteractionBuilder.empty() =>
      SystemRestfulInteractionBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SystemRestfulInteractionBuilder] from JSON.
  factory SystemRestfulInteractionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteractionBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SystemRestfulInteractionBuilder cannot be constructed from JSON.',
      );
    }
    return SystemRestfulInteractionBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SystemRestfulInteractionBuilder
  final SystemRestfulInteractionBuilderEnum? valueEnum;

  /// read
  static SystemRestfulInteractionBuilder read =
      SystemRestfulInteractionBuilder._(
    valueString: 'read',
    valueEnum: SystemRestfulInteractionBuilderEnum.read,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'read',
    ),
  );

  /// vread
  static SystemRestfulInteractionBuilder vread =
      SystemRestfulInteractionBuilder._(
    valueString: 'vread',
    valueEnum: SystemRestfulInteractionBuilderEnum.vread,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'vread',
    ),
  );

  /// update
  static SystemRestfulInteractionBuilder update =
      SystemRestfulInteractionBuilder._(
    valueString: 'update',
    valueEnum: SystemRestfulInteractionBuilderEnum.update,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'update',
    ),
  );

  /// patch
  static SystemRestfulInteractionBuilder patch =
      SystemRestfulInteractionBuilder._(
    valueString: 'patch',
    valueEnum: SystemRestfulInteractionBuilderEnum.patch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'patch',
    ),
  );

  /// delete
  static SystemRestfulInteractionBuilder delete =
      SystemRestfulInteractionBuilder._(
    valueString: 'delete',
    valueEnum: SystemRestfulInteractionBuilderEnum.delete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'delete',
    ),
  );

  /// history
  static SystemRestfulInteractionBuilder history =
      SystemRestfulInteractionBuilder._(
    valueString: 'history',
    valueEnum: SystemRestfulInteractionBuilderEnum.history,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history',
    ),
  );

  /// history_instance
  static SystemRestfulInteractionBuilder historyInstance =
      SystemRestfulInteractionBuilder._(
    valueString: 'history-instance',
    valueEnum: SystemRestfulInteractionBuilderEnum.historyInstance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-instance',
    ),
  );

  /// history_type
  static SystemRestfulInteractionBuilder historyType =
      SystemRestfulInteractionBuilder._(
    valueString: 'history-type',
    valueEnum: SystemRestfulInteractionBuilderEnum.historyType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-type',
    ),
  );

  /// history_system
  static SystemRestfulInteractionBuilder historySystem =
      SystemRestfulInteractionBuilder._(
    valueString: 'history-system',
    valueEnum: SystemRestfulInteractionBuilderEnum.historySystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-system',
    ),
  );

  /// create
  static SystemRestfulInteractionBuilder create =
      SystemRestfulInteractionBuilder._(
    valueString: 'create',
    valueEnum: SystemRestfulInteractionBuilderEnum.create,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'create',
    ),
  );

  /// search
  static SystemRestfulInteractionBuilder search =
      SystemRestfulInteractionBuilder._(
    valueString: 'search',
    valueEnum: SystemRestfulInteractionBuilderEnum.search,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search',
    ),
  );

  /// search_type
  static SystemRestfulInteractionBuilder searchType =
      SystemRestfulInteractionBuilder._(
    valueString: 'search-type',
    valueEnum: SystemRestfulInteractionBuilderEnum.searchType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search-type',
    ),
  );

  /// search_system
  static SystemRestfulInteractionBuilder searchSystem =
      SystemRestfulInteractionBuilder._(
    valueString: 'search-system',
    valueEnum: SystemRestfulInteractionBuilderEnum.searchSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search-system',
    ),
  );

  /// capabilities
  static SystemRestfulInteractionBuilder capabilities =
      SystemRestfulInteractionBuilder._(
    valueString: 'capabilities',
    valueEnum: SystemRestfulInteractionBuilderEnum.capabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'capabilities',
    ),
  );

  /// transaction
  static SystemRestfulInteractionBuilder transaction =
      SystemRestfulInteractionBuilder._(
    valueString: 'transaction',
    valueEnum: SystemRestfulInteractionBuilderEnum.transaction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'transaction',
    ),
  );

  /// batch
  static SystemRestfulInteractionBuilder batch =
      SystemRestfulInteractionBuilder._(
    valueString: 'batch',
    valueEnum: SystemRestfulInteractionBuilderEnum.batch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'batch',
    ),
  );

  /// operation
  static SystemRestfulInteractionBuilder operation =
      SystemRestfulInteractionBuilder._(
    valueString: 'operation',
    valueEnum: SystemRestfulInteractionBuilderEnum.operation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'operation',
    ),
  );

  /// For instances where an Element is present but not value
  static SystemRestfulInteractionBuilder elementOnly =
      SystemRestfulInteractionBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SystemRestfulInteractionBuilder> values = [
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
  SystemRestfulInteractionBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SystemRestfulInteractionBuilder._(
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
