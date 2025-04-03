// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTrigger extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  InteractionTrigger._({
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
  factory InteractionTrigger(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return InteractionTrigger._(
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

  /// Create empty [InteractionTrigger] with element only
  factory InteractionTrigger.empty() => InteractionTrigger._(valueString: '');

  /// Factory constructor to create [InteractionTrigger] from JSON.
  factory InteractionTrigger.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InteractionTrigger cannot be constructed from JSON.',
      );
    }
    return InteractionTrigger._(
      valueString: value,
      element: element,
    );
  }

  /// read
  static final InteractionTrigger read = InteractionTrigger._(
    valueString: 'read',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'read'.toFhirString,
  );

  /// vread
  static final InteractionTrigger vread = InteractionTrigger._(
    valueString: 'vread',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'vread'.toFhirString,
  );

  /// update
  static final InteractionTrigger update = InteractionTrigger._(
    valueString: 'update',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'update'.toFhirString,
  );

  /// patch
  static final InteractionTrigger patch = InteractionTrigger._(
    valueString: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'patch'.toFhirString,
  );

  /// delete
  static final InteractionTrigger delete = InteractionTrigger._(
    valueString: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'delete'.toFhirString,
  );

  /// history
  static final InteractionTrigger history = InteractionTrigger._(
    valueString: 'history',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history'.toFhirString,
  );

  /// history_instance
  static final InteractionTrigger history_instance = InteractionTrigger._(
    valueString: 'history-instance',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-instance'.toFhirString,
  );

  /// history_type
  static final InteractionTrigger history_type = InteractionTrigger._(
    valueString: 'history-type',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-type'.toFhirString,
  );

  /// history_system
  static final InteractionTrigger history_system = InteractionTrigger._(
    valueString: 'history-system',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'history-system'.toFhirString,
  );

  /// create
  static final InteractionTrigger create = InteractionTrigger._(
    valueString: 'create',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'create'.toFhirString,
  );

  /// search
  static final InteractionTrigger search = InteractionTrigger._(
    valueString: 'search',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search'.toFhirString,
  );

  /// search_type
  static final InteractionTrigger search_type = InteractionTrigger._(
    valueString: 'search-type',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search-type'.toFhirString,
  );

  /// search_system
  static final InteractionTrigger search_system = InteractionTrigger._(
    valueString: 'search-system',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'search-system'.toFhirString,
  );

  /// capabilities
  static final InteractionTrigger capabilities = InteractionTrigger._(
    valueString: 'capabilities',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'capabilities'.toFhirString,
  );

  /// transaction
  static final InteractionTrigger transaction = InteractionTrigger._(
    valueString: 'transaction',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'transaction'.toFhirString,
  );

  /// batch
  static final InteractionTrigger batch = InteractionTrigger._(
    valueString: 'batch',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'batch'.toFhirString,
  );

  /// operation
  static final InteractionTrigger operation = InteractionTrigger._(
    valueString: 'operation',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'operation'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final InteractionTrigger elementOnly =
      InteractionTrigger._(valueString: '');

  /// List of all enum-like values
  static final List<InteractionTrigger> values = [
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
  InteractionTrigger clone() => InteractionTrigger._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  InteractionTrigger copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for InteractionTrigger: $newValue');
    }
    return InteractionTrigger._(
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
