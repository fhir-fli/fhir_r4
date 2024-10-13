/// This value set includes sample Information Category codes.
enum ClaimInformationCategoryCodes {
  /// Display: Information
  /// Definition: Codes conveying additional situation and condition information.
  info,

  /// Display: Discharge
  /// Definition: Discharge status and discharge to locations.
  discharge,

  /// Display: Onset
  /// Definition: Period, start or end dates of aspects of the Condition.
  onset,

  /// Display: Related Services
  /// Definition: Nature and date of the related event e.g. Last exam, service, X-ray etc.
  related,

  /// Display: Exception
  /// Definition: Insurance policy exceptions.
  exception,

  /// Display: Materials Forwarded
  /// Definition: Materials being forwarded, e.g. Models, molds, images, documents.
  material,

  /// Display: Attachment
  /// Definition: Materials attached such as images, documents and resources.
  attachment,

  /// Display: Missing Tooth
  /// Definition: Teeth which are missing for any reason, for example: prior extraction, never developed.
  missingtooth,

  /// Display: Prosthesis
  /// Definition: The type of prosthesis and date of supply if a previously supplied prosthesis.
  prosthesis,

  /// Display: Other
  /// Definition: Other information identified by the type.system.
  other,

  /// Display: Hospitalized
  /// Definition: An indication that the patient was hospitalized, the period if known otherwise a Yes/No (boolean).
  hospitalized,

  /// Display: EmploymentImpacted
  /// Definition: An indication that the patient was unable to work, the period if known otherwise a Yes/No (boolean).
  employmentimpacted,

  /// Display: External Caause
  /// Definition: The external cause of an illness or injury.
  externalcause,

  /// Display: Patient Reason for Visit
  /// Definition: The reason for the patient visit.
  patientreasonforvisit,
  ;

  @override
  String toString() {
    switch (this) {
      case info:
        return 'info';
      case discharge:
        return 'discharge';
      case onset:
        return 'onset';
      case related:
        return 'related';
      case exception:
        return 'exception';
      case material:
        return 'material';
      case attachment:
        return 'attachment';
      case missingtooth:
        return 'missingtooth';
      case prosthesis:
        return 'prosthesis';
      case other:
        return 'other';
      case hospitalized:
        return 'hospitalized';
      case employmentimpacted:
        return 'employmentimpacted';
      case externalcause:
        return 'externalcause';
      case patientreasonforvisit:
        return 'patientreasonforvisit';
    }
  }

  /// Returns a [String] from a [ClaimInformationCategoryCodes] enum.
  String toJson() => toString();

  /// Returns a [ClaimInformationCategoryCodes] from a [String] enum.
  static ClaimInformationCategoryCodes fromString(String str) {
    switch (str) {
      case 'info':
        return ClaimInformationCategoryCodes.info;
      case 'discharge':
        return ClaimInformationCategoryCodes.discharge;
      case 'onset':
        return ClaimInformationCategoryCodes.onset;
      case 'related':
        return ClaimInformationCategoryCodes.related;
      case 'exception':
        return ClaimInformationCategoryCodes.exception;
      case 'material':
        return ClaimInformationCategoryCodes.material;
      case 'attachment':
        return ClaimInformationCategoryCodes.attachment;
      case 'missingtooth':
        return ClaimInformationCategoryCodes.missingtooth;
      case 'prosthesis':
        return ClaimInformationCategoryCodes.prosthesis;
      case 'other':
        return ClaimInformationCategoryCodes.other;
      case 'hospitalized':
        return ClaimInformationCategoryCodes.hospitalized;
      case 'employmentimpacted':
        return ClaimInformationCategoryCodes.employmentimpacted;
      case 'externalcause':
        return ClaimInformationCategoryCodes.externalcause;
      case 'patientreasonforvisit':
        return ClaimInformationCategoryCodes.patientreasonforvisit;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ClaimInformationCategoryCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ClaimInformationCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
