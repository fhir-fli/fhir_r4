import 'package:json_annotation/json_annotation.dart';

/// The type of participation a provenance participant.
enum ProvenanceParticipantType {
  /// Display: Enterer
  /// Definition: A person entering the data into the originating system
  @JsonValue('enterer')
  enterer,

  /// Display: Performer
  /// Definition: A person, animal, organization or device that who actually and principally carries out the activity
  @JsonValue('performer')
  performer,

  /// Display: Author
  /// Definition: A party that originates the resource and therefore has responsibility for the information given in the resource and ownership of this resource
  @JsonValue('author')
  author,

  /// Display: Verifier
  /// Definition: A person who verifies the correctness and appropriateness of activity
  @JsonValue('verifier')
  verifier,

  /// Display: Attester
  /// Definition: A verifier who attests to the accuracy of the resource
  @JsonValue('attester')
  attester,

  /// Display: Informant
  /// Definition: A person who reported information that contributed to the resource
  @JsonValue('informant')
  informant,

  /// Display: Custodian
  /// Definition: The entity that is accountable for maintaining a true an accurate copy of the original record
  @JsonValue('custodian')
  custodian,

  /// Display: Assembler
  /// Definition: A device that operates independently of an author on custodian's algorithms for data extraction of existing information for purpose of generating a new artifact.
  @JsonValue('assembler')
  assembler,

  /// Display: Composer
  /// Definition: A device used by an author to record new information, which may also be used by the author to select existing information for aggregation with newly recorded information for the purpose of generating a new artifact.
  @JsonValue('composer')
  composer,
  ;

  @override
  String toString() {
    switch (this) {
      case enterer:
        return 'enterer';
      case performer:
        return 'performer';
      case author:
        return 'author';
      case verifier:
        return 'verifier';
      case attester:
        return 'attester';
      case informant:
        return 'informant';
      case custodian:
        return 'custodian';
      case assembler:
        return 'assembler';
      case composer:
        return 'composer';
    }
  }

  String toJson() => toString();
  ProvenanceParticipantType fromString(String str) {
    switch (str) {
      case 'enterer':
        return ProvenanceParticipantType.enterer;
      case 'performer':
        return ProvenanceParticipantType.performer;
      case 'author':
        return ProvenanceParticipantType.author;
      case 'verifier':
        return ProvenanceParticipantType.verifier;
      case 'attester':
        return ProvenanceParticipantType.attester;
      case 'informant':
        return ProvenanceParticipantType.informant;
      case 'custodian':
        return ProvenanceParticipantType.custodian;
      case 'assembler':
        return ProvenanceParticipantType.assembler;
      case 'composer':
        return ProvenanceParticipantType.composer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ProvenanceParticipantType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
