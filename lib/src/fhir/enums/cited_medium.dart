// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// NLM codes Internet or Print.
enum CitedMedium {
  /// Display: Internet
  /// Definition: Online publication in a periodic release. Used to match NLM JournalIssue CitedMedium code for online version.
  internet('internet'),

  /// Display: Print
  /// Definition: Print publication in a periodic release. Used to match NLM JournalIssue CitedMedium code for print version.
  print('print'),

  /// Display: Offline Digital Storage
  /// Definition: Publication in a physical device for electronic data storage, organized in issues for periodic release.
  offline_digital_storage('offline-digital-storage'),

  /// Display: Internet without issue
  /// Definition: Online publication without any periodic release. Used for article specific publication date which could be the same as or different from journal issue publication date.
  internet_without_issue('internet-without-issue'),

  /// Display: Print without issue
  /// Definition: Print publication without any periodic release.
  print_without_issue('print-without-issue'),

  /// Display: Offline Digital Storage without issue
  /// Definition: Publication in a physical device for electronic data storage, without any periodic release.
  offline_digital_storage_without_issue(
      'offline-digital-storage-without-issue'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitedMedium(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitedMedium] instances.
  static CitedMedium fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedMedium.elementOnly.withElement(
        element,
      );
    }
    return CitedMedium.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitedMedium withElement(Element? newElement) {
    return CitedMedium.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
