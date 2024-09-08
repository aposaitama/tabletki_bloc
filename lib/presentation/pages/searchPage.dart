import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tabletki/component/medicineTile.dart';
import 'package:tabletki/data/repository/medicines.dart';
import 'package:tabletki/provider/medicines_provider.dart';
import 'package:tabletki/widgets/HomeAppBar.dart';
import 'package:tabletki/widgets/HomeSearchField.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MedicinesProvider>(context, listen: false).getDataFromAPI();
    });
  }

  addItemToCart(Datum item) {
    Provider.of<MedicinesProvider>(context, listen: false).addItemToCart(item);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeAppBar(),
        HomeSearchField(),
        Expanded(
          child: Consumer<MedicinesProvider>(
            builder: (context, provider, child) {
              return ListView.builder(
                itemCount: provider.medicines.data.length,
                itemBuilder: (context, index) {
                  final medicine = provider.medicines.data[index];
                  return MedicineTile(
                    medicine: medicine,
                    onTap: () => addItemToCart(medicine),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
