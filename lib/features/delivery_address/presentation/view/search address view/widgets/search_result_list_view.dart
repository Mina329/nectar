import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nectar/features/delivery_address/presentation/view/search%20address%20view/widgets/search_address_item.dart';

import '../../../view_model/location_bloc/location_bloc.dart';
import '../../../view_model/search_address_cubit/search_address_cubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchAddressCubit, SearchAddressState>(
      builder: (context, state) {
        if (state is SearchAddressSuccess) {
          if (state.suggestions.items!.isEmpty) {
          } else {
            return Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () async {
                    await selectNewLocation(context, state, index);
                  },
                  child: SearchAddressItem(
                      distance: state.suggestions.items![index].distance == null
                          ? ""
                          : state.suggestions.items![index].distance! > 1000
                              ? "${(state.suggestions.items![index].distance! / 1000).toStringAsFixed(1)} Km"
                              : "${state.suggestions.items![index].distance!} m",
                      title: state.suggestions.items![index].title ?? "",
                      description: state.suggestions.items![index].address ==
                              null
                          ? ""
                          : state.suggestions.items![index].address!.label ??
                              ""),
                ),
                itemCount: state.suggestions.items!.length,
              ),
            );
          }
        } else if (state is SearchAddressLoading) {
        } else {
          return const SizedBox();
        }
        return Container();
      },
    );
  }

  Future<void> selectNewLocation(
      BuildContext context, SearchAddressSuccess state, int index) async {
    BlocProvider.of<LocationBloc>(context).currentLocation = LatLng(
        state.suggestions.items![index].position!.lat!,
        state.suggestions.items![index].position!.lng!);
    final GoogleMapController controller =
        await BlocProvider.of<SearchAddressCubit>(context).controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          // ignore: use_build_context_synchronously
          target: BlocProvider.of<LocationBloc>(context).currentLocation,
          zoom: 19,
        ),
      ),
    );
    // ignore: use_build_context_synchronously
    GoRouter.of(context).pop();
  }
}
