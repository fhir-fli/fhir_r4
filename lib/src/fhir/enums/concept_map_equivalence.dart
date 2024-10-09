import 'package:json_annotation/json_annotation.dart';

/// The degree of equivalence between concepts.
enum ConceptMapEquivalence {
  /// Display: Related To
  /// Definition: The concepts are related to each other, and have at least some overlap in meaning, but the exact relationship is not known.
  @JsonValue('relatedto')
  relatedto,

  /// Display: Equivalent
  /// Definition: The definitions of the concepts mean the same thing (including when structural implications of meaning are considered) (i.e. extensionally identical).
  @JsonValue('equivalent')
  equivalent,

  /// Display: Equal
  /// Definition: The definitions of the concepts are exactly the same (i.e. only grammatical differences) and structural implications of meaning are identical or irrelevant (i.e. intentionally identical).
  @JsonValue('equal')
  equal,

  /// Display: Wider
  /// Definition: The target mapping is wider in meaning than the source concept.
  @JsonValue('wider')
  wider,

  /// Display: Subsumes
  /// Definition: The target mapping subsumes the meaning of the source concept (e.g. the source is-a target).
  @JsonValue('subsumes')
  subsumes,

  /// Display: Narrower
  /// Definition: The target mapping is narrower in meaning than the source concept. The sense in which the mapping is narrower SHALL be described in the comments in this case, and applications should be careful when attempting to use these mappings operationally.
  @JsonValue('narrower')
  narrower,

  /// Display: Specializes
  /// Definition: The target mapping specializes the meaning of the source concept (e.g. the target is-a source).
  @JsonValue('specializes')
  specializes,

  /// Display: Inexact
  /// Definition: The target mapping overlaps with the source concept, but both source and target cover additional meaning, or the definitions are imprecise and it is uncertain whether they have the same boundaries to their meaning. The sense in which the mapping is inexact SHALL be described in the comments in this case, and applications should be careful when attempting to use these mappings operationally.
  @JsonValue('inexact')
  inexact,

  /// Display: Unmatched
  /// Definition: There is no match for this concept in the target code system.
  @JsonValue('unmatched')
  unmatched,

  /// Display: Disjoint
  /// Definition: This is an explicit assertion that there is no mapping between the source and target concept.
  @JsonValue('disjoint')
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

  String toJson() => toString();
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

  static ConceptMapEquivalence fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
