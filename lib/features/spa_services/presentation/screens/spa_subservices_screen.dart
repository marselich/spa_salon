import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spa_salon/core/presentation/widgets/spa_salon_card.dart';
import 'package:spa_salon/features/spa_services/domain/entities/subservice/subservice_model.dart';
import 'package:spa_salon/features/spa_services/presentation/widgets/service_list_item.dart';
import 'package:spa_salon/features/spa_services/presentation/widgets/sub_service_container.dart';

@RoutePage()
class SpaSubservicesScreen extends StatelessWidget {
  const SpaSubservicesScreen({
    super.key,
    required this.titleServices,
    required this.subServicesList,
  });

  final String titleServices;
  final List<SubserviceModel> subServicesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleServices),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          final subService = subServicesList[i];
          return ServiceListItem(
            imageUrl: subService.imageUrl,
            itemText: subService.title,
            onTap: () {
              showBottomSheet(
                context: context,
                builder: (context) =>
                    SubserviceContainer(subservice: subService),
              );
            },
          );
        },
        itemCount: subServicesList.length,
      ),
    );
  }
}
