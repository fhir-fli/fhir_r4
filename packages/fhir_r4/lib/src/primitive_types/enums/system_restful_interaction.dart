part of '../primitive_types.dart';

/// Actual enum for SystemRestfulInteraction
enum SystemRestfulInteractionEnum {
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
      case SystemRestfulInteractionEnum.read:
        return 'read';
      case SystemRestfulInteractionEnum.vread:
        return 'vread';
      case SystemRestfulInteractionEnum.update:
        return 'update';
      case SystemRestfulInteractionEnum.patch:
        return 'patch';
      case SystemRestfulInteractionEnum.delete:
        return 'delete';
      case SystemRestfulInteractionEnum.history:
        return 'history';
      case SystemRestfulInteractionEnum.historyInstance:
        return 'history-instance';
      case SystemRestfulInteractionEnum.historyType:
        return 'history-type';
      case SystemRestfulInteractionEnum.historySystem:
        return 'history-system';
      case SystemRestfulInteractionEnum.create:
        return 'create';
      case SystemRestfulInteractionEnum.search:
        return 'search';
      case SystemRestfulInteractionEnum.searchType:
        return 'search-type';
      case SystemRestfulInteractionEnum.searchSystem:
        return 'search-system';
      case SystemRestfulInteractionEnum.capabilities:
        return 'capabilities';
      case SystemRestfulInteractionEnum.transaction:
        return 'transaction';
      case SystemRestfulInteractionEnum.batch:
        return 'batch';
      case SystemRestfulInteractionEnum.operation:
        return 'operation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SystemRestfulInteractionEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SystemRestfulInteractionEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SystemRestfulInteractionEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'read':
        return SystemRestfulInteractionEnum.read;
      case 'vread':
        return SystemRestfulInteractionEnum.vread;
      case 'update':
        return SystemRestfulInteractionEnum.update;
      case 'patch':
        return SystemRestfulInteractionEnum.patch;
      case 'delete':
        return SystemRestfulInteractionEnum.delete;
      case 'history':
        return SystemRestfulInteractionEnum.history;
      case 'history-instance':
        return SystemRestfulInteractionEnum.historyInstance;
      case 'history-type':
        return SystemRestfulInteractionEnum.historyType;
      case 'history-system':
        return SystemRestfulInteractionEnum.historySystem;
      case 'create':
        return SystemRestfulInteractionEnum.create;
      case 'search':
        return SystemRestfulInteractionEnum.search;
      case 'search-type':
        return SystemRestfulInteractionEnum.searchType;
      case 'search-system':
        return SystemRestfulInteractionEnum.searchSystem;
      case 'capabilities':
        return SystemRestfulInteractionEnum.capabilities;
      case 'transaction':
        return SystemRestfulInteractionEnum.transaction;
      case 'batch':
        return SystemRestfulInteractionEnum.batch;
      case 'operation':
        return SystemRestfulInteractionEnum.operation;
    }
    return null;
  }
}

/// Operations supported by REST at the system level.
class SystemRestfulInteraction extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SystemRestfulInteraction._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SystemRestfulInteraction(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = SystemRestfulInteractionEnum.fromString(valueString);
    return SystemRestfulInteraction._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [SystemRestfulInteraction]
  /// from JSON.
  factory SystemRestfulInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SystemRestfulInteractionEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteraction._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SystemRestfulInteraction cannot be constructed from JSON.',
      );
    }
    return SystemRestfulInteraction._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SystemRestfulInteraction
  final SystemRestfulInteractionEnum? valueEnum;

  /// read
  static const SystemRestfulInteraction read = SystemRestfulInteraction._(
    valueString: 'read',
    valueEnum: SystemRestfulInteractionEnum.read,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'read',
    ),
  );

  /// vread
  static const SystemRestfulInteraction vread = SystemRestfulInteraction._(
    valueString: 'vread',
    valueEnum: SystemRestfulInteractionEnum.vread,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'vread',
    ),
  );

  /// update
  static const SystemRestfulInteraction update = SystemRestfulInteraction._(
    valueString: 'update',
    valueEnum: SystemRestfulInteractionEnum.update,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'update',
    ),
  );

  /// patch
  static const SystemRestfulInteraction patch = SystemRestfulInteraction._(
    valueString: 'patch',
    valueEnum: SystemRestfulInteractionEnum.patch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'patch',
    ),
  );

  /// delete
  static const SystemRestfulInteraction delete = SystemRestfulInteraction._(
    valueString: 'delete',
    valueEnum: SystemRestfulInteractionEnum.delete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'delete',
    ),
  );

  /// history
  static const SystemRestfulInteraction history = SystemRestfulInteraction._(
    valueString: 'history',
    valueEnum: SystemRestfulInteractionEnum.history,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history',
    ),
  );

  /// history_instance
  static const SystemRestfulInteraction historyInstance =
      SystemRestfulInteraction._(
    valueString: 'history-instance',
    valueEnum: SystemRestfulInteractionEnum.historyInstance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-instance',
    ),
  );

  /// history_type
  static const SystemRestfulInteraction historyType =
      SystemRestfulInteraction._(
    valueString: 'history-type',
    valueEnum: SystemRestfulInteractionEnum.historyType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-type',
    ),
  );

  /// history_system
  static const SystemRestfulInteraction historySystem =
      SystemRestfulInteraction._(
    valueString: 'history-system',
    valueEnum: SystemRestfulInteractionEnum.historySystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-system',
    ),
  );

  /// create
  static const SystemRestfulInteraction create = SystemRestfulInteraction._(
    valueString: 'create',
    valueEnum: SystemRestfulInteractionEnum.create,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'create',
    ),
  );

  /// search
  static const SystemRestfulInteraction search = SystemRestfulInteraction._(
    valueString: 'search',
    valueEnum: SystemRestfulInteractionEnum.search,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search',
    ),
  );

  /// search_type
  static const SystemRestfulInteraction searchType = SystemRestfulInteraction._(
    valueString: 'search-type',
    valueEnum: SystemRestfulInteractionEnum.searchType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search-type',
    ),
  );

  /// search_system
  static const SystemRestfulInteraction searchSystem =
      SystemRestfulInteraction._(
    valueString: 'search-system',
    valueEnum: SystemRestfulInteractionEnum.searchSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search-system',
    ),
  );

  /// capabilities
  static const SystemRestfulInteraction capabilities =
      SystemRestfulInteraction._(
    valueString: 'capabilities',
    valueEnum: SystemRestfulInteractionEnum.capabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'capabilities',
    ),
  );

  /// transaction
  static const SystemRestfulInteraction transaction =
      SystemRestfulInteraction._(
    valueString: 'transaction',
    valueEnum: SystemRestfulInteractionEnum.transaction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'transaction',
    ),
  );

  /// batch
  static const SystemRestfulInteraction batch = SystemRestfulInteraction._(
    valueString: 'batch',
    valueEnum: SystemRestfulInteractionEnum.batch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'batch',
    ),
  );

  /// operation
  static const SystemRestfulInteraction operation = SystemRestfulInteraction._(
    valueString: 'operation',
    valueEnum: SystemRestfulInteractionEnum.operation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/system-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'operation',
    ),
  );

  /// List of all enum-like values
  static final List<SystemRestfulInteraction> values = [
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
  SystemRestfulInteraction withElement(Element? newElement) {
    return SystemRestfulInteraction._(
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

  @override
  SystemRestfulInteraction clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SystemRestfulInteractionCopyWithImpl<SystemRestfulInteraction> get copyWith =>
      SystemRestfulInteractionCopyWithImpl<SystemRestfulInteraction>(
        this,
        (v) => v as SystemRestfulInteraction,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SystemRestfulInteractionCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SystemRestfulInteractionCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      SystemRestfulInteraction(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
