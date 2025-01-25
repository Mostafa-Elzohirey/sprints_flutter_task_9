import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprints_flutter_task_9/custom_snackbar.dart';
import 'package:sprints_flutter_task_9/manager/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: BlocListener<CounterCubit, CounterState>(
        listener: (context, state) {
          if (cubit.counter < 0) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar1);
          }
        },
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Center(
              child: Text(
                cubit.counter.toString(),
                style: TextStyle(fontSize: 60),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              cubit.counterIncrement();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              cubit.counterDecrement();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              cubit.counterReset();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
