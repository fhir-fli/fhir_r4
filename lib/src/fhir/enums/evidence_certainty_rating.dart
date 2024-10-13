/// The assessment of quality, confidence, or certainty.
enum EvidenceCertaintyRating {
  /// Display: High quality
  /// Definition: High quality evidence.
  high,

  /// Display: Moderate quality
  /// Definition: Moderate quality evidence.
  moderate,

  /// Display: Low quality
  /// Definition: Low quality evidence.
  low,

  /// Display: Very low quality
  /// Definition: Very low quality evidence.
  very_low,

  /// Display: no serious concern
  /// Definition: no serious concern.
  no_concern,

  /// Display: serious concern
  /// Definition: serious concern.
  serious_concern,

  /// Display: very serious concern
  /// Definition: very serious concern.
  very_serious_concern,

  /// Display: extremely serious concern
  /// Definition: extremely serious concern.
  extremely_serious_concern,

  /// Display: present
  /// Definition: possible reason for increasing quality rating was checked and found to be present.
  present,

  /// Display: absent
  /// Definition: possible reason for increasing quality rating was checked and found to be absent.
  absent,

  /// Display: no change to rating
  /// Definition: no change to quality rating.
  no_change,

  /// Display: reduce rating: -1
  /// Definition: reduce quality rating by 1.
  downcode1,

  /// Display: reduce rating: -2
  /// Definition: reduce quality rating by 2.
  downcode2,

  /// Display: reduce rating: -3
  /// Definition: reduce quality rating by 3.
  downcode3,

  /// Display: increase rating: +1
  /// Definition: increase quality rating by 1.
  upcode1,

  /// Display: increase rating: +2
  /// Definition: increase quality rating by 2.
  upcode2,
  ;

  @override
  String toString() {
    switch (this) {
      case high:
        return 'high';
      case moderate:
        return 'moderate';
      case low:
        return 'low';
      case very_low:
        return 'very-low';
      case no_concern:
        return 'no-concern';
      case serious_concern:
        return 'serious-concern';
      case very_serious_concern:
        return 'very-serious-concern';
      case extremely_serious_concern:
        return 'extremely-serious-concern';
      case present:
        return 'present';
      case absent:
        return 'absent';
      case no_change:
        return 'no-change';
      case downcode1:
        return 'downcode1';
      case downcode2:
        return 'downcode2';
      case downcode3:
        return 'downcode3';
      case upcode1:
        return 'upcode1';
      case upcode2:
        return 'upcode2';
    }
  }

  /// Returns a [String] from a [EvidenceCertaintyRating] enum.
  String toJson() => toString();

  /// Returns a [EvidenceCertaintyRating] from a [String] enum.
  static EvidenceCertaintyRating fromString(String str) {
    switch (str) {
      case 'high':
        return EvidenceCertaintyRating.high;
      case 'moderate':
        return EvidenceCertaintyRating.moderate;
      case 'low':
        return EvidenceCertaintyRating.low;
      case 'very-low':
        return EvidenceCertaintyRating.very_low;
      case 'no-concern':
        return EvidenceCertaintyRating.no_concern;
      case 'serious-concern':
        return EvidenceCertaintyRating.serious_concern;
      case 'very-serious-concern':
        return EvidenceCertaintyRating.very_serious_concern;
      case 'extremely-serious-concern':
        return EvidenceCertaintyRating.extremely_serious_concern;
      case 'present':
        return EvidenceCertaintyRating.present;
      case 'absent':
        return EvidenceCertaintyRating.absent;
      case 'no-change':
        return EvidenceCertaintyRating.no_change;
      case 'downcode1':
        return EvidenceCertaintyRating.downcode1;
      case 'downcode2':
        return EvidenceCertaintyRating.downcode2;
      case 'downcode3':
        return EvidenceCertaintyRating.downcode3;
      case 'upcode1':
        return EvidenceCertaintyRating.upcode1;
      case 'upcode2':
        return EvidenceCertaintyRating.upcode2;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EvidenceCertaintyRating] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EvidenceCertaintyRating fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
