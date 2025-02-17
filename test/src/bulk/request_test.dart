// ignore_for_file: invalid_annotation_target, always_specify_types

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('FHIR Bulk Request Patient:', () {
    test('Basic Patient Bulk Request', () async {
      final request = BulkRequestPatient(
        base: Uri.parse('http://hapi.fhir.org/baseR5'),
        headers: {'test': 'header'},
      );
      final response = await request.request();
      expect(response.indexWhere((e) => e is! Patient), -1);
    });
  });
}
