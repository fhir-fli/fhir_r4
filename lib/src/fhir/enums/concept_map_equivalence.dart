/// The degree of equivalence between concepts.
enum ConceptMapEquivalence {
  /// Display: Related To
  /// Definition: The concepts are related to each other, and have at least some overlap in meaning, but the exact relationship is not known.
  relatedto,

  /// Display: Equivalent
  /// Definition: The definitions of the concepts mean the same thing (including when structural implications of meaning are considered) (i.e. extensionally identical).
  equivalent,

  /// Display: Equal
  /// Definition: The definitions of the concepts are exactly the same (i.e. only grammatical differences) and structural implications of meaning are identical or irrelevant (i.e. intentionally identical).
  equal,

  /// Display: Wider
  /// Definition: The target mapping is wider in meaning than the source concept.
  wider,

  /// Display: Subsumes
  /// Definition: The target mapping subsumes the meaning of the source concept (e.g. the source is-a target).
  subsumes,

  /// Display: Narrower
  /// Definition: The target mapping is narrower in meaning than the source concept. The sense in which the mapping is narrower SHALL be described in the comments in this case, and applications should be careful when attempting to use these mappings operationally.
  narrower,

  /// Display: Specializes
  /// Definition: The target mapping specializes the meaning of the source concept (e.g. the target is-a source).
  specializes,

  /// Display: Inexact
  /// Definition: The target mapping overlaps with the source concept, but both source and target cover additional meaning, or the definitions are imprecise and it is uncertain whether they have the same boundaries to their meaning. The sense in which the mapping is inexact SHALL be described in the comments in this case, and applications should be careful when attempting to use these mappings operationally.
  inexact,

  /// Display: Unmatched
  /// Definition: There is no match for this concept in the target code system.
  unmatched,

  /// Display: Disjoint
  /// Definition: This is an explicit assertion that there is no mapping between the source and target concept.
  disjoint,
  ;

  @override
  String toString() {
    switch (this) {
      case relatedto:
        return 'relatedto';
      case equivalent:
        return 'equivalent';
      case equal:
        return 'equal';
      case wider:
        return 'wider';
      case subsumes:
        return 'subsumes';
      case narrower:
        return 'narrower';
      case specializes:
        return 'specializes';
      case inexact:
        return 'inexact';
      case unmatched:
        return 'unmatched';
      case disjoint:
        return 'disjoint';
    }
  }

  /// Returns a [String] from a [ConceptMapEquivalence] enum.
  String toJson() => toString();

  /// Returns a [ConceptMapEquivalence] from a [String] enum.
  static ConceptMapEquivalence fromString(String str) {
    switch (str) {
      case 'relatedto':
        return ConceptMapEquivalence.relatedto;
      case 'equivalent':
        return ConceptMapEquivalence.equivalent;
      case 'equal':
        return ConceptMapEquivalence.equal;
      case 'wider':
        return ConceptMapEquivalence.wider;
      case 'subsumes':
        return ConceptMapEquivalence.subsumes;
      case 'narrower':
        return ConceptMapEquivalence.narrower;
      case 'specializes':
        return ConceptMapEquivalence.specializes;
      case 'inexact':
        return ConceptMapEquivalence.inexact;
      case 'unmatched':
        return ConceptMapEquivalence.unmatched;
      case 'disjoint':
        return ConceptMapEquivalence.disjoint;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConceptMapEquivalence] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConceptMapEquivalence fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
