import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:extraa_edge/controllers/utils.dart';
import 'package:extraa_edge/provider/rocket_provider.dart';
import 'package:extraa_edge/views/constants.dart';
import 'package:extraa_edge/views/widgets/app_error_widget.dart';
import 'package:extraa_edge/views/widgets/app_loading_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RocketDetailsScreen extends HookConsumerWidget {
  final Map<String, String> params;
  const RocketDetailsScreen({super.key, required this.params});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rocketDetailsProvider =
        ref.watch(rocketDetailsFutureProvider(params["id"] ?? ""));
    return rocketDetailsProvider.when(
      data: (data) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: primaryPagePadding.copyWith(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        viewportFraction: 1.0, height: 300, autoPlay: true),
                    items: data.flickrImages!.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return CachedNetworkImage(
                              imageUrl: item, width: 1000);
                        },
                      );
                    }).toList(),
                  ),
                  primaryMaxColSpacing,
                  Row(
                    children: [
                      const Text("Status:", style: primaryTitleStyle),
                      primaryRowSpacing,
                      if (data.active ?? false)
                        const Icon(Icons.check_circle,
                            size: 25, color: Colors.green)
                      else
                        const Icon(Icons.cancel, size: 25, color: Colors.red),
                      const Expanded(
                        child: SizedBox(
                            height: 18, child: VerticalDivider(thickness: 2)),
                      ),
                      Text("Success Rate: ${data.successRatePct}%",
                          style: primaryTitleStyle),
                    ],
                  ),
                  primaryColumnSpacing,
                  Text(
                      "Cost Per Launch: ${formatCurrency.format(data.costPerLaunch)}",
                      style: primaryTitleStyle),
                  primaryColumnSpacing,
                  Text(data.description ?? "Unknown"),
                  primaryColumnSpacing,
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Wikipedia Link: ',
                          style: primaryTitleStyle,
                        ),
                        TextSpan(
                          text: 'tap here.',
                          style: primaryTitleStyle.copyWith(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              oepnUrl(Uri.parse(data.wikipedia!));
                            },
                        ),
                      ],
                    ),
                  ),
                  primaryColumnSpacing,
                  Row(
                    children: [
                      const Text("Height:", style: primaryTitleStyle),
                      primaryRowSpacing,
                      Text("${data.height?.feet} Feet",
                          style: primarySubtitleStyle),
                      const Expanded(
                        child: SizedBox(
                            height: 18, child: VerticalDivider(thickness: 2)),
                      ),
                      const Text("Diameter:", style: primaryTitleStyle),
                      primaryRowSpacing,
                      Text("${data.diameter?.feet} Feet",
                          style: primarySubtitleStyle),
                    ],
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(title: Text(data.name ?? "Unknown")),
        );
      },
      error: (error, stackTrace) {
        return AppErrorWidget(msg: error.toString());
      },
      loading: () {
        return const AppLoadingWidget();
      },
    );
  }
}
