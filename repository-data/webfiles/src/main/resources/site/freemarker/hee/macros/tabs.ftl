<#assign hst=JspTaglibs["http://www.hippoecm.org/jsp/hst/core"]>

<#macro tabs tabs>
    <#if tabs??>
        <div class="nhsuk-tabs" data-module="nhsuk-tabs">
            <#if tabs.tabsContentBlock.tabTitle?has_content>
            <h2 class="nhsuk-tabs__title">${tabs.tabsContentBlock.tabTitle}</h2>
            </#if>
            <#if tabs.tabsContentBlock.tabPanel?size gt 1>
                <ul class="nhsuk-tabs__list">
                    <#list tabs.tabsContentBlock.tabPanel as tabPanel>
                        <li class="nhsuk-tabs__list-item">
                            <a class="nhsuk-tabs__tab" href="#tab-${tabPanel?index}">${tabPanel.tabTitle}</a>
                        </li>
                    </#list>
                </ul>
                <#list tabs.tabsContentBlock.tabPanel as tabPanel>
                    <div class="nhsuk-tabs__panel" id="tab-${tabPanel?index}">
                        <@hst.html hippohtml=tabPanel.tabBody/>
                    </div>
                </#list>
            </#if>
        </div>
    </#if>
</#macro>