<#-- Layout -->
<#macro layout title keywords description>
    <!DOCTYPE html>
    <html lang="zh-CN">
        <head>
            <!--
    ------------------------------------------------------
     __     __     ____  _      ____   _____
     \ \   / /    |  _ \| |    / __ \ / ____|
      \ \_/ /_____| |_) | |   | |  | | |  __
       \   /______|  _ <| |   | |  | | | |_ |
        | |       | |_) | |___| |__| | |__| |
        |_|       |____/|______\____/ \_____|
    ------------------------------------------------------------
    version: ${site.version}
    ------------------------------------------------------------
    -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!--[if IE]>
            <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'/>
            <![endif]-->
            <#--    <meta name="keywords" content="mtons, ${keywords?default(options['site_keywords'])}">-->
            <#--    <meta name="description" content="${description?default(options['site_description'])}">-->
            <#--    <meta name="mtons:mblog" content="${site.version}">-->
            ${options['site_metas']}

            <title>Y-blog</title>

            <link href="${base}/dist/vendors/pace/themes/pace-theme-minimal.css" rel="stylesheet"/>
            <link href="${base}/dist/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

            <link href="${base}/dist/css/editor.css" rel="stylesheet"/>
            <link href="${base}/dist/css/plugins.css" rel="stylesheet"/>
            <link rel="stylesheet" type="text/css" href="${base}/dist/css/player.css">

            <link href="${base}/theme/classic/dist/css/style.css" rel="stylesheet"/>

            <link href="${base}/dist/vendors/simple-line-icons/css/simple-line-icons.css" rel="stylesheet"/>
            <link href="${base}/dist/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
            <link href="${base}/dist/css/yongz.css" rel="stylesheet"/>
            <link rel="stylesheet" type="text/css" href="${base}/dist/css/simple-calendar.css">



            <script src="${base}/dist/vendors/pace/pace.min.js"></script>

            <script src="${base}/dist/js/jquery.min.js"></script>

            <script src="${base}/dist/vendors/layer/layer.js"></script>
            <script src="${base}/dist/vendors/bootstrap/js/bootstrap.min.js"></script>
            <script src="${base}/dist/js/simple-calendar.js"></script>


            <script type="text/javascript">
                var _MTONS = _MTONS || {};
                _MTONS.BASE_PATH = '${base}';
                _MTONS.LOGIN_TOKEN = '${profile.id}';
            </script>

            <script src="${base}/dist/js/sea.js"></script>
            <script src="${base}/dist/js/sea.config.js"></script>
            <script src="${base}/dist/js/yongz.js"></script>

            <!-- Favicons -->
            <#--    <link href="<@resource src=options['site_favicon']/>" rel="apple-touch-icon-precomposed" />-->
            <link href="<@resource src=options['site_favicon']/>" rel="shortcut icon"/>


            <#--  时间轴样式  -->
            <style>
                .about2 {
                    padding-bottom: 80px !important;
                }

                .wrapper {
                    box-sizing: border-box !important;
                    width: 90% !important;
                    margin: auto !important;
                    max-width: 1200px !important;
                }

                .about2 .tit {
                    text-align: center !important;
                }

                .about2 .time_ul {
                    background: url(sy51.png) repeat-y center !important;
                }

                .clearfix-time {
                    display: block !important;
                    zoom: 1 !important;
                }

                .about2 .tit .f12 {
                    color: #666 !important;
                }

                .f12 {
                    font-size: 12px !important;
                }


                .about2 .tit .f24 {
                    color: #333 !important;
                    margin: 15px 0 45px !important;
                }

                .f24 {
                    font-size: 24px !important;
                }

                .about2 .time_li:before {
                    background: url(sy50.png) no-repeat center center !important;
                    left: -68px !important;
                    top: 12px !important;
                    content: "" !important;
                    display: block !important;
                    position: absolute !important;
                    width: 17px !important;
                    height: 17px !important;
                }

                .about2 .time_li .time_h4:hover {
                    color: #F8F8F8 !important;
                    transition: all 1s !important;
                    transform: translateY(-15px) !important;
                }

                .about2 .time_li .time_h4 {
                    position: relative !important;
                    display: block !important;
                    text-decoration: none !important;
                    font-family: "Lato" !important;
                    color: #ecf0f1 !important;
                    text-transform: uppercase !important;
                    padding: 4px 0 !important;
                    transition: 0.5s !important;
                }

                .about2 .time_li .time_h4::after {
                    position: absolute !important;
                    content: "" !important;
                    width: 100% !important;
                    height: 1px !important;
                    top: 100% !important;
                    left: 0 !important;
                    background: #3498db !important;
                    transition: transform 0.5s !important;
                    transform: scaleX(0) !important;
                    transform-origin: right !important;
                }

                .about2 .time_li .time_h4:hover {
                    color: #95a5a6 !important;
                }

                .about2 .time_li .time_h4:hover::after {
                    transform: scaleX(1) !important;
                    transform-origin: left !important;
                }

                .f30 {
                    font-size: 30px !important;
                }

                .f14 {
                    font-size: 14px !important;
                }

                .about2 .time_li:nth-child(2n):before {
                    background: url(sy50.png) no-repeat center center !important;
                    right: -69px !important;
                    top: 12px !important;
                    left: auto !important;
                    content: "" !important;
                    display: block !important;
                    position: absolute !important;
                    width: 17px !important;
                    height: 17px !important;
                }

                .about2 .time_li .time_h4 {
                    color: #333 !important;
                    transition: all 1s !important;
                }

                .about2 .time_li p {
                    color: #666 !important;
                    margin-top: 10px !important;
                    height: 60px !important;
                    overflow: hidden !important;
                    text-overflow: ellipsis !important;
                    display: -webkit-box !important;
                    -webkit-box-orient: vertical !important;
                    -webkit-line-clamp: 3 !important;
                }

                .future {
                    text-align: center !important;
                    color: #999 !important;
                    font-size: 12px !important;
                    margin-top: 17px !important;
                }

                .clearfix-time:after {
                    content: '\20' !important;
                    display: block !important;
                    clear: both !important;
                    visibility: hidden !important;
                    line-height: 0 !important;
                    height: 0 !important;
                }

                .about2 .time_li:nth-child(1) {
                    margin-top: 0 !important;
                }

                /* 表示1-3之间的间距 */
                .about2 .time_li {
                    float: right !important;
                    width: 45% !important;
                    text-align: left !important;
                    position: relative !important;
                    margin-top: 100px !important;
                }

                .about2 .time_li:nth-child(2n) {
                    float: left !important;
                    text-align: right !important;
                    margin-top: 90px !important;
                }
            </style>
        </head>
        <body>
            <!--播放器js-->
            <div id="jp_container_N" class="jp-video jp-video-270p jp-state-playing" role="application"
                 aria-label="media player">
                <div class="jp-type-playlist">
                    <!-- 播放器界面 -->
                    <div id="jquery_jplayer_N" class="jp-jplayer"></div>
                    <div class="jp-gui">
                        <!-- 标题 -->
                        <div class="jp-music-title">歌名</div>
                        <div class="jp-video-play" style="display: none;">
                            <button class="jp-video-play-icon" role="button" tabindex="0">播放</button>
                        </div>
                        <div class="jp-interface">
                            <div class="jp-progress">
                                <div class="jp-seek-bar" style="width: 100%;">
                                    <div class="jp-play-bar" style="overflow: hidden; width: 97.5219%;"></div>
                                </div>
                            </div>
                            <div class="jp-current-time" role="timer" aria-label="time">04:11</div>
                            <div class="jp-duration" role="timer" aria-label="duration">04:17</div>
                            <div class="jp-controls-holder">
                                <div class="jp-controls">
                                    <button class="jp-previous" role="button" tabindex="0">上一曲</button>
                                    <button class="jp-play" role="button" tabindex="0">播放</button>
                                    <button class="jp-next" role="button" tabindex="0">下一曲</button>
                                    <button class="jp-stop" role="button" tabindex="0">暂停</button>
                                </div>
                                <div class="jp-volume-controls">
                                    <button class="jp-mute" role="button" tabindex="0">静音</button>
                                    <button class="jp-volume-max" role="button" tabindex="0">最大音量</button>
                                    <div class="jp-volume-bar">
                                        <div class="jp-volume-bar-value" style="width: 10%;"></div>
                                    </div>
                                </div>
                                <div class="jp-toggles">
                                    <button class="jp-repeat" role="button" tabindex="0">重复</button>
                                    <button class="jp-shuffle" role="button" tabindex="0">随机</button>
                                </div>
                            </div>
                            <div class="jp-details" style="display: none;">
                                <div class="jp-title" aria-label="title">music</div>
                            </div>
                        </div>
                    </div>
                    <div class="jp-playlist">
                        <div class="jp-playlist-box">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <div class="jp-no-solution" style="display: none;">
                        <span style="transform: rotate(180deg);">升级需要</span>您浏览器赞不支持播放，请更新版本
                        <a href="http://get.adobe.com/flashplayer" target="_blank">Flash插件</a>.
                    </div>
                </div>
                <div class="scrollBar" style="display: none;">
                    <div class="bar"></div>
                </div>
                <button type="button" class="folded_bt" title="点击收缩" id="btnfold">
                    <span style="transform: rotate(180deg);"></span>
                </button>
                <!--<div id="listRemove" style="display: block;"></div>-->
                <div id="listClose"></div>
            </div>
            <!--播放器js-->

            <canvas id="c_n2" width="2752" height="360"
                    style="position: fixed; top: 0px; left: 0px; z-index: -1; opacity: 0.5;"></canvas>

            <!-- header -->
            <#include "/classic/inc/header.ftl"/>
            <!-- /header -->

            <!-- content -->
            <div class="wrap">
                <!-- Main -->
                <div class="container">
                    <#nested>
                </div>
            </div>
            <!-- /content -->

            <!-- footer -->
            <#include "/classic/inc/footer.ftl"/>
            <#--日历-->

            <script>
                var myCalendar = new SimpleCalendar('#calendar_s');
            </script>
        </body>
        <script>
            var musicList = [{
                title: "默",
                artist: "那英",
                mp3: "http://music.163.com/song/media/outer/url?id=31473269.mp3 ",
                poster: "http://p1.music.126.net/OCGt5ln0lPPtPbVJ3VEKtA==/109951163020570422.jpg?param=130y130"
            }, {
                title: "Fire",
                artist: "Said The Sky",
                mp3: "http://music.163.com/song/media/outer/url?id=435289279.mp3",
                poster: "http://p1.music.126.net/tg2zke_mrqwuOPlEIEUjGg==/18294773975127592.jpg?param=130y130"
            }];
        </script>
        <script src="${base}/dist/js/special/sakuraPlus.js"></script>
        <script src="${base}/dist/js/special/lovingHeart.js"></script>
        <script src="${base}/dist/js/special/xian.js"></script>
        <#--  跳动的时间  -->
        <script src="${base}/dist/js/special/zzsc.js"></script>
        <#-- 播放器-->
        <script src="${base}/dist/js/player/player.js"></script>
        <script src="${base}/dist/js/player/playlist.js"></script>
        <script src="${base}/dist/js/player/player_database.js"></script>

    </html>
</#macro>