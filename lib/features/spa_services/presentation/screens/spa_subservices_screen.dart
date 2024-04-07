import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:spa_salon/core/presentation/widgets/spa_loading_screen.dart';
import 'package:spa_salon/features/spa_services/presentation/cubit/spa_services/spa_services_cubit.dart';
import 'package:spa_salon/features/spa_services/presentation/cubit/spa_subservices/spa_subservices_cubit.dart';
import 'package:spa_salon/features/spa_services/presentation/widgets/service_list_item.dart';
import 'package:spa_salon/features/spa_services/presentation/widgets/sub_service_container.dart';

@RoutePage()
class SpaSubservicesScreen extends StatefulWidget {
  const SpaSubservicesScreen({
    super.key,
    required this.titleServices,
    required this.serviceId,
  });

  final String titleServices;
  final int serviceId;

  @override
  State<SpaSubservicesScreen> createState() => _SpaSubservicesScreenState();
}

class _SpaSubservicesScreenState extends State<SpaSubservicesScreen> {
  final SpaSubservicesCubit _cubit = GetIt.I.get<SpaSubservicesCubit>();

  @override
  void initState() {
    _cubit.getSubservices(widget.serviceId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titleServices),
      ),
      body: BlocBuilder<SpaSubservicesCubit, SpaSubservicesState>(
        bloc: _cubit,
        builder: (ctx, state) {
          return state.maybeWhen(
            loaded: (subservices) {
              return ListView.builder(
                itemBuilder: (ctx, i) {
                  final subService = subservices[i];
                  return ServiceListItem(
                    imageUrl: subService.imageUrl,
                    itemText: subService.title,
                    onTap: () async {
                      final subservice =
                          await _cubit.getSubseriveById(subService.id);
                      // ignore: use_build_context_synchronously
                      Scaffold.of(ctx).showBottomSheet(
                        (context) => SubserviceContainer(
                          subservice: subservice,
                          serviceTitle: widget.titleServices,
                        ),
                      );
                    },
                  );
                },
                itemCount: subservices.length,
              );
            },
            loading: () => const SpaLoadingScreen(),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
