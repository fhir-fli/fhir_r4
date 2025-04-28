import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlConcept implements CqlType {
  String? display;
  List<CqlCode> codes = <CqlCode>[];

  CqlConcept({this.display, List<CqlCode>? codes})
      : codes = codes ?? <CqlCode>[];

  factory CqlConcept.fromJson(Map<String, dynamic> json) {
    return CqlConcept(
      display: json['display'],
      codes: json['codes'] != null
          ? (json['codes'] as List).map((e) => CqlCode.fromJson(e)).toList()
          : null,
    );
  }

  CqlConcept copyWith({
    String? display,
    List<CqlCode>? codes,
  }) =>
      CqlConcept(display: display ?? this.display, codes: codes ?? this.codes);

  @override
  bool equivalent(Object other) {
    if (other is CqlConcept) {
      final otherCodes = other.codes.toList();
      for (CqlCode code in codes) {
        final index =
            otherCodes.indexWhere((element) => element.equivalent(code));
        if (index == -1) {
          return false;
        } else {
          otherCodes.removeAt(index);
        }
      }
      return otherCodes.isEmpty;
    } else {
      return false;
    }
  }

  @override
  bool equal(Object other) {
    if (other is CqlConcept) {
      final otherCodes = other.codes.toList();
      for (CqlCode code in codes) {
        final index = otherCodes.indexWhere((element) => element.equal(code));
        if (index == -1) {
          return false;
        } else {
          otherCodes.removeAt(index);
        }
      }
      return otherCodes.isEmpty;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'CqlConcept(display: $display, codes: $codes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CqlConcept &&
          other.display == display &&
          other.codes == codes;
    }
  }

  @override
  int get hashCode {
    return display.hashCode ^ codes.hashCode;
  }
}
