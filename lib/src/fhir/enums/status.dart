import 'package:json_annotation/json_annotation.dart';

/// The validation status of the target
enum Status {
  /// Display: Attested
  /// Definition: ***TODO***
  @JsonValue('attested')
  attested,

  /// Display: Validated
  /// Definition: ***TODO***
  @JsonValue('validated')
  validated,

  /// Display: In process
  /// Definition: ***TODO***
  @JsonValue('in-process')
  in_process,

  /// Display: Requires revalidation
  /// Definition: ***TODO***
  @JsonValue('req-revalid')
  req_revalid,

  /// Display: Validation failed
  /// Definition: ***TODO***
  @JsonValue('val-fail')
  val_fail,

  /// Display: Re-Validation failed
  /// Definition: ***TODO***
  @JsonValue('reval-fail')
  reval_fail,
  ;

  @override
  String toString() {
    switch (this) {
      case attested:
        return 'attested';
      case validated:
        return 'validated';
      case in_process:
        return 'in-process';
      case req_revalid:
        return 'req-revalid';
      case val_fail:
        return 'val-fail';
      case reval_fail:
        return 'reval-fail';
    }
  }

  String toJson() => toString();
  Status fromString(String str) {
    switch (str) {
      case 'attested':
        return Status.attested;
      case 'validated':
        return Status.validated;
      case 'in-process':
        return Status.in_process;
      case 'req-revalid':
        return Status.req_revalid;
      case 'val-fail':
        return Status.val_fail;
      case 'reval-fail':
        return Status.reval_fail;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  Status fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
