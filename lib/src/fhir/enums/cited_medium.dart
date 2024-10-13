/// NLM codes Internet or Print.
enum CitedMedium {
  /// Display: Internet
  /// Definition: Online publication in a periodic release. Used to match NLM JournalIssue CitedMedium code for online version.
  internet,

  /// Display: Print
  /// Definition: Print publication in a periodic release. Used to match NLM JournalIssue CitedMedium code for print version.
  print,

  /// Display: Offline Digital Storage
  /// Definition: Publication in a physical device for electronic data storage, organized in issues for periodic release.
  offline_digital_storage,

  /// Display: Internet without issue
  /// Definition: Online publication without any periodic release. Used for article specific publication date which could be the same as or different from journal issue publication date.
  internet_without_issue,

  /// Display: Print without issue
  /// Definition: Print publication without any periodic release.
  print_without_issue,

  /// Display: Offline Digital Storage without issue
  /// Definition: Publication in a physical device for electronic data storage, without any periodic release.
  offline_digital_storage_without_issue,
  ;

  @override
  String toString() {
    switch (this) {
      case internet:
        return 'internet';
      case print:
        return 'print';
      case offline_digital_storage:
        return 'offline-digital-storage';
      case internet_without_issue:
        return 'internet-without-issue';
      case print_without_issue:
        return 'print-without-issue';
      case offline_digital_storage_without_issue:
        return 'offline-digital-storage-without-issue';
    }
  }

  /// Returns a [String] from a [CitedMedium] enum.
  String toJson() => toString();

  /// Returns a [CitedMedium] from a [String] enum.
  static CitedMedium fromString(String str) {
    switch (str) {
      case 'internet':
        return CitedMedium.internet;
      case 'print':
        return CitedMedium.print;
      case 'offline-digital-storage':
        return CitedMedium.offline_digital_storage;
      case 'internet-without-issue':
        return CitedMedium.internet_without_issue;
      case 'print-without-issue':
        return CitedMedium.print_without_issue;
      case 'offline-digital-storage-without-issue':
        return CitedMedium.offline_digital_storage_without_issue;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CitedMedium] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CitedMedium fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
