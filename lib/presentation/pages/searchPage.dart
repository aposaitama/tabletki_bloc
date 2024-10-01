import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabletki/blocs/cart/medicines_cart_bloc_bloc.dart';
import 'package:tabletki/blocs/detailed/detailed_bloc.dart';
import 'package:tabletki/blocs/medicine/medicines_bloc_bloc.dart';
import 'package:tabletki/component/medicineTile.dart';
import 'package:tabletki/presentation/pages/detailed_page.dart';
import 'package:tabletki/presentation/widgets/HomeAppBar.dart';
import 'package:tabletki/presentation/widgets/HomeSearchField.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        const HomeSearchField(),
        Expanded(
            child: BlocBuilder(
          bloc: BlocProvider.of<MedicinesBloc>(context),
          builder: (context, state) {
            if (state is MedicinesBlocInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is MedicinesBlocLoadedState) {
              return ListView.builder(
                itemCount: state.medicinesData.data.length,
                itemBuilder: (context, index) {
                  final medicine = state.medicinesData.data[index];

                  return MedicineTile(
                    medicine: medicine,
                    onTapName: () {
                      print(medicine.price);
                      BlocProvider.of<DetailedBloc>(context)
                          .add(DetailedShowEvent(detailedItem: medicine));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailedPage()),
                      );
                    },
                    onTapCart: () =>
                        BlocProvider.of<MedicinesCartBlocBloc>(context)
                            .add(CartAddEvent(cartItems: medicine)),
                  );
                },
              );
            } else {
              return const Center(
                child: Text('Unexpected state encountered.'),
              );
            }
          },
        )),
      ],
    );
  }
}
