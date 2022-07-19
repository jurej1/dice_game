import 'package:dice_game/cubits/dice/dice_cubit.dart';
import 'package:dice_game/dice_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static route(BuildContext context) {
    return BlocProvider(
      create: (context) => DiceCubit(),
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<DiceCubit>(context).generateNewValue();
      },
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: BlocBuilder<DiceCubit, List<int>>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPaint(
                    key: UniqueKey(),
                    painter: DicePainter(val: state.first),
                    size: const Size(200, 200),
                  ),
                  const SizedBox(width: 40),
                  CustomPaint(
                    key: UniqueKey(),
                    painter: DicePainter(val: state.last),
                    size: const Size(200, 200),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
