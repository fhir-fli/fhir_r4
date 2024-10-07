import 'package:json_annotation/json_annotation.dart';

/// Codes indicating the type of action that is expected to be performed
enum TaskCode {
  /// Display: Activate/approve the focal resource
  /// Definition: Take what actions are needed to transition the focus resource from 'draft' to 'active' or 'in-progress', as appropriate for the resource type.  This may involve additing additional content, approval, validation, etc.
  @JsonValue('approve')
  approve,

  /// Display: Fulfill the focal request
  /// Definition: Act to perform the actions defined in the focus request.  This might result in a 'more assertive' request (order for a plan or proposal, filler order for a placer order), but is intend to eventually result in events.  The degree of fulfillment requested might be limited by Task.restriction.
  @JsonValue('fulfill')
  fulfill,

  /// Display: Mark the focal resource as no longer active
  /// Definition: Abort, cancel or withdraw the focal resource, as appropriate for the type of resource.
  @JsonValue('abort')
  abort,

  /// Display: Replace the focal resource with the input resource
  /// Definition: Replace the focal resource with the specified input resource
  @JsonValue('replace')
  replace,

  /// Display: Change the focal resource
  /// Definition: Update the focal resource of the owning system to reflect the content specified as the Task.focus
  @JsonValue('change')
  change,

  /// Display: Suspend the focal resource
  /// Definition: Transition the focal resource from 'active' or 'in-progress' to 'suspended'
  @JsonValue('suspend')
  suspend,

  /// Display: Re-activate the focal resource
  /// Definition: Transition the focal resource from 'suspended' to 'active' or 'in-progress' as appropriate for the resource type.
  @JsonValue('resume')
  resume,
  ;

  @override
  String toString() {
    switch (this) {
      case approve:
        return 'approve';
      case fulfill:
        return 'fulfill';
      case abort:
        return 'abort';
      case replace:
        return 'replace';
      case change:
        return 'change';
      case suspend:
        return 'suspend';
      case resume:
        return 'resume';
    }
  }

  String toJson() => toString();
  TaskCode fromString(String str) {
    switch (str) {
      case 'approve':
        return TaskCode.approve;
      case 'fulfill':
        return TaskCode.fulfill;
      case 'abort':
        return TaskCode.abort;
      case 'replace':
        return TaskCode.replace;
      case 'change':
        return TaskCode.change;
      case 'suspend':
        return TaskCode.suspend;
      case 'resume':
        return TaskCode.resume;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  TaskCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
