import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/borne1component_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_timer.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class Scannerpage6Widget extends StatefulWidget {
  const Scannerpage6Widget({Key? key}) : super(key: key);

  @override
  _Scannerpage6WidgetState createState() => _Scannerpage6WidgetState();
}

class _Scannerpage6WidgetState extends State<Scannerpage6Widget> {
  int timerMilliseconds = 10;
  String timerValue = StopWatchTimer.getDisplayTime(10, milliSecond: false);
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final usersUpdateData = createUsersRecordData(
        borne6rerserve: true,
      );
      await currentUserReference!.update(usersUpdateData);
      timerController.onExecute.add(StopWatchExecute.start);
      await Future.delayed(const Duration(milliseconds: 20));

      context.pushNamed('timer');
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
    return StreamBuilder<List<ReservationdeplaceRecord>>(
      stream: queryReservationdeplaceRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: Borne1componentWidget(),
          );
        }
        List<ReservationdeplaceRecord>
            scannerpage6ReservationdeplaceRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final scannerpage6ReservationdeplaceRecord =
            scannerpage6ReservationdeplaceRecordList.isNotEmpty
                ? scannerpage6ReservationdeplaceRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FlutterFlowTimer(
                            initialTime: timerMilliseconds,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(value,
                                    milliSecond: false),
                            timer: timerController,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              timerMilliseconds = value;
                              timerValue = displayTime;
                              if (shouldUpdate) setState(() {});
                            },
                            onEnded: () async {
                              final reservationdeplaceUpdateData = {
                                'Nombredeplaceborne6':
                                    FieldValue.increment(-(1)),
                              };
                              await scannerpage6ReservationdeplaceRecord!
                                  .reference
                                  .update(reservationdeplaceUpdateData);
                            },
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
