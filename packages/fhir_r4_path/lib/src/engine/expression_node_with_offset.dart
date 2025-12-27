// ignore_for_file: public_member_api_docs

import 'package:fhir_r4_path/fhir_r4_path.dart';

class ExpressionNodeWithOffset {
  ExpressionNodeWithOffset(this.offset, this.node);

  int offset;
  ExpressionNode node;

  int getOffset() {
    return offset;
  }

  ExpressionNode getNode() {
    return node;
  }
}
