import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page5borneWidget extends StatefulWidget {
  const Page5borneWidget({Key? key}) : super(key: key);

  @override
  _Page5borneWidgetState createState() => _Page5borneWidgetState();
}

class _Page5borneWidgetState extends State<Page5borneWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<ReservationdeplaceRecord>>(
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
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<ReservationdeplaceRecord>
                      columnReservationdeplaceRecordList = snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final columnReservationdeplaceRecord =
                      columnReservationdeplaceRecordList.isNotEmpty
                          ? columnReservationdeplaceRecordList.first
                          : null;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<UsersRecord> rowUsersRecordList = snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final rowUsersRecord = rowUsersRecordList.isNotEmpty
                              ? rowUsersRecordList.first
                              : null;
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.arrow_back_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('Pagedaccueil');
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    60, 13, 10, 0),
                                child: Text(
                                  'Parc de l’étoile',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(40, 8, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: ToggleIcon(
                                    onPressed: () async {
                                      final usersUpdateData = {
                                        'Borne5favourite':
                                            !rowUsersRecord!.borne5favourite!,
                                      };
                                      await rowUsersRecord!.reference
                                          .update(usersUpdateData);
                                    },
                                    value: rowUsersRecord!.borne5favourite!,
                                    onIcon: Icon(
                                      Icons.favorite,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    offIcon: Icon(
                                      Icons.favorite_border,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwWNpi5UxuSsR7UBNU6YXICPSl-FkPnRzrPw&usqp=CAU',
                          width: 390.1,
                          height: 356,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Places disponibles actuellement: ',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Text(
                              columnReservationdeplaceRecord!
                                  .nombredeplaceborne5!
                                  .toString(),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              'Places totales : 14\n\nAux alentours:\n-Mairie\n-Gare routière( bus/autocar)\n-Hopitaux',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Visibility(
                            visible: !((valueOrDefault<bool>(
                                        currentUserDocument?.borne1rerserve,
                                        false) ==
                                    true) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.borne2rerserve,
                                        false) ==
                                    true) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.borne3rerserve,
                                        false) ==
                                    true) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.borne4reserve,
                                        false) ==
                                    true) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.borne5rerserve,
                                        false) ==
                                    true) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.borne6rerserve,
                                        false) ==
                                    true) ||
                                (valueOrDefault<bool>(
                                        currentUserDocument?.borne7reserve,
                                        false) ==
                                    true)),
                            child: AuthUserStreamWidget(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  final reservationdeplaceUpdateData = {
                                    'Nombredeplaceborne5':
                                        FieldValue.increment(-(1)),
                                  };
                                  await columnReservationdeplaceRecord!
                                      .reference
                                      .update(reservationdeplaceUpdateData);

                                  final usersUpdateData = createUsersRecordData(
                                    borne5rerserve: true,
                                  );
                                  await currentUserReference!
                                      .update(usersUpdateData);

                                  context.pushNamed('timer');
                                },
                                text: 'Réserver',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
