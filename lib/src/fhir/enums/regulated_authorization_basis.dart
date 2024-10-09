/// A legal or regulatory framework against which an authorization is granted, or other reasons for it.
enum RegulatedAuthorizationBasis {
  /// Display: Full application
  Full,

  /// Display: New active substance
  NewSubstance,

  /// Display: Known active substance
  KnownSubstance,

  /// Display: Similar biological application
  SimilarBiological,

  /// Display: Well-established use application
  Well_establishedUse,

  /// Display: Traditional use registration for herbal medicinal product application
  TraditionalUse,

  /// Display: Bibliographical application (stand-alone)
  Bibliographical,

  /// Display: Known human blood/plasma derived ancillary medicinal substance
  KnownHumanBlood,

  /// Display: Authorisations for temporary use
  TemporaryUse,

  /// Display: Parallel traded products
  ParallelTrade,
  ;

  @override
  String toString() {
    switch (this) {
      case Full:
        return 'Full';
      case NewSubstance:
        return 'NewSubstance';
      case KnownSubstance:
        return 'KnownSubstance';
      case SimilarBiological:
        return 'SimilarBiological';
      case Well_establishedUse:
        return 'Well-establishedUse';
      case TraditionalUse:
        return 'TraditionalUse';
      case Bibliographical:
        return 'Bibliographical';
      case KnownHumanBlood:
        return 'KnownHumanBlood';
      case TemporaryUse:
        return 'TemporaryUse';
      case ParallelTrade:
        return 'ParallelTrade';
    }
  }

  String toJson() => toString();
  static RegulatedAuthorizationBasis fromString(String str) {
    switch (str) {
      case 'Full':
        return RegulatedAuthorizationBasis.Full;
      case 'NewSubstance':
        return RegulatedAuthorizationBasis.NewSubstance;
      case 'KnownSubstance':
        return RegulatedAuthorizationBasis.KnownSubstance;
      case 'SimilarBiological':
        return RegulatedAuthorizationBasis.SimilarBiological;
      case 'Well-establishedUse':
        return RegulatedAuthorizationBasis.Well_establishedUse;
      case 'TraditionalUse':
        return RegulatedAuthorizationBasis.TraditionalUse;
      case 'Bibliographical':
        return RegulatedAuthorizationBasis.Bibliographical;
      case 'KnownHumanBlood':
        return RegulatedAuthorizationBasis.KnownHumanBlood;
      case 'TemporaryUse':
        return RegulatedAuthorizationBasis.TemporaryUse;
      case 'ParallelTrade':
        return RegulatedAuthorizationBasis.ParallelTrade;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static RegulatedAuthorizationBasis fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
