import 'package:json_annotation/json_annotation.dart';

/// Event Types for Audit Events - defined by DICOM with some FHIR specific additions.
enum AuditEventID {
  @JsonValue('110100')
  value110100,
  @JsonValue('110101')
  value110101,
  @JsonValue('110102')
  value110102,
  @JsonValue('110103')
  value110103,
  @JsonValue('110104')
  value110104,
  @JsonValue('110105')
  value110105,
  @JsonValue('110106')
  value110106,
  @JsonValue('110107')
  value110107,
  @JsonValue('110108')
  value110108,
  @JsonValue('110109')
  value110109,
  @JsonValue('110110')
  value110110,
  @JsonValue('110111')
  value110111,
  @JsonValue('110112')
  value110112,
  @JsonValue('110113')
  value110113,
  @JsonValue('110114')
  value110114,

  /// Display: RESTful Operation
  /// Definition: Audit Event: Execution of a RESTful operation as defined by FHIR.
  @JsonValue('rest')
  rest,

  /// Display: Access/View Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to obtain and open a record entry for inspection or review.
  @JsonValue('access')
  access,

  /// Display: Add Legal Hold Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to tag or otherwise indicate special access management and suspension of record entry deletion/destruction, if deemed relevant to a lawsuit or which are reasonably anticipated to be relevant or to fulfill organizational policy under the legal doctrine of “duty to preserve”.
  @JsonValue('hold')
  hold,

  /// Display: Amend (Update) Record Lifecycle Event
  /// Definition: Occurs when an agent makes any change to record entry content currently residing in storage considered permanent (persistent).
  @JsonValue('amend')
  amend,

  /// Display: Archive Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to create and move archive artifacts containing record entry content, typically to long-term offline storage.
  @JsonValue('archive')
  archive,

  /// Display: Attest Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to capture the agent’s digital signature (or equivalent indication) during formal validation of record entry content.
  @JsonValue('attest')
  attest,

  /// Display: Decrypt Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to decode record entry content from a cipher.
  @JsonValue('decrypt')
  decrypt,

  /// Display: De-Identify (Anononymize) Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to scrub record entry content to reduce the association between a set of identifying data and the data subject in a way that might or might not be reversible.
  @JsonValue('deidentify')
  deidentify,

  /// Display: Deprecate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to tag record entry(ies) as obsolete, erroneous or untrustworthy, to warn against its future use.
  @JsonValue('deprecate')
  deprecate,

  /// Display: Destroy/Delete Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to permanently erase record entry content from the system.
  @JsonValue('destroy')
  destroy,

  /// Display: Disclose Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to release, transfer, provision access to, or otherwise divulge record entry content.
  @JsonValue('disclose')
  disclose,

  /// Display: Encrypt Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to encode record entry content in a cipher.
  @JsonValue('encrypt')
  encrypt,

  /// Display: Extract Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to selectively pull out a subset of record entry content, based on explicit criteria.
  @JsonValue('extract')
  extract,

  /// Display: Link Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to connect related record entries.
  @JsonValue('link')
  link,

  /// Display: Merge Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to combine or join content from two or more record entries, resulting in a single logical record entry.
  @JsonValue('merge')
  merge,

  /// Display: Originate/Retain Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to: a) initiate capture of potential record content, and b) incorporate that content into the storage considered a permanent part of the health record.
  @JsonValue('originate')
  originate,

  /// Display: Pseudonymize Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to remove record entry content to reduce the association between a set of identifying data and the data subject in a way that may be reversible.
  @JsonValue('pseudonymize')
  pseudonymize,

  /// Display: Re-activate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to recreate or restore full status to record entries previously deleted or deprecated.
  @JsonValue('reactivate')
  reactivate,

  /// Display: Receive/Retain Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to a) initiate capture of data content from elsewhere, and b) incorporate that content into the storage considered a permanent part of the health record.
  @JsonValue('receive')
  receive,

  /// Display: Re-identify Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to restore information to data that allows identification of information source and/or information subject.
  @JsonValue('reidentify')
  reidentify,

  /// Display: Remove Legal Hold Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to remove a tag or other cues for special access management had required to fulfill organizational policy under the legal doctrine of “duty to preserve”.
  @JsonValue('unhold')
  unhold,

  /// Display: Report (Output) Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to produce and deliver record entry content in a particular form and manner.
  @JsonValue('report')
  report,

  /// Display: Restore Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to recreate record entries and their content from a previous created archive artefact.
  @JsonValue('restore')
  restore,

  /// Display: Transform/Translate Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to change the form, language or code system used to represent record entry content.
  @JsonValue('transform')
  transform,

  /// Display: Transmit Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to send record entry content from one (EHR/PHR/other) system to another.
  @JsonValue('transmit')
  transmit,

  /// Display: Unlink Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to disconnect two or more record entries previously connected, rendering them separate (disconnected) again.
  @JsonValue('unlink')
  unlink,

  /// Display: Unmerge Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to reverse a previous record entry merge operation, rendering them separate again.
  @JsonValue('unmerge')
  unmerge,

  /// Display: Verify Record Lifecycle Event
  /// Definition: Occurs when an agent causes the system to confirm compliance of data or data objects with regulations, requirements, specifications, or other imposed conditions based on organizational policy.
  @JsonValue('verify')
  verify,
  ;

  @override
  String toString() {
    switch (this) {
      case value110100:
        return '110100';
      case value110101:
        return '110101';
      case value110102:
        return '110102';
      case value110103:
        return '110103';
      case value110104:
        return '110104';
      case value110105:
        return '110105';
      case value110106:
        return '110106';
      case value110107:
        return '110107';
      case value110108:
        return '110108';
      case value110109:
        return '110109';
      case value110110:
        return '110110';
      case value110111:
        return '110111';
      case value110112:
        return '110112';
      case value110113:
        return '110113';
      case value110114:
        return '110114';
      case rest:
        return 'rest';
      case access:
        return 'access';
      case hold:
        return 'hold';
      case amend:
        return 'amend';
      case archive:
        return 'archive';
      case attest:
        return 'attest';
      case decrypt:
        return 'decrypt';
      case deidentify:
        return 'deidentify';
      case deprecate:
        return 'deprecate';
      case destroy:
        return 'destroy';
      case disclose:
        return 'disclose';
      case encrypt:
        return 'encrypt';
      case extract:
        return 'extract';
      case link:
        return 'link';
      case merge:
        return 'merge';
      case originate:
        return 'originate';
      case pseudonymize:
        return 'pseudonymize';
      case reactivate:
        return 'reactivate';
      case receive:
        return 'receive';
      case reidentify:
        return 'reidentify';
      case unhold:
        return 'unhold';
      case report:
        return 'report';
      case restore:
        return 'restore';
      case transform:
        return 'transform';
      case transmit:
        return 'transmit';
      case unlink:
        return 'unlink';
      case unmerge:
        return 'unmerge';
      case verify:
        return 'verify';
    }
  }

  String toJson() => toString();
  AuditEventID fromString(String str) {
    switch (str) {
      case '110100':
        return AuditEventID.value110100;
      case '110101':
        return AuditEventID.value110101;
      case '110102':
        return AuditEventID.value110102;
      case '110103':
        return AuditEventID.value110103;
      case '110104':
        return AuditEventID.value110104;
      case '110105':
        return AuditEventID.value110105;
      case '110106':
        return AuditEventID.value110106;
      case '110107':
        return AuditEventID.value110107;
      case '110108':
        return AuditEventID.value110108;
      case '110109':
        return AuditEventID.value110109;
      case '110110':
        return AuditEventID.value110110;
      case '110111':
        return AuditEventID.value110111;
      case '110112':
        return AuditEventID.value110112;
      case '110113':
        return AuditEventID.value110113;
      case '110114':
        return AuditEventID.value110114;
      case 'rest':
        return AuditEventID.rest;
      case 'access':
        return AuditEventID.access;
      case 'hold':
        return AuditEventID.hold;
      case 'amend':
        return AuditEventID.amend;
      case 'archive':
        return AuditEventID.archive;
      case 'attest':
        return AuditEventID.attest;
      case 'decrypt':
        return AuditEventID.decrypt;
      case 'deidentify':
        return AuditEventID.deidentify;
      case 'deprecate':
        return AuditEventID.deprecate;
      case 'destroy':
        return AuditEventID.destroy;
      case 'disclose':
        return AuditEventID.disclose;
      case 'encrypt':
        return AuditEventID.encrypt;
      case 'extract':
        return AuditEventID.extract;
      case 'link':
        return AuditEventID.link;
      case 'merge':
        return AuditEventID.merge;
      case 'originate':
        return AuditEventID.originate;
      case 'pseudonymize':
        return AuditEventID.pseudonymize;
      case 'reactivate':
        return AuditEventID.reactivate;
      case 'receive':
        return AuditEventID.receive;
      case 'reidentify':
        return AuditEventID.reidentify;
      case 'unhold':
        return AuditEventID.unhold;
      case 'report':
        return AuditEventID.report;
      case 'restore':
        return AuditEventID.restore;
      case 'transform':
        return AuditEventID.transform;
      case 'transmit':
        return AuditEventID.transmit;
      case 'unlink':
        return AuditEventID.unlink;
      case 'unmerge':
        return AuditEventID.unmerge;
      case 'verify':
        return AuditEventID.verify;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AuditEventID fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
