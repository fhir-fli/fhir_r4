import 'package:json_annotation/json_annotation.dart';

/// MedicationAdministration Performer Function Codes
enum MedicationAdministrationPerformerFunctionCodes {
  /// Display: Performer
  /// Definition: A person, non-person living subject, organization or device that who actually and principally carries out the action
  @JsonValue('performer')
  performer,
  /// Display: Verifier
  /// Definition: A person who verifies the correctness and appropriateness of the service (plan, order, event, etc.) and hence takes on accountability.
  @JsonValue('verifier')
  verifier,
  /// Display: Witness
  /// Definition: A person witnessing the action happening without doing anything. A witness is not necessarily aware, much less approves of anything stated in the service event. Example for a witness is students watching an operation or an advanced directive witness.
  @JsonValue('witness')
  witness,
;

@override
  String toString() {
      switch(this) {
        case performer: return 'performer';
        case verifier: return 'verifier';
        case witness: return 'witness';
      }
      }
String toJson() => toString();
  MedicationAdministrationPerformerFunctionCodes fromString(String str) {
    switch(str) {
      case 'performer': return MedicationAdministrationPerformerFunctionCodes.performer;
      case 'verifier': return MedicationAdministrationPerformerFunctionCodes.verifier;
      case 'witness': return MedicationAdministrationPerformerFunctionCodes.witness;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationAdministrationPerformerFunctionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
