// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTrigger extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  InteractionTrigger._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [InteractionTrigger] from JSON.
  factory InteractionTrigger.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return InteractionTrigger._(value: value, element: element);
  }

  /// read
  static final InteractionTrigger read = InteractionTrigger._(
    value: 'read',
  );

  /// vread
  static final InteractionTrigger vread = InteractionTrigger._(
    value: 'vread',
  );

  /// update
  static final InteractionTrigger update = InteractionTrigger._(
    value: 'update',
  );

  /// patch
  static final InteractionTrigger patch = InteractionTrigger._(
    value: 'patch',
  );

  /// delete
  static final InteractionTrigger delete = InteractionTrigger._(
    value: 'delete',
  );

  /// history
  static final InteractionTrigger history = InteractionTrigger._(
    value: 'history',
  );

  /// history_instance
  static final InteractionTrigger history_instance = InteractionTrigger._(
    value: 'history-instance',
  );

  /// history_type
  static final InteractionTrigger history_type = InteractionTrigger._(
    value: 'history-type',
  );

  /// history_system
  static final InteractionTrigger history_system = InteractionTrigger._(
    value: 'history-system',
  );

  /// create
  static final InteractionTrigger create = InteractionTrigger._(
    value: 'create',
  );

  /// search
  static final InteractionTrigger search = InteractionTrigger._(
    value: 'search',
  );

  /// search_type
  static final InteractionTrigger search_type = InteractionTrigger._(
    value: 'search-type',
  );

  /// search_system
  static final InteractionTrigger search_system = InteractionTrigger._(
    value: 'search-system',
  );

  /// capabilities
  static final InteractionTrigger capabilities = InteractionTrigger._(
    value: 'capabilities',
  );

  /// transaction
  static final InteractionTrigger transaction = InteractionTrigger._(
    value: 'transaction',
  );

  /// batch
  static final InteractionTrigger batch = InteractionTrigger._(
    value: 'batch',
  );

  /// operation
  static final InteractionTrigger operation = InteractionTrigger._(
    value: 'operation',
  );

  /// For instances where an Element is present but not value

  static final InteractionTrigger elementOnly = InteractionTrigger._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  InteractionTrigger withElement(Element? newElement) {
    return InteractionTrigger._(value: value, element: newElement);
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return InteractionTrigger._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
