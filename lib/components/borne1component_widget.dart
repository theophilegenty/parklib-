import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Borne1componentWidget extends StatefulWidget { // chaque component est associé à un paramètre lorsqu'on fait appelle à ce paramètre la page apparait sous forme de bottom sheet (notamment sur notre carte)
  const Borne1componentWidget({
    Key? key,
    this.bornekleber,
  }) : super(key: key);

  final MarkerRecord? bornekleber;

  @override
  _Borne1componentWidgetState createState() => _Borne1componentWidgetState();
}

class _Borne1componentWidgetState extends State<Borne1componentWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Place Kleber',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
            child: Image.network(
              'https://static.actu.fr/uploads/2021/11/sans-titre-1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('page7borne');
              },
              text: 'Accéder à la borne',
              options: FFButtonOptions(
                width: 200,
                height: 50,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryText,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
