import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

class _CalculatorWidgetState extends State<CalculatorWidget>
    with TickerProviderStateMixin {
  late CalculatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasButtonTriggered1 = false;
  var hasButtonTriggered2 = false;
  var hasButtonTriggered3 = false;
  var hasButtonTriggered4 = false;
  var hasButtonTriggered5 = false;
  var hasButtonTriggered6 = false;
  var hasButtonTriggered7 = false;
  var hasButtonTriggered8 = false;
  var hasButtonTriggered9 = false;
  var hasButtonTriggered10 = false;
  var hasButtonTriggered11 = false;
  var hasButtonTriggered12 = false;
  var hasButtonTriggered13 = false;
  var hasButtonTriggered14 = false;
  var hasButtonTriggered15 = false;
  var hasButtonTriggered16 = false;
  var hasButtonTriggered17 = false;
  var hasButtonTriggered18 = false;
  var hasButtonTriggered19 = false;
  var hasButtonTriggered20 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalculatorModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'buttonOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation16': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation17': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation18': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation19': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation20': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          FlipEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation1'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered1 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation1']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation1']!,
                                hasBeenTriggered: hasButtonTriggered1),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation2'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered2 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation2']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation2']!,
                                hasBeenTriggered: hasButtonTriggered2),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation3'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered3 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation3']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation3']!,
                                hasBeenTriggered: hasButtonTriggered3),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation4'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered4 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation4']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation4']!,
                                hasBeenTriggered: hasButtonTriggered4),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation5'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered5 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation5']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation5']!,
                                hasBeenTriggered: hasButtonTriggered5),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation6'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered6 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation6']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation6']!,
                                hasBeenTriggered: hasButtonTriggered6),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation7'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered7 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation7']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation7']!,
                                hasBeenTriggered: hasButtonTriggered7),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation8'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered8 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation8']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation8']!,
                                hasBeenTriggered: hasButtonTriggered8),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation9'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered9 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation9']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation9']!,
                                hasBeenTriggered: hasButtonTriggered9),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation10'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered10 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation10']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation10']!,
                                hasBeenTriggered: hasButtonTriggered10),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation11'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered11 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation11']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation11']!,
                                hasBeenTriggered: hasButtonTriggered11),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation12'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered12 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation12']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation12']!,
                                hasBeenTriggered: hasButtonTriggered12),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation13'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered13 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation13']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation13']!,
                                hasBeenTriggered: hasButtonTriggered13),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation14'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered14 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation14']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation14']!,
                                hasBeenTriggered: hasButtonTriggered14),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation15'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered15 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation15']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation15']!,
                                hasBeenTriggered: hasButtonTriggered15),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation16'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered16 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation16']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation16']!,
                                hasBeenTriggered: hasButtonTriggered16),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation17'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered17 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation17']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation17']!,
                                hasBeenTriggered: hasButtonTriggered17),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation18'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered18 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation18']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation18']!,
                                hasBeenTriggered: hasButtonTriggered18),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation19'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered19 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation19']!
                                          .controller
                                          .forward(from: 0.0));
                                }
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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation19']!,
                                hasBeenTriggered: hasButtonTriggered19),
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
                                if (animationsMap[
                                        'buttonOnActionTriggerAnimation20'] !=
                                    null) {
                                  safeSetState(
                                      () => hasButtonTriggered20 = true);
                                  SchedulerBinding.instance.addPostFrameCallback(
                                      (_) async => await animationsMap[
                                              'buttonOnActionTriggerAnimation20']!
                                          .controller
                                          .forward(from: 0.0));
                                }

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
                            ).animateOnActionTrigger(
                                animationsMap[
                                    'buttonOnActionTriggerAnimation20']!,
                                hasBeenTriggered: hasButtonTriggered20),
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
