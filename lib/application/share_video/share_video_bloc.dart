import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'share_video_event.dart';

part 'share_video_state.dart';

part 'share_video_bloc.freezed.dart';

@injectable
class ShareVideoBloc extends Bloc<ShareVideoEvent, ShareVideoState> {
  final ILogger logger;
  ShareVideoBloc(this.logger) : super(ShareVideoState.initial());


  @override
  Stream<ShareVideoState> mapEventToState(
    ShareVideoEvent event,
  ) async* {
    yield* event.map(
      share: (data) async* {
        final DynamicLinkParameters parameters = DynamicLinkParameters(
          uriPrefix: 'https://i.cato.tv',
          link: Uri.parse('https://cato.tv/video/${data.postId}'),
          androidParameters: AndroidParameters(
            packageName: 'cato.tv.feed',
            minimumVersion: 1,
          ),
          googleAnalyticsParameters: GoogleAnalyticsParameters(
            campaign: 'social_sharing',
            medium: 'cato_feed_app',
            source: 'video_share_icon',
          ),
          socialMetaTagParameters: SocialMetaTagParameters(
            title: data.title,
            imageUrl: Uri.parse(data.imageUrl),
          ),
        );

        final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
        final Uri dynamicLink = shortDynamicLink.shortUrl;
        var message = 'Checkout ${data.title} and other interesting videos at $dynamicLink';
        yield state.copyWith(shareText: message);
        logger.logShare(data.postId);
      },
    );
  }
}
