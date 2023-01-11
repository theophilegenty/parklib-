import '../backend/backend.dart';
import '../components/borne1component_widget.dart';
import '../components/borne2component_widget.dart';
import '../components/borne3_widget.dart';
import '../components/borne4_widget.dart';
import '../components/borne5_widget.dart';
import '../components/borne6_widget.dart';
import '../components/borne7_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

class PagedaccueilWidget extends StatefulWidget {
  const PagedaccueilWidget({Key? key}) : super(key: key);

  @override
  _PagedaccueilWidgetState createState() => _PagedaccueilWidgetState();
}

class _PagedaccueilWidgetState extends State<PagedaccueilWidget> {
  LatLng? mapsCenter;
  final mapsController = Completer<GoogleMapController>();
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var qradress = '';

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await requestPermission(locationPermission);
    });

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
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              shape: BoxShape.rectangle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: InkWell(
                onTap: () async {
                  context.pushNamed('Parametre');
                },
                child: Icon(
                  Icons.settings_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 50,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          'Parklib',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
        ),
        actions: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: FFButtonWidget( // On ouvre un scanner directement dans l'appli 
              onPressed: () async {
                qradress = await FlutterBarcodeScanner.scanBarcode(
                  '#C62828', 
                  'Cancel', // boutton de retour 
                  true, // icon du flash
                  ScanMode.QR,
                );

                setState(() {});
              },
              text: '',
              icon: Icon(
                Icons.qr_code_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 40,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryBackground,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StreamBuilder<List<MarkerRecord>>(
                  stream: queryMarkerRecord(), //appel de la collection stockant tous nos marqueurs chaque marqueurs possède un nom, une localisation et un numéro pour le différencier
                  builder: (context, snapshot) {
                    
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
                    List<MarkerRecord> containerMarkerRecordList = 
                        snapshot.data!;
                    return Material(
                      color: Colors.transparent,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.82,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(0),
                          shape: BoxShape.rectangle,
                        ),
                        child: FlutterFlowGoogleMap( 
                          controller: mapsController,
                          onCameraIdle: (latLng) =>
                              setState(() => mapsCenter = latLng),
                          initialLocation: mapsCenter ??= // localisation initiale de carte 
                              LatLng(48.5734053, 7.7521113), 
                          markers: containerMarkerRecordList
                              .map(
                                (containerMarkerRecord) => FlutterFlowMarker(
                                  containerMarkerRecord.reference.path,
                                  containerMarkerRecord.location!,
                                  () async { // Afin de différiencier les marqueurs on leur a associé à chacun un numéro à chaque clic sur une borne on teste tous les numéros pour voir quelle borne a été selectionné et afficher le bottom sheet correspondant
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '1') {
                                      await showModalBottomSheet( // lorsque le numéro de la borne correspond au marqueurs un bottom sheet contenant les informations de la borne s'affiche
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne1componentWidget(
                                                bornekleber:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '2') {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne2componentWidget(
                                                borneBroglie:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '3') {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne3Widget(
                                                borneplacedeBordeaux:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '4') {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne4Widget(
                                                borneparcdeletoile:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '5') {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne5Widget(
                                                borneGare:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '6') {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne6Widget(
                                                borneforetnoire:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                    if (containerMarkerRecord.number
                                            .toString() ==
                                        '7') {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              child: Borne7Widget(
                                                borneavenuedeColmar:
                                                    containerMarkerRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    }
                                  },
                                ),
                              )
                              .toList(),
                          markerColor: GoogleMarkerColor.green, // on fixe tout les attributs de notre carte
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                  child: Row( // on crée notre row contenant toutes les icones nous permettant de se déplacer dans l'application 
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-0.05, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 15),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed('timer');
                                    },
                                    child: Icon(
                                      Icons.timer,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'bornes',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 100),
                                        ),
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.person_pin_circle,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed('favorisv2');
                                  },
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed('trytarifs');
                                  },
                                  child: Icon(
                                    Icons.euro_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
