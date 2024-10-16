import 'package:fhir_r4/fhir_r4.dart';

/// The role that a provenance participant played
enum ProvenanceParticipantRole {
  /// Display: Enterer
  /// Definition: A person entering the data into the originating system
  enterer('enterer'),

  /// Display: Performer
  /// Definition: A person, animal, organization or device that who actually and principally carries out the activity
  performer('performer'),

  /// Display: Author
  /// Definition: A party that originates the resource and therefore has responsibility for the information given in the resource and ownership of this resource
  author('author'),

  /// Display: Verifier
  /// Definition: A person who verifies the correctness and appropriateness of activity
  verifier('verifier'),

  /// Display: Legal Authenticator
  /// Definition: The person authenticated the content and accepted legal responsibility for its content
  legal('legal'),

  /// Display: Attester
  /// Definition: A verifier who attests to the accuracy of the resource
  attester('attester'),

  /// Display: Informant
  /// Definition: A person who reported information that contributed to the resource
  informant('informant'),

  /// Display: Custodian
  /// Definition: The entity that is accountable for maintaining a true an accurate copy of the original record
  custodian('custodian'),

  /// Display: Assembler
  /// Definition: A device that operates independently of an author on custodian's algorithms for data extraction of existing information for purpose of generating a new artifact.
  assembler('assembler'),

  /// Display: Composer
  /// Definition: A device used by an author to record new information, which may also be used by the author to select existing information for aggregation with newly recorded information for the purpose of generating a new artifact.
  composer('composer'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProvenanceParticipantRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProvenanceParticipantRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantRole.elementOnly.withElement(element);
    }
    return ProvenanceParticipantRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProvenanceParticipantRole withElement(Element? newElement) {
    return ProvenanceParticipantRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
