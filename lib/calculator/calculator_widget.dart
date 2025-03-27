import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'calculator_model.dart';
export 'calculator_model.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({super.key});

  static String routeName = 'Calculator';
  static String routePath = '/calculator';

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  late CalculatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalculatorModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController?.text = '0';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 2.0,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x3C3C434A),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    FFAppState().operations =
                                        _model.textController.text;
                                    safeSetState(() {});
                                  },
                                ),
                                onFieldSubmitted: (_) async {
                                  FFAppState().operations =
                                      _model.textController.text;
                                  safeSetState(() {});
                                  _model.actionResultCopy =
                                      await actions.evaluateExpression(
                                    FFAppState().operations,
                                  );
                                  FFAppState().operations =
                                      _model.actionResultCopy!.toString();
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textController?.text =
                                        FFAppState().operations;
                                  });

                                  safeSetState(() {});
                                },
                                autofocus: false,
                                textInputAction: TextInputAction.send,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      letterSpacing: 0.0,
                                    ),
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.62,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Divider(
                          thickness: 2.0,
                          color: Color(0x3C3C434A),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}(';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '(',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations})';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: ')',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}^';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '^',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}*';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '×',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}7';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '7',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}8';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '8',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}9';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '9',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}/';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '/',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}4';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '4',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}5';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '5',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}6';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '6',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}+';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '+',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}1';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '1',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}2';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '2',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}3';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '3',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}-';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '-',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF007AFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations = '';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: 'C',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFFF0026),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}0';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '0',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().operations =
                                    '${FFAppState().operations}.';
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();
                              },
                              text: '.',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF101518),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.actionResult =
                                    await actions.evaluateExpression(
                                  FFAppState().operations,
                                );
                                FFAppState().operations =
                                    _model.actionResult!.toString();
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textController?.text =
                                      FFAppState().operations;
                                });
                                // Vibrate
                                HapticFeedback.vibrate();

                                safeSetState(() {});
                              },
                              text: '=',
                              options: FFButtonOptions(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF00CA4D),
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
