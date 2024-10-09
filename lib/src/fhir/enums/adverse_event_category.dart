/// Overall categorization of the event, e.g. product-related or situational.
enum AdverseEventCategory {
  /// Display: Product Problem
  /// Definition: The adverse event pertains to a product problem.
  product_problem,

  /// Display: Product Quality
  /// Definition: The adverse event pertains to product quality.
  product_quality,

  /// Display: Product Use Error
  /// Definition: The adverse event pertains to a product use error.
  product_use_error,

  /// Display: Wrong Dose
  /// Definition: The adverse event pertains to a wrong dose.
  wrong_dose,

  /// Display: Incorrect Prescribing Information
  /// Definition: The adverse event pertains to incorrect perscribing information.
  incorrect_prescribing_information,

  /// Display: Wrong Technique
  /// Definition: The adverse event pertains to a wrong technique.
  wrong_technique,

  /// Display: Wrong Route of Administration
  /// Definition: The adverse event pertains to a wrong route of administration.
  wrong_route_of_administration,

  /// Display: Wrong Rate
  /// Definition: The adverse event pertains to a wrong rate.
  wrong_rate,

  /// Display: Wrong Duration
  /// Definition: The adverse event pertains to a wrong duration.
  wrong_duration,

  /// Display: Wrong Time
  /// Definition: The adverse event pertains to a wrong time.
  wrong_time,

  /// Display: Expired Drug
  /// Definition: The adverse event pertains to an expired drug.
  expired_drug,

  /// Display: Medical Device Use Error
  /// Definition: The adverse event pertains to a medical device use error.
  medical_device_use_error,

  /// Display: Problem with Different Manufacturer of Same Medicine
  /// Definition: The adverse event pertains to a problem with a different manufacturer of the same medication.
  problem_different_manufacturer,

  /// Display: Unsafe Physical Environment
  /// Definition: The adverse event pertains to an unsafe physical environment.
  unsafe_physical_environment,
  ;

  @override
  String toString() {
    switch (this) {
      case product_problem:
        return 'product-problem';
      case product_quality:
        return 'product-quality';
      case product_use_error:
        return 'product-use-error';
      case wrong_dose:
        return 'wrong-dose';
      case incorrect_prescribing_information:
        return 'incorrect-prescribing-information';
      case wrong_technique:
        return 'wrong-technique';
      case wrong_route_of_administration:
        return 'wrong-route-of-administration';
      case wrong_rate:
        return 'wrong-rate';
      case wrong_duration:
        return 'wrong-duration';
      case wrong_time:
        return 'wrong-time';
      case expired_drug:
        return 'expired-drug';
      case medical_device_use_error:
        return 'medical-device-use-error';
      case problem_different_manufacturer:
        return 'problem-different-manufacturer';
      case unsafe_physical_environment:
        return 'unsafe-physical-environment';
    }
  }

  String toJson() => toString();
  static AdverseEventCategory fromString(String str) {
    switch (str) {
      case 'product-problem':
        return AdverseEventCategory.product_problem;
      case 'product-quality':
        return AdverseEventCategory.product_quality;
      case 'product-use-error':
        return AdverseEventCategory.product_use_error;
      case 'wrong-dose':
        return AdverseEventCategory.wrong_dose;
      case 'incorrect-prescribing-information':
        return AdverseEventCategory.incorrect_prescribing_information;
      case 'wrong-technique':
        return AdverseEventCategory.wrong_technique;
      case 'wrong-route-of-administration':
        return AdverseEventCategory.wrong_route_of_administration;
      case 'wrong-rate':
        return AdverseEventCategory.wrong_rate;
      case 'wrong-duration':
        return AdverseEventCategory.wrong_duration;
      case 'wrong-time':
        return AdverseEventCategory.wrong_time;
      case 'expired-drug':
        return AdverseEventCategory.expired_drug;
      case 'medical-device-use-error':
        return AdverseEventCategory.medical_device_use_error;
      case 'problem-different-manufacturer':
        return AdverseEventCategory.problem_different_manufacturer;
      case 'unsafe-physical-environment':
        return AdverseEventCategory.unsafe_physical_environment;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AdverseEventCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
