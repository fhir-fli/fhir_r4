import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlCode implements CqlType {
  String? code;
  String? display;
  String? system;
  String? version;

  CqlCode({this.code, this.display, this.system, this.version});

  factory CqlCode.fromJson(Map<String, dynamic> json) {
    return CqlCode(
      code: json['code'],
      display: json['display'],
      system: json['system'],
      version: json['version'],
    );
  }

  @override
  bool equivalent(Object other) {
    if (other is CqlCode) {
      return code == other.code && system == other.system;
    } else {
      return false;
    }
  }

  @override
  bool equal(Object other) {
    if (other is CqlCode) {
      return code == other.code &&
          display == other.display &&
          system == other.system &&
          version == other.version;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return "CqlCode{ code: $code, system: $system, version: $version, display: $display }";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CqlCode &&
          other.code == code &&
          other.display == display &&
          other.system == system &&
          other.version == version;
    }
  }

  @override
  int get hashCode {
    return code.hashCode ^
        display.hashCode ^
        system.hashCode ^
        version.hashCode;
  }

  factory CqlCode.fromCodeDef(CodeDef codeDef, String? codeSystemDef) {
    return CqlCode(
      code: codeDef.id,
      display: codeDef.display,
      system: codeSystemDef ?? codeDef.codeSystem?.name,
    );
  }
}
