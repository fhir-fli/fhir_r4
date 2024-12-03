// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTrigger extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  InteractionTrigger._(super.value, [super.element]);

  /// Factory constructor to create [InteractionTrigger] from JSON.
  factory InteractionTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger.elementOnly.withElement(element);
    }
    return InteractionTrigger._(value, element);
  }

  /// read
  static final InteractionTrigger read = InteractionTrigger._(
    'read',
  );

  /// vread
  static final InteractionTrigger vread = InteractionTrigger._(
    'vread',
  );

  /// update
  static final InteractionTrigger update = InteractionTrigger._(
    'update',
  );

  /// patch
  static final InteractionTrigger patch = InteractionTrigger._(
    'patch',
  );

  /// delete
  static final InteractionTrigger delete = InteractionTrigger._(
    'delete',
  );

  /// history
  static final InteractionTrigger history = InteractionTrigger._(
    'history',
  );

  /// history_instance
  static final InteractionTrigger history_instance = InteractionTrigger._(
    'history-instance',
  );

  /// history_type
  static final InteractionTrigger history_type = InteractionTrigger._(
    'history-type',
  );

  /// history_system
  static final InteractionTrigger history_system = InteractionTrigger._(
    'history-system',
  );

  /// create
  static final InteractionTrigger create = InteractionTrigger._(
    'create',
  );

  /// search
  static final InteractionTrigger search = InteractionTrigger._(
    'search',
  );

  /// search_type
  static final InteractionTrigger search_type = InteractionTrigger._(
    'search-type',
  );

  /// search_system
  static final InteractionTrigger search_system = InteractionTrigger._(
    'search-system',
  );

  /// capabilities
  static final InteractionTrigger capabilities = InteractionTrigger._(
    'capabilities',
  );

  /// transaction
  static final InteractionTrigger transaction = InteractionTrigger._(
    'transaction',
  );

  /// batch
  static final InteractionTrigger batch = InteractionTrigger._(
    'batch',
  );

  /// operation
  static final InteractionTrigger operation = InteractionTrigger._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final InteractionTrigger elementOnly = InteractionTrigger._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  InteractionTrigger setElement(
    String name,
    dynamic elementValue,
  ) {
    return InteractionTrigger._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  InteractionTrigger withElement(Element? newElement) {
    return InteractionTrigger._(value, newElement);
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
  InteractionTrigger copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return InteractionTrigger._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
