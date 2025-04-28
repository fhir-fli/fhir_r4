import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Represents the CqlToElmInfo type
class CqlToElmInfo extends CqlToElmBase {
  /// translatorOptions attribute
  String? translatorOptions;

  /// translatorVersion attribute
  String? translatorVersion;

  String? signatureLevel;

  CqlToElmInfo({
    this.translatorVersion = '2.11.0', //'0.0.0-dev1
    this.translatorOptions,
    this.signatureLevel,
  });

  factory CqlToElmInfo.fromJson(Map<String, dynamic> json) {
    return CqlToElmInfo(
      translatorVersion: json['translatorVersion'],
      translatorOptions: json['translatorOptions'],
      signatureLevel: json['signatureLevel'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (translatorVersion != null) 'translatorVersion': translatorVersion,
        if (translatorOptions != null) 'translatorOptions': translatorOptions,
        if (signatureLevel != null) 'signatureLevel': signatureLevel,
      };

  String get type => 'CqlToElmInfo';
}
