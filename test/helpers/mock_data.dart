import 'package:feed/core/models/app_models.dart';

const String kSampleWatchId = "oM_qBYEY80g";
const String kSampleVideoUrl = "https://www.youtube.com/watch?v=$kSampleWatchId";
const String kSampleStreamUrl =
    "https://r5---sn-524pcxgpo-8u1e.googlevideo.com/videoplayback?expire=1624477082&ei=OjnTYMWNGPf94-EP5Z2Y0Aw&ip=223.196.160.221&id=o-AKwT4urLozvcsxUNsEOsq_IB1JAjH3E3Zcg8-PHIMXvo&itag=248&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mh=WA&mm=31%2C29&mn=sn-524pcxgpo-8u1e%2Csn-cvh76nes&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=24&initcwndbps=305000&vprv=1&mime=video%2Fwebm&ns=8_QquL6xCZmtsO9CXL9q98wF&gir=yes&clen=53515970&dur=380.480&lmt=1577731409855768&mt=1624455172&fvip=5&keepalive=yes&fexp=24001373%2C24007246&beids=9466585&c=WEB&txp=5431432&n=Y3g7u-RIUppm_z-np&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAN_ne9KxL4zqmlD5omaAeOJpZE2dOdHv635yiyIVSEM4AiAHFewFIUw07A9li1WqJ_-iQbd8Y_d6bEx5wiGO-gEs3g%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAM4kMNNjJX8edqVrgHvXXQ-VOOVUEVJwXEihZMSo0DyPAiEAyk_b-qK5igIe2Hw8765LdLd1fvsgr02OMRKn4N8hDPQ%3D";

final User defaultUser = User(
    id: 'default_test_user',
    name: "Default User",
    avatar:
        "https://www.clipartkey.com/mpngs/m/152-1520367_user-profile-default-image-png-clipart-png-download.png",
    email: "default_user@cato.tv",
    invites: 0,
    token: "generatedToken");

const bottomSheetInput = <String, String>{
  "title": 'You need an account to continue',
  "description":
      'We’re currently in early access mode, you can’t enter unless you have an invite.',
  "mainButtonTitle": 'Continue with Google',
  "secondaryButtonTitle": 'Request Invite'
};
