// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TypeRestfulInteraction
enum TypeRestfulInteractionEnum {
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
      case TypeRestfulInteractionEnum.read:
        return 'read';
      case TypeRestfulInteractionEnum.vread:
        return 'vread';
      case TypeRestfulInteractionEnum.update:
        return 'update';
      case TypeRestfulInteractionEnum.patch:
        return 'patch';
      case TypeRestfulInteractionEnum.delete:
        return 'delete';
      case TypeRestfulInteractionEnum.history:
        return 'history';
      case TypeRestfulInteractionEnum.historyInstance:
        return 'history-instance';
      case TypeRestfulInteractionEnum.historyType:
        return 'history-type';
      case TypeRestfulInteractionEnum.historySystem:
        return 'history-system';
      case TypeRestfulInteractionEnum.create:
        return 'create';
      case TypeRestfulInteractionEnum.search:
        return 'search';
      case TypeRestfulInteractionEnum.searchType:
        return 'search-type';
      case TypeRestfulInteractionEnum.searchSystem:
        return 'search-system';
      case TypeRestfulInteractionEnum.capabilities:
        return 'capabilities';
      case TypeRestfulInteractionEnum.transaction:
        return 'transaction';
      case TypeRestfulInteractionEnum.batch:
        return 'batch';
      case TypeRestfulInteractionEnum.operation:
        return 'operation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TypeRestfulInteractionEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TypeRestfulInteractionEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TypeRestfulInteractionEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'read':
        return TypeRestfulInteractionEnum.read;
      case 'vread':
        return TypeRestfulInteractionEnum.vread;
      case 'update':
        return TypeRestfulInteractionEnum.update;
      case 'patch':
        return TypeRestfulInteractionEnum.patch;
      case 'delete':
        return TypeRestfulInteractionEnum.delete;
      case 'history':
        return TypeRestfulInteractionEnum.history;
      case 'history-instance':
        return TypeRestfulInteractionEnum.historyInstance;
      case 'history-type':
        return TypeRestfulInteractionEnum.historyType;
      case 'history-system':
        return TypeRestfulInteractionEnum.historySystem;
      case 'create':
        return TypeRestfulInteractionEnum.create;
      case 'search':
        return TypeRestfulInteractionEnum.search;
      case 'search-type':
        return TypeRestfulInteractionEnum.searchType;
      case 'search-system':
        return TypeRestfulInteractionEnum.searchSystem;
      case 'capabilities':
        return TypeRestfulInteractionEnum.capabilities;
      case 'transaction':
        return TypeRestfulInteractionEnum.transaction;
      case 'batch':
        return TypeRestfulInteractionEnum.batch;
      case 'operation':
        return TypeRestfulInteractionEnum.operation;
    }
    return null;
  }
}

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteraction extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TypeRestfulInteraction._({
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
  factory TypeRestfulInteraction(
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
    final valueEnum = TypeRestfulInteractionEnum.fromString(valueString);
    return TypeRestfulInteraction._(
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

  /// Factory constructor to create [TypeRestfulInteraction]
  /// from JSON.
  factory TypeRestfulInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TypeRestfulInteractionEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteraction._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TypeRestfulInteraction cannot be constructed from JSON.',
      );
    }
    return TypeRestfulInteraction._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TypeRestfulInteraction
  final TypeRestfulInteractionEnum? valueEnum;

  /// read
  static const TypeRestfulInteraction read = TypeRestfulInteraction._(
    valueString: 'read',
    valueEnum: TypeRestfulInteractionEnum.read,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'read',
    ),
  );

  /// vread
  static const TypeRestfulInteraction vread = TypeRestfulInteraction._(
    valueString: 'vread',
    valueEnum: TypeRestfulInteractionEnum.vread,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'vread',
    ),
  );

  /// update
  static const TypeRestfulInteraction update = TypeRestfulInteraction._(
    valueString: 'update',
    valueEnum: TypeRestfulInteractionEnum.update,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'update',
    ),
  );

  /// patch
  static const TypeRestfulInteraction patch = TypeRestfulInteraction._(
    valueString: 'patch',
    valueEnum: TypeRestfulInteractionEnum.patch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'patch',
    ),
  );

  /// delete
  static const TypeRestfulInteraction delete = TypeRestfulInteraction._(
    valueString: 'delete',
    valueEnum: TypeRestfulInteractionEnum.delete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'delete',
    ),
  );

  /// history
  static const TypeRestfulInteraction history = TypeRestfulInteraction._(
    valueString: 'history',
    valueEnum: TypeRestfulInteractionEnum.history,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history',
    ),
  );

  /// history_instance
  static const TypeRestfulInteraction historyInstance =
      TypeRestfulInteraction._(
    valueString: 'history-instance',
    valueEnum: TypeRestfulInteractionEnum.historyInstance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-instance',
    ),
  );

  /// history_type
  static const TypeRestfulInteraction historyType = TypeRestfulInteraction._(
    valueString: 'history-type',
    valueEnum: TypeRestfulInteractionEnum.historyType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-type',
    ),
  );

  /// history_system
  static const TypeRestfulInteraction historySystem = TypeRestfulInteraction._(
    valueString: 'history-system',
    valueEnum: TypeRestfulInteractionEnum.historySystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-system',
    ),
  );

  /// create
  static const TypeRestfulInteraction create = TypeRestfulInteraction._(
    valueString: 'create',
    valueEnum: TypeRestfulInteractionEnum.create,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'create',
    ),
  );

  /// search
  static const TypeRestfulInteraction search = TypeRestfulInteraction._(
    valueString: 'search',
    valueEnum: TypeRestfulInteractionEnum.search,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search',
    ),
  );

  /// search_type
  static const TypeRestfulInteraction searchType = TypeRestfulInteraction._(
    valueString: 'search-type',
    valueEnum: TypeRestfulInteractionEnum.searchType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search-type',
    ),
  );

  /// search_system
  static const TypeRestfulInteraction searchSystem = TypeRestfulInteraction._(
    valueString: 'search-system',
    valueEnum: TypeRestfulInteractionEnum.searchSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search-system',
    ),
  );

  /// capabilities
  static const TypeRestfulInteraction capabilities = TypeRestfulInteraction._(
    valueString: 'capabilities',
    valueEnum: TypeRestfulInteractionEnum.capabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'capabilities',
    ),
  );

  /// transaction
  static const TypeRestfulInteraction transaction = TypeRestfulInteraction._(
    valueString: 'transaction',
    valueEnum: TypeRestfulInteractionEnum.transaction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'transaction',
    ),
  );

  /// batch
  static const TypeRestfulInteraction batch = TypeRestfulInteraction._(
    valueString: 'batch',
    valueEnum: TypeRestfulInteractionEnum.batch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'batch',
    ),
  );

  /// operation
  static const TypeRestfulInteraction operation = TypeRestfulInteraction._(
    valueString: 'operation',
    valueEnum: TypeRestfulInteractionEnum.operation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/type-restful-interaction',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'operation',
    ),
  );

  /// List of all enum-like values
  static final List<TypeRestfulInteraction> values = [
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
  TypeRestfulInteraction withElement(Element? newElement) {
    return TypeRestfulInteraction._(
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
  TypeRestfulInteraction clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TypeRestfulInteractionCopyWithImpl<TypeRestfulInteraction> get copyWith =>
      TypeRestfulInteractionCopyWithImpl<TypeRestfulInteraction>(
        this,
        (v) => v as TypeRestfulInteraction,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TypeRestfulInteractionCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TypeRestfulInteractionCopyWithImpl(super._value, super._then);

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
      TypeRestfulInteraction(
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
