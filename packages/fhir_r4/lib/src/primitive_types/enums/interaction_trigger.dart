// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InteractionTrigger
enum InteractionTriggerEnum {
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
      case InteractionTriggerEnum.read:
        return 'read';
      case InteractionTriggerEnum.vread:
        return 'vread';
      case InteractionTriggerEnum.update:
        return 'update';
      case InteractionTriggerEnum.patch:
        return 'patch';
      case InteractionTriggerEnum.delete:
        return 'delete';
      case InteractionTriggerEnum.history:
        return 'history';
      case InteractionTriggerEnum.historyInstance:
        return 'history-instance';
      case InteractionTriggerEnum.historyType:
        return 'history-type';
      case InteractionTriggerEnum.historySystem:
        return 'history-system';
      case InteractionTriggerEnum.create:
        return 'create';
      case InteractionTriggerEnum.search:
        return 'search';
      case InteractionTriggerEnum.searchType:
        return 'search-type';
      case InteractionTriggerEnum.searchSystem:
        return 'search-system';
      case InteractionTriggerEnum.capabilities:
        return 'capabilities';
      case InteractionTriggerEnum.transaction:
        return 'transaction';
      case InteractionTriggerEnum.batch:
        return 'batch';
      case InteractionTriggerEnum.operation:
        return 'operation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InteractionTriggerEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return InteractionTriggerEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InteractionTriggerEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'read':
        return InteractionTriggerEnum.read;
      case 'vread':
        return InteractionTriggerEnum.vread;
      case 'update':
        return InteractionTriggerEnum.update;
      case 'patch':
        return InteractionTriggerEnum.patch;
      case 'delete':
        return InteractionTriggerEnum.delete;
      case 'history':
        return InteractionTriggerEnum.history;
      case 'history-instance':
        return InteractionTriggerEnum.historyInstance;
      case 'history-type':
        return InteractionTriggerEnum.historyType;
      case 'history-system':
        return InteractionTriggerEnum.historySystem;
      case 'create':
        return InteractionTriggerEnum.create;
      case 'search':
        return InteractionTriggerEnum.search;
      case 'search-type':
        return InteractionTriggerEnum.searchType;
      case 'search-system':
        return InteractionTriggerEnum.searchSystem;
      case 'capabilities':
        return InteractionTriggerEnum.capabilities;
      case 'transaction':
        return InteractionTriggerEnum.transaction;
      case 'batch':
        return InteractionTriggerEnum.batch;
      case 'operation':
        return InteractionTriggerEnum.operation;
    }
    return null;
  }
}

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTrigger extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const InteractionTrigger._({
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
  factory InteractionTrigger(
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
    final valueEnum = InteractionTriggerEnum.fromString(valueString);
    return InteractionTrigger._(
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

  /// Factory constructor to create [InteractionTrigger]
  /// from JSON.
  factory InteractionTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = InteractionTriggerEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InteractionTrigger cannot be constructed from JSON.',
      );
    }
    return InteractionTrigger._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for InteractionTrigger
  final InteractionTriggerEnum? valueEnum;

  /// read
  static const InteractionTrigger read = InteractionTrigger._(
    valueString: 'read',
    valueEnum: InteractionTriggerEnum.read,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'read',
    ),
  );

  /// vread
  static const InteractionTrigger vread = InteractionTrigger._(
    valueString: 'vread',
    valueEnum: InteractionTriggerEnum.vread,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'vread',
    ),
  );

  /// update
  static const InteractionTrigger update = InteractionTrigger._(
    valueString: 'update',
    valueEnum: InteractionTriggerEnum.update,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'update',
    ),
  );

  /// patch
  static const InteractionTrigger patch = InteractionTrigger._(
    valueString: 'patch',
    valueEnum: InteractionTriggerEnum.patch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'patch',
    ),
  );

  /// delete
  static const InteractionTrigger delete = InteractionTrigger._(
    valueString: 'delete',
    valueEnum: InteractionTriggerEnum.delete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'delete',
    ),
  );

  /// history
  static const InteractionTrigger history = InteractionTrigger._(
    valueString: 'history',
    valueEnum: InteractionTriggerEnum.history,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history',
    ),
  );

  /// history_instance
  static const InteractionTrigger historyInstance = InteractionTrigger._(
    valueString: 'history-instance',
    valueEnum: InteractionTriggerEnum.historyInstance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-instance',
    ),
  );

  /// history_type
  static const InteractionTrigger historyType = InteractionTrigger._(
    valueString: 'history-type',
    valueEnum: InteractionTriggerEnum.historyType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-type',
    ),
  );

  /// history_system
  static const InteractionTrigger historySystem = InteractionTrigger._(
    valueString: 'history-system',
    valueEnum: InteractionTriggerEnum.historySystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'history-system',
    ),
  );

  /// create
  static const InteractionTrigger create = InteractionTrigger._(
    valueString: 'create',
    valueEnum: InteractionTriggerEnum.create,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'create',
    ),
  );

  /// search
  static const InteractionTrigger search = InteractionTrigger._(
    valueString: 'search',
    valueEnum: InteractionTriggerEnum.search,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search',
    ),
  );

  /// search_type
  static const InteractionTrigger searchType = InteractionTrigger._(
    valueString: 'search-type',
    valueEnum: InteractionTriggerEnum.searchType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search-type',
    ),
  );

  /// search_system
  static const InteractionTrigger searchSystem = InteractionTrigger._(
    valueString: 'search-system',
    valueEnum: InteractionTriggerEnum.searchSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'search-system',
    ),
  );

  /// capabilities
  static const InteractionTrigger capabilities = InteractionTrigger._(
    valueString: 'capabilities',
    valueEnum: InteractionTriggerEnum.capabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'capabilities',
    ),
  );

  /// transaction
  static const InteractionTrigger transaction = InteractionTrigger._(
    valueString: 'transaction',
    valueEnum: InteractionTriggerEnum.transaction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'transaction',
    ),
  );

  /// batch
  static const InteractionTrigger batch = InteractionTrigger._(
    valueString: 'batch',
    valueEnum: InteractionTriggerEnum.batch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'batch',
    ),
  );

  /// operation
  static const InteractionTrigger operation = InteractionTrigger._(
    valueString: 'operation',
    valueEnum: InteractionTriggerEnum.operation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'operation',
    ),
  );

  /// List of all enum-like values
  static final List<InteractionTrigger> values = [
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
  InteractionTrigger withElement(Element? newElement) {
    return InteractionTrigger._(
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
  InteractionTrigger clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  InteractionTriggerCopyWithImpl<InteractionTrigger> get copyWith =>
      InteractionTriggerCopyWithImpl<InteractionTrigger>(
        this,
        (v) => v as InteractionTrigger,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class InteractionTriggerCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  InteractionTriggerCopyWithImpl(super._value, super._then);

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
      InteractionTrigger(
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
