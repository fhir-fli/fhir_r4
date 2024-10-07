import 'package:json_annotation/json_annotation.dart';

/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
enum ProvenanceActivityType {
  @JsonValue('LA')
  LA,
  @JsonValue('ANONY')
  ANONY,
  @JsonValue('DEID')
  DEID,
  @JsonValue('MASK')
  MASK,
  @JsonValue('LABEL')
  LABEL,
  @JsonValue('PSEUD')
  PSEUD,
  @JsonValue('CREATE')
  CREATE,
  @JsonValue('DELETE')
  DELETE,
  @JsonValue('UPDATE')
  UPDATE,
  @JsonValue('APPEND')
  APPEND,
  @JsonValue('NULLIFY')
  NULLIFY,
  ;

  @override
  String toString() {
    switch (this) {
      case LA:
        return 'LA';
      case ANONY:
        return 'ANONY';
      case DEID:
        return 'DEID';
      case MASK:
        return 'MASK';
      case LABEL:
        return 'LABEL';
      case PSEUD:
        return 'PSEUD';
      case CREATE:
        return 'CREATE';
      case DELETE:
        return 'DELETE';
      case UPDATE:
        return 'UPDATE';
      case APPEND:
        return 'APPEND';
      case NULLIFY:
        return 'NULLIFY';
    }
  }

  String toJson() => toString();
  ProvenanceActivityType fromString(String str) {
    switch (str) {
      case 'LA':
        return ProvenanceActivityType.LA;
      case 'ANONY':
        return ProvenanceActivityType.ANONY;
      case 'DEID':
        return ProvenanceActivityType.DEID;
      case 'MASK':
        return ProvenanceActivityType.MASK;
      case 'LABEL':
        return ProvenanceActivityType.LABEL;
      case 'PSEUD':
        return ProvenanceActivityType.PSEUD;
      case 'CREATE':
        return ProvenanceActivityType.CREATE;
      case 'DELETE':
        return ProvenanceActivityType.DELETE;
      case 'UPDATE':
        return ProvenanceActivityType.UPDATE;
      case 'APPEND':
        return ProvenanceActivityType.APPEND;
      case 'NULLIFY':
        return ProvenanceActivityType.NULLIFY;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ProvenanceActivityType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
