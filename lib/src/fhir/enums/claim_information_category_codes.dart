import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Information Category codes.
enum ClaimInformationCategoryCodes {
  /// Display: Information
  /// Definition: Codes conveying additional situation and condition information.
  @JsonValue('info')
  info,

  /// Display: Discharge
  /// Definition: Discharge status and discharge to locations.
  @JsonValue('discharge')
  discharge,

  /// Display: Onset
  /// Definition: Period, start or end dates of aspects of the Condition.
  @JsonValue('onset')
  onset,

  /// Display: Related Services
  /// Definition: Nature and date of the related event e.g. Last exam, service, X-ray etc.
  @JsonValue('related')
  related,

  /// Display: Exception
  /// Definition: Insurance policy exceptions.
  @JsonValue('exception')
  exception,

  /// Display: Materials Forwarded
  /// Definition: Materials being forwarded, e.g. Models, molds, images, documents.
  @JsonValue('material')
  material,

  /// Display: Attachment
  /// Definition: Materials attached such as images, documents and resources.
  @JsonValue('attachment')
  attachment,

  /// Display: Missing Tooth
  /// Definition: Teeth which are missing for any reason, for example: prior extraction, never developed.
  @JsonValue('missingtooth')
  missingtooth,

  /// Display: Prosthesis
  /// Definition: The type of prosthesis and date of supply if a previously supplied prosthesis.
  @JsonValue('prosthesis')
  prosthesis,

  /// Display: Other
  /// Definition: Other information identified by the type.system.
  @JsonValue('other')
  other,

  /// Display: Hospitalized
  /// Definition: An indication that the patient was hospitalized, the period if known otherwise a Yes/No (boolean).
  @JsonValue('hospitalized')
  hospitalized,

  /// Display: EmploymentImpacted
  /// Definition: An indication that the patient was unable to work, the period if known otherwise a Yes/No (boolean).
  @JsonValue('employmentimpacted')
  employmentimpacted,

  /// Display: External Caause
  /// Definition: The external cause of an illness or injury.
  @JsonValue('externalcause')
  externalcause,

  /// Display: Patient Reason for Visit
  /// Definition: The reason for the patient visit.
  @JsonValue('patientreasonforvisit')
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

  String toJson() => toString();
  ClaimInformationCategoryCodes fromString(String str) {
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

  ClaimInformationCategoryCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
