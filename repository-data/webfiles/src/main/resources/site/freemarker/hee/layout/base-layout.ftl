<!doctype html>
<#include "../../include/imports.ftl">
<#assign organizationName = "${hstRequestContext.resolvedMount.mount.channelInfo.organizationName}">
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>${hstRequestContext.resolvedSiteMapItem.pageTitle?has_content?then(hstRequestContext.resolvedSiteMapItem.pageTitle, hstRequestContext.contentBean.title)} | ${organizationName}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Styles -->
    <link rel="stylesheet" href="static/css/nhsuk-4.1.0.min.css" type="text/css"/>
    <#if hstRequest.requestContext.channelManagerPreviewRequest>
      <link rel="stylesheet" href="<@hst.webfile  path="/css/cms-request.css"/>" type="text/css"/>
    </#if>

    <!-- Scripts -->
    <script src="static/js/nhsuk-4.1.0.min.js" defer></script>

    <!-- Favicons -->
    <link rel="shortcut icon" href="static/assets/favicons/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="static/assets/favicons/apple-touch-icon-180x180.png">
    <link rel="mask-icon" href="static/assets/favicons/favicon.svg" color="#005eb8">
    <link rel="icon" sizes="192x192" href="static/assets/favicons/favicon-192x192.png">
    <meta name="msapplication-TileImage" content="static/assets/favicons/mediumtile-144x144.png">
    <meta name="msapplication-TileColor" content="#005eb8">
    <meta name="msapplication-square70x70logo" content="static/assets/favicons/smalltile-70x70.png">
    <meta name="msapplication-square150x150logo" content="static/assets/favicons/mediumtile-150x150.png">
    <meta name="msapplication-wide310x150logo" content="static/assets/favicons/widetile-310x150.png">
    <meta name="msapplication-square310x310logo" content="static/assets/favicons/largetile-310x310.png">

    <@hst.headContributions categoryExcludes="htmlBodyEnd, scripts" xhtml=true/>
  </head>
  <body>
    <script>document.body.className = ((document.body.className) ? document.body.className + ' js-enabled' : 'js-enabled');</script>

    <@hst.include ref="header"/>
    <main id="maincontent" role="main">
        <@hst.include ref="main"/>
    </main>
    <@hst.include ref="footer"/>

    <@hst.headContributions categoryIncludes="htmlBodyEnd, scripts" xhtml=true/>
  </body>
</html>