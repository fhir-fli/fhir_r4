/// This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular target population.
enum ObservationReferenceRangeMeaningCodes {
  /// Display: Type
  /// Definition: General types of reference range.
  type,

  /// Display: Normal Range
  /// Definition: Values expected for a normal member of the relevant control population being measured. Typically each results producer such as a laboratory has specific normal ranges and they are usually defined as within two standard deviations from the mean and account for 95.45% of this population.
  normal,

  /// Display: Recommended Range
  /// Definition: The range that is recommended by a relevant professional body.
  recommended,

  /// Display: Treatment Range
  /// Definition: The range at which treatment would/should be considered.
  treatment,

  /// Display: Therapeutic Desired Level
  /// Definition: The optimal range for best therapeutic outcomes.
  therapeutic,

  /// Display: Pre Therapeutic Desired Level
  /// Definition: The optimal range for best therapeutic outcomes for a specimen taken immediately before administration.
  pre,

  /// Display: Post Therapeutic Desired Level
  /// Definition: The optimal range for best therapeutic outcomes for a specimen taken immediately after administration.
  post,

  /// Display: Endocrine
  /// Definition: Endocrine related states that change the expected value.
  endocrine,

  /// Display: Pre-Puberty
  /// Definition: An expected range in an individual prior to puberty.
  pre_puberty,

  /// Display: Follicular Stage
  /// Definition: An expected range in an individual during the follicular stage of the cycle.
  follicular,

  /// Display: MidCycle
  /// Definition: An expected range in an individual during the midcycle stage of the cycle.
  midcycle,

  /// Display: Luteal
  /// Definition: An expected range in an individual during the luteal stage of the cycle.
  luteal,

  /// Display: Post-Menopause
  /// Definition: An expected range in an individual post-menopause.
  postmenopausal,
  ;

  @override
  String toString() {
    switch (this) {
      case type:
        return 'type';
      case normal:
        return 'normal';
      case recommended:
        return 'recommended';
      case treatment:
        return 'treatment';
      case therapeutic:
        return 'therapeutic';
      case pre:
        return 'pre';
      case post:
        return 'post';
      case endocrine:
        return 'endocrine';
      case pre_puberty:
        return 'pre-puberty';
      case follicular:
        return 'follicular';
      case midcycle:
        return 'midcycle';
      case luteal:
        return 'luteal';
      case postmenopausal:
        return 'postmenopausal';
    }
  }

  /// Returns a [String] from a [ObservationReferenceRangeMeaningCodes] enum.
  String toJson() => toString();

  /// Returns a [ObservationReferenceRangeMeaningCodes] from a [String] enum.
  static ObservationReferenceRangeMeaningCodes fromString(String str) {
    switch (str) {
      case 'type':
        return ObservationReferenceRangeMeaningCodes.type;
      case 'normal':
        return ObservationReferenceRangeMeaningCodes.normal;
      case 'recommended':
        return ObservationReferenceRangeMeaningCodes.recommended;
      case 'treatment':
        return ObservationReferenceRangeMeaningCodes.treatment;
      case 'therapeutic':
        return ObservationReferenceRangeMeaningCodes.therapeutic;
      case 'pre':
        return ObservationReferenceRangeMeaningCodes.pre;
      case 'post':
        return ObservationReferenceRangeMeaningCodes.post;
      case 'endocrine':
        return ObservationReferenceRangeMeaningCodes.endocrine;
      case 'pre-puberty':
        return ObservationReferenceRangeMeaningCodes.pre_puberty;
      case 'follicular':
        return ObservationReferenceRangeMeaningCodes.follicular;
      case 'midcycle':
        return ObservationReferenceRangeMeaningCodes.midcycle;
      case 'luteal':
        return ObservationReferenceRangeMeaningCodes.luteal;
      case 'postmenopausal':
        return ObservationReferenceRangeMeaningCodes.postmenopausal;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ObservationReferenceRangeMeaningCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ObservationReferenceRangeMeaningCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
