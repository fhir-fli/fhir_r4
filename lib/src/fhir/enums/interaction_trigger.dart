// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
enum InteractionTrigger {
  /// Display: read
  /// Definition: Read the current state of the resource.
  read('read'),

  /// Display: vread
  /// Definition: Read the state of a specific version of the resource.
  vread('vread'),

  /// Display: update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  update('update'),

  /// Display: patch
  /// Definition: Update an existing resource by posting a set of changes to it.
  patch('patch'),

  /// Display: delete
  /// Definition: Delete a resource.
  delete('delete'),

  /// Display: history
  /// Definition: Retrieve the change history for a particular resource, type of resource, or the entire system.
  history('history'),

  /// Display: history-instance
  /// Definition: Retrieve the change history for a particular resource.
  history_instance('history-instance'),

  /// Display: history-type
  /// Definition: Retrieve the change history for all resources of a particular type.
  history_type('history-type'),

  /// Display: history-system
  /// Definition: Retrieve the change history for all resources on a system.
  history_system('history-system'),

  /// Display: create
  /// Definition: Create a new resource with a server assigned id.
  create('create'),

  /// Display: search
  /// Definition: Search a resource type or all resources based on some filter criteria.
  search('search'),

  /// Display: search-type
  /// Definition: Search all resources of the specified type based on some filter criteria.
  search_type('search-type'),

  /// Display: search-system
  /// Definition: Search all resources based on some filter criteria.
  search_system('search-system'),

  /// Display: capabilities
  /// Definition: Get a Capability Statement for the system.
  capabilities('capabilities'),

  /// Display: transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  transaction('transaction'),

  /// Display: batch
  /// Definition: perform a set of a separate interactions in a single http operation
  batch('batch'),

  /// Display: operation
  /// Definition: Perform an operation as defined by an OperationDefinition.
  operation('operation'),

  /// Display:
  /// Definition:
  create_1('create'),

  /// Display:
  /// Definition:
  update_1('update'),

  /// Display:
  /// Definition:
  delete_1('delete'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const InteractionTrigger(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [InteractionTrigger] instances.
  static InteractionTrigger fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger.elementOnly.withElement(
        element,
      );
    }
    return InteractionTrigger.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  InteractionTrigger withElement(Element? newElement) {
    return InteractionTrigger.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
