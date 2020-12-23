import 'dart:ui';

import 'package:flutter/material.dart';
import 'base_bloc.dart';
import 'base_event_state.dart';

abstract class BaseState<BlocApp extends BaseBloc, StateApp extends BlocState,
    S extends StatefulWidget> extends State<S> {
  Widget mapStateToWidget(StateApp state);

  BlocApp bloc;

  @override
  void initState() {
    super.initState();
    bloc = blocProvider();
  }

  @override
  void dispose() {
    super.dispose();
  }

  BlocApp blocProvider();

  void executeUiAfterBuild(FrameCallback frameCallback) {
    WidgetsBinding.instance.addPostFrameCallback(frameCallback);
  }
}
