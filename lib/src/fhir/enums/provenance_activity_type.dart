/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
enum ProvenanceActivityType {
  LA,
  ANONY,
  DEID,
  MASK,
  LABEL,
  PSEUD,
  CREATE,
  DELETE,
  UPDATE,
  APPEND,
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

  /// Returns a [String] from a [ProvenanceActivityType] enum.
  String toJson() => toString();

  /// Returns a [ProvenanceActivityType] from a [String] enum.
  static ProvenanceActivityType fromString(String str) {
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

  /// Returns a [ProvenanceActivityType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ProvenanceActivityType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
