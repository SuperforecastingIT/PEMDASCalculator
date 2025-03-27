import '/flutter_flow/flutter_flow_util.dart';
import 'calculator_widget.dart' show CalculatorWidget;
import 'package:flutter/material.dart';

class CalculatorModel extends FlutterFlowModel<CalculatorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - evaluateExpression] action in TextField widget.
  double? actionResultCopy;
  // Stores action output result for [Custom Action - evaluateExpression] action in ButtonEqual widget.
  double? actionResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
