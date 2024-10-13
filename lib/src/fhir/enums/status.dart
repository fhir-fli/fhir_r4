/// The validation status of the target
enum Status {
  /// Display: Attested
  /// Definition: ***TODO***
  attested,

  /// Display: Validated
  /// Definition: ***TODO***
  validated,

  /// Display: In process
  /// Definition: ***TODO***
  in_process,

  /// Display: Requires revalidation
  /// Definition: ***TODO***
  req_revalid,

  /// Display: Validation failed
  /// Definition: ***TODO***
  val_fail,

  /// Display: Re-Validation failed
  /// Definition: ***TODO***
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

  /// Returns a [String] from a [Status] enum.
  String toJson() => toString();

  /// Returns a [Status] from a [String] enum.
  static Status fromString(String str) {
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

  /// Returns a [Status] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static Status fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
