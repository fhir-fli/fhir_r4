import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the type of action that is expected to be performed
enum TaskCode {
  /// Display: Activate/approve the focal resource
  /// Definition: Take what actions are needed to transition the focus resource from 'draft' to 'active' or 'in-progress', as appropriate for the resource type. This may involve additing additional content, approval, validation, etc.
  approve('approve'),

  /// Display: Fulfill the focal request
  /// Definition: Act to perform the actions defined in the focus request. This might result in a 'more assertive' request (order for a plan or proposal, filler order for a placer order), but is intend to eventually result in events. The degree of fulfillment requested might be limited by Task.restriction.
  fulfill('fulfill'),

  /// Display: Mark the focal resource as no longer active
  /// Definition: Abort, cancel or withdraw the focal resource, as appropriate for the type of resource.
  abort('abort'),

  /// Display: Replace the focal resource with the input resource
  /// Definition: Replace the focal resource with the specified input resource
  replace('replace'),

  /// Display: Change the focal resource
  /// Definition: Update the focal resource of the owning system to reflect the content specified as the Task.focus
  change('change'),

  /// Display: Suspend the focal resource
  /// Definition: Transition the focal resource from 'active' or 'in-progress' to 'suspended'
  suspend('suspend'),

  /// Display: Re-activate the focal resource
  /// Definition: Transition the focal resource from 'suspended' to 'active' or 'in-progress' as appropriate for the resource type.
  resume('resume'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TaskCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TaskCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskCode.elementOnly.withElement(element);
    }
    return TaskCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TaskCode withElement(Element? newElement) {
    return TaskCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
