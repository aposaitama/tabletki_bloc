import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabletki/blocs/detailed/detailed_bloc.dart';
import 'package:tabletki/component/model/medicines.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: BlocProvider.of<DetailedBloc>(context),
        builder: (context, state) {
          if (state is DetailedInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DetailedLoadedState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.detailedItem.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Image.network(state.detailedItem.image, height: 150),
                  const SizedBox(height: 16),
                  Text(
                    'Опис: ${state.detailedItem.description}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Ціна: ${state.detailedItem.price.toString()} грн',
                    style: const TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.detailedItem.available
                        ? 'Є в наявності'
                        : 'Немає в наявності',
                    style: TextStyle(
                      fontSize: 16,
                      color: state.detailedItem.available
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text('Unexpected state encountered.'));
          }
        },
      ),
    );
  }
}
