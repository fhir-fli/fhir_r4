import 'package:fhir_r4/fhir_r4.dart';

/// Used to code author list statement, contributorship statement, and such.
enum ContributorSummaryType {
  /// Display: Author string
  /// Definition: Display of the author list as a complete string.
  author_string('author-string'),

  /// Display: Contributorship list
  /// Definition: Display of the list of contributors as a complete string.
  contributorship_list('contributorship-list'),

  /// Display: Contributorship statement
  /// Definition: Compiled summary of contributions.
  contributorship_statement('contributorship-statement'),

  /// Display: Acknowledgment list
  /// Definition: Display of the list of acknowledged parties as a complete string.
  acknowledgement_list('acknowledgement-list'),

  /// Display: Acknowledgment statement
  /// Definition: Statement of acknowledgment of contributions beyond those compiled for formal contributorship statements.
  acknowledgment_statement('acknowledgment-statement'),

  /// Display: Funding statement
  /// Definition: Statement of financial support for the creation of the cited artifact.
  funding_statement('funding-statement'),

  /// Display: Competing interests statement
  /// Definition: Statement of completing interests related to the creation of the cited artifact. Also called conflicts of interest or declaration of interests.
  competing_interests_statement('competing-interests-statement'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContributorSummaryType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContributorSummaryType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryType.elementOnly.withElement(element);
    }
    return ContributorSummaryType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContributorSummaryType withElement(Element? newElement) {
    return ContributorSummaryType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
