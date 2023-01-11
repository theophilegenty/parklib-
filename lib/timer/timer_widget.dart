import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_timer.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  StopWatchTimer timerController = StopWatchTimer(mode: StopWatchMode.countUp);

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // Au chargement de la page le timer de la réservation se lance l'utilisateur clique alors sur le bouton pour terminer sa réservation. Le temps de reservation est alors automatiquement envoyé dans la base de données
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      timerController.onExecute.add(StopWatchExecute.start);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    timerController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.home,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('Pagedaccueil');
          },
        ),
        title: Align(
          alignment: AlignmentDirectional(0, -0.3),
          child: Text(
            'Timer',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Image.asset(
                        'assets/images/trotinette_vue_de_dessus.webp',
                        width: 600,
                        height: 800,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.02, 0.6),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 635, 0, 0),
                        child: StreamBuilder<List<ReservationdeplaceRecord>>(
                          stream: queryReservationdeplaceRecord(
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<ReservationdeplaceRecord>
                                containerReservationdeplaceRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final containerReservationdeplaceRecord =
                                containerReservationdeplaceRecordList.isNotEmpty
                                    ? containerReservationdeplaceRecordList
                                        .first
                                    : null;
                            return Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  timerController.onExecute
                                      .add(StopWatchExecute.stop);
                                  if (valueOrDefault<bool>( // On teste quelle borne l'utilisateur a reservé et lors du rendu on rajoute une trotinette
                                          currentUserDocument?.borne1rerserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne1':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }
                                  if (valueOrDefault<bool>(
                                          currentUserDocument?.borne2rerserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne2':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }
                                  if (valueOrDefault<bool>(
                                          currentUserDocument?.borne3rerserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne3':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }
                                  if (valueOrDefault<bool>(
                                          currentUserDocument?.borne4reserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne4':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }
                                  if (valueOrDefault<bool>(
                                          currentUserDocument?.borne5rerserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne5':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }
                                  if (valueOrDefault<bool>(
                                          currentUserDocument?.borne6rerserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne6':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }
                                  if (valueOrDefault<bool>(
                                          currentUserDocument?.borne7reserve,
                                          false) ==
                                      true) {
                                    final reservationdeplaceUpdateData = {
                                      'Nombredeplaceborne7':
                                          FieldValue.increment(1),
                                    };
                                    await containerReservationdeplaceRecord!
                                        .reference
                                        .update(reservationdeplaceUpdateData);
                                  }

                                  final usersUpdateData = createUsersRecordData(
                                    borne1rerserve: false,
                                    borne2rerserve: false,
                                    borne3rerserve: false,
                                    borne4reserve: false,
                                    borne5rerserve: false,
                                    borne6rerserve: false,
                                    borne7reserve: false,
                                    time: timerMilliseconds,
                                  );
                                  await currentUserReference!
                                      .update(usersUpdateData);

                                  context.pushNamed('Pagedaccueil');
                                },
                                text: 'stop',
                                options: FFButtonOptions(
                                  width: 120,
                                  height: 40,
                                  color: Colors.transparent,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.transparent,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.01, 0.05),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
                        child: Image.asset(
                          'assets/images/pngtree-simple-black-solid-color-background-image_556932.jpg',
                          width: 107.7,
                          height: 217.7,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 375, 0, 0),
                        child: FlutterFlowTimer(
                          initialTime: timerMilliseconds,
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            milliSecond: false,
                          ),
                          timer: timerController,
                          onChanged: (value, displayTime, shouldUpdate) {
                            timerMilliseconds = value;
                            timerValue = displayTime;
                            if (shouldUpdate) setState(() {});
                          },
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.1, 0),
                  child: Image.asset(
                    'assets/images/trotinette_vue_de_dessus.webp',
                    width: 400,
                    height: 0,
                    fit: BoxFit.cover,
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
