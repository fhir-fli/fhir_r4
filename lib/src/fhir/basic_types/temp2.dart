// ignore_for_file: invalid_annotation_target

import 'package:objectbox/objectbox.dart';

@Entity()
class TempClass2 {
  @Id()
  int id;
  String? name;

  TempClass2({this.id = 0, this.name});
}
