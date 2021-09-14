import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class ThreeButtonBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  const ThreeButtonBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _uiHelpers = UIHelpers.fromContext(context);

    return BottomSheet(
        onClosing: () => completer(SheetResponse(confirmed: false)),
        builder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: AppColors.surface,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: request.title!,
                      style: _uiHelpers.subheading!.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: "\n\n"),
                    TextSpan(
                      text: request.description!,
                      style: _uiHelpers.button!.copyWith(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.normal),
                    ),
                  ])),
                  _uiHelpers.verticalSpaceLow!,
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: ElevatedButton(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          data: ThreeButtonResponseData.primary)),
                      style: raisedButtonStyle.copyWith(
                          side: MaterialStateProperty.all(
                              const BorderSide(width: 2, color: AppColors.primary))),
                      child: Text(
                        request.mainButtonTitle!,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: OutlinedButton(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          data: ThreeButtonResponseData.secondary)),
                      style: raisedButtonStyle,
                      child: Text(
                        request.secondaryButtonTitle!,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () => completer(SheetResponse(
                            confirmed: true,
                            data: ThreeButtonResponseData.teritary)),
                        style: raisedButtonStyle,
                        child: Text(
                          request.additionalButtonTitle!,
                          style: const TextStyle(color: AppColors.primary),
                        ),
                      )),
                ],
              ),
            ));
  }
}

class FloatingBoxBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  const FloatingBoxBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _uiHelpers = UIHelpers.fromContext(context);

    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(
              text: request.title!,
              style: _uiHelpers.subheading!.copyWith(
                  color: AppColors.textPrimary, fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: "\n\n"),
            TextSpan(
              text: request.description!,
              style: _uiHelpers.button!.copyWith(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.normal),
            ),
          ])),
          _uiHelpers.verticalSpaceLow!,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () => completer(SheetResponse(
                    confirmed: true, data: FloatingResponseData.primary)),
                child: Text(
                  request.secondaryButtonTitle!,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              TextButton(
                onPressed: () => completer(SheetResponse(
                    confirmed: true, data: FloatingResponseData.secondary)),
                child: Text(
                  request.mainButtonTitle!,
                  style: const TextStyle(color: AppColors.primary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ConstraintBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  const ConstraintBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _uiHelpers = UIHelpers.fromContext(context);

    return BottomSheet(
        onClosing: () => completer(SheetResponse(confirmed: false)),
        builder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: AppColors.surface,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: request.title!,
                      style: _uiHelpers.subheading!.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: "\n\n"),
                    TextSpan(
                      text: request.description!,
                      style: _uiHelpers.button!.copyWith(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.normal),
                    ),
                  ])),
                  _uiHelpers.verticalSpaceLow!,
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: ElevatedButton.icon(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          data: ThreeButtonResponseData.primary)),
                      style: raisedButtonStyle.copyWith(
                          backgroundColor: MaterialStateProperty.all(
                              request.mainButtonTitle == "Continue with Google"
                                  ? AppColors.google
                                  : AppColors.primary)),
                      icon: request.mainButtonTitle == "Continue with Google"
                          ? const Icon(Icons.person_add)
                          : const Icon(Icons.person),
                      label: Text(
                        request.mainButtonTitle!,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: OutlinedButton(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          data: ThreeButtonResponseData.secondary)),
                      style: raisedButtonStyle.copyWith(
                          side: MaterialStateProperty.all(
                              const BorderSide(width: 2, color: AppColors.primary))),
                      child: Text(
                        request.secondaryButtonTitle!,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
