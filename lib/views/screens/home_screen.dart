import 'package:cached_network_image/cached_network_image.dart';
import 'package:extraa_edge/controllers/routes.dart';
import 'package:extraa_edge/provider/rocket_provider.dart';
import 'package:extraa_edge/views/constants.dart';
import 'package:extraa_edge/views/widgets/app_error_widget.dart';
import 'package:extraa_edge/views/widgets/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rocketListProvider = ref.watch(rocketListFutureProvider);
    return rocketListProvider.when(
      data: (data) {
        return Scaffold(
          body: SafeArea(
            child: RefreshIndicator(
              onRefresh: () async {
                final isar = Isar.getInstance();
                await isar!.writeTxn(() async {
                  await isar.clear();
                });
                ref.invalidate(rocketListFutureProvider);
              },
              child: ListView.builder(
                  padding: primaryPagePadding,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    var item = data[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: InkWell(
                        onTap: () {
                          context.pushNamed(AppRoutes.rocketDetails,
                              params: {"id": item.rocketId!});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      spreadRadius: 5,
                                      blurRadius: 7)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: CachedNetworkImage(
                                          width: double.infinity,
                                          imageUrl: item.flickrImages!.first),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(7),
                                        margin: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Text(
                                            "Engine Count: ${item.engines?.number}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0)))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(item.name ?? "Unknown",
                                                style: primaryHeadingStyle),
                                          ),
                                          Expanded(
                                              child: Text(
                                                  item.country ?? "Unknown",
                                                  style: const TextStyle(
                                                      color: Colors.black87),
                                                  textAlign: TextAlign.right))
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  }),
            ),
          ),
          appBar: AppBar(title: const Text("ExtraaEdge - SpaceX")),
        );
      },
      error: (error, stackTrace) {
        return const AppErrorWidget(msg: "Something went wrong");
      },
      loading: () {
        return const AppLoadingWidget();
      },
    );
  }
}
