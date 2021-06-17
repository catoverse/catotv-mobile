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
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
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
                    TextSpan(text: "\n\n"),
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
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: ElevatedButton(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          responseData: ThreeButtonResponseData.Primary)),
                      style: raisedButtonStyle.copyWith(
                          side: MaterialStateProperty.all(
                              BorderSide(width: 2, color: AppColors.primary))),
                      child: Text(
                        request.mainButtonTitle!,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: OutlinedButton(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          responseData: ThreeButtonResponseData.Secondary)),
                      style: raisedButtonStyle,
                      child: Text(
                        request.secondaryButtonTitle!,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () => completer(SheetResponse(
                            confirmed: true,
                            responseData: ThreeButtonResponseData.Teritary)),
                        style: raisedButtonStyle,
                        child: Text(
                          request.additionalButtonTitle!,
                          style: TextStyle(color: AppColors.primary),
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
            TextSpan(text: "\n\n"),
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
                    confirmed: true,
                    responseData: FloatingResponseData.Primary)),
                child: Text(
                  request.secondaryButtonTitle!,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              TextButton(
                onPressed: () => completer(SheetResponse(
                    confirmed: true,
                    responseData: FloatingResponseData.Secondary)),
                child: Text(
                  request.mainButtonTitle!,
                  style: TextStyle(color: AppColors.primary),
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
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
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
                    TextSpan(text: "\n\n"),
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
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: ElevatedButton.icon(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          responseData: ThreeButtonResponseData.Primary)),
                      style: raisedButtonStyle.copyWith(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.google)),
                      icon: request.mainButtonTitle == "Continue with Google"
                          ? Icon(Icons.person_add)
                          : Icon(Icons.person),
                      label: Text(
                        request.mainButtonTitle!,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: OutlinedButton(
                      onPressed: () => completer(SheetResponse(
                          confirmed: true,
                          responseData: ThreeButtonResponseData.Secondary)),
                      style: raisedButtonStyle.copyWith(
                          side: MaterialStateProperty.all(
                              BorderSide(width: 2, color: AppColors.primary))),
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
