import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBlocStatelessWidget<B extends Bloc> extends StatelessWidget {
  B getBloc(BuildContext context) => context.read<B>();
}
