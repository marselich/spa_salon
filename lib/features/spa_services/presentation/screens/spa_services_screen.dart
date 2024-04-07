import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:spa_salon/core/presentation/widgets/spa_loading_screen.dart';
import 'package:spa_salon/core/router/app_router.dart';
import 'package:spa_salon/features/spa_services/presentation/cubit/spa_services/spa_services_cubit.dart';
import 'package:spa_salon/features/spa_services/presentation/widgets/service_list_item.dart';

@RoutePage()
class SpaServicesScreen extends StatefulWidget {
  const SpaServicesScreen({super.key});

  @override
  State<SpaServicesScreen> createState() => _SpaServicesScreenState();
}

class _SpaServicesScreenState extends State<SpaServicesScreen> {
  final SpaServicesCubit _cubit = GetIt.I.get<SpaServicesCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.getServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Услуги"),
      ),
      body: BlocBuilder<SpaServicesCubit, SpaServicesState>(
        bloc: _cubit,
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (serviceList) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  final service = serviceList[index];
                  return ServiceListItem(
                    imageUrl: service.image,
                    itemText: service.title,
                    onTap: () {
                      AutoRouter.of(context).navigate(
                        SpaSubservicesRoute(
                          titleServices: service.title,
                          serviceId: service.id,
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (context, i) => const SizedBox(height: 10),
                itemCount: serviceList.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
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
