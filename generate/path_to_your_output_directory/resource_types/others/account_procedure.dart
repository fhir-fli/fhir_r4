import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Account_Procedure] A financial tool for tracking value accrued for a
/// particular purpose.  In the healthcare field, used to track charges for a
/// patient, cost centers, etc.

@freezed
class Account_Procedure with _$Account_Procedure {
  const Account_Procedure._();

  const factory Account_Procedure({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [sequence] Ranking of the procedure (for each type).

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [code] The procedure relevant to the account.

    @JsonKey(name: 'code') CodeableReference? code,
/// [dateOfService] Date of the procedure when using a coded procedure. If
/// using a reference to a procedure, then the date on the procedure should be
/// used.

    @JsonKey(name: 'dateOfService') FhirDateTime? dateOfService,
/// [_dateOfService] Extensions for dateOfService

    @JsonKey(name: '_dateOfService') PrimitiveElement? dateOfServiceElement,
/// [type] How this procedure value should be used in charging the account.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [packageCode] The package code can be used to group procedures that may
/// be priced or delivered as a single product. Such as DRGs.

    @JsonKey(name: 'packageCode') List<List<CodeableConcept>>? packageCode,
/// [device] Any devices that were associated with the procedure relevant
/// to the account.

    @JsonKey(name: 'device') List<List<Reference>>? device,
  }) = _$Account_Procedure;

  @override
  String get fhirType => 'Account_Procedure';

  factory Account_Procedure.fromJson(Map<String, dynamic> json) =>
      _$Account_ProcedureFromJson(json);

  factory Account_Procedure.fromYaml(dynamic yaml) => yaml is String
      ? Account_Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Account_Procedure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Account_Procedure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Account_Procedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Account_ProcedureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
