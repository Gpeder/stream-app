import 'package:flutter/material.dart';
import 'package:stream_app/controllers/filter_controler.dart';
import 'package:stream_app/theme/cor.dart';

class Filter extends StatefulWidget {
  final List<String> filtros;
  final void Function(List<String> selectedValue) onChange; // Parâmetro para notificar mudanças
  const Filter({super.key, required this.filtros, required this.onChange});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  late final List<String> _filter;
  final controller = FilterControler();

  @override
  void initState() {
    super.initState();
    _filter = ['All', ...widget.filtros]; // Substitua 'All' por FilterControler.all se necessário
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ValueListenableBuilder<List<String>>(
        valueListenable: controller,
        builder: (context, value, child) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _filter.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FilterChip(
                selectedShadowColor: AppColors.primary,
                checkmarkColor: AppColors.black,
                backgroundColor: AppColors.offWhite,
                label: Text(_filter[index]),
                shape: const StadiumBorder(),
                selectedColor: AppColors.primary,
                selected: value.contains(_filter[index]),
                onSelected: (selected) {
                  controller.add(_filter[index]);
                  widget.onChange(controller.value);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}