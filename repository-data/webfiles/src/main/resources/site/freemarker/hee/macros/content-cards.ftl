<#assign hst=JspTaglibs["http://www.hippoecm.org/jsp/hst/core"] >

<#macro contentCards contentCards>
    <#if contentCards.header?has_content>
        <div class="nhsuk-u-reading-width">
            <h2>${contentCards.header}</h2>
        </div>
    </#if>
    <ul class="nhsuk-grid-row nhsuk-card-group">
        <#list contentCards.items as contentCard>
            <#if contentCard.header.document??>
                <@hst.link hippobean=contentCard.header.document var="linkURL"/>
            <#else>
                <#assign openInANewWindow=true />
                <#assign linkURL="${contentCard.header.url}" />
            </#if>
            <#if !(linkURL?has_content)>
                <#continue>
            </#if>
            <li class="nhsuk-grid-column-one-third nhsuk-card-group__item">
                <div class="nhsuk-card nhsuk-card--clickable">
                    <div class="nhsuk-card__content">
                        <h3 class="nhsuk-card__heading nhsuk-heading-m">
                            <a class="nhsuk-card__link"
                               href="${linkURL}" ${openInANewWindow?then('target="_blank"', '')}>${contentCard.header.text}</a>
                        </h3>
                        <p class="nhsuk-card__description">${contentCard.description}</p>
                    </div>
                </div>
            </li>
        </#list>
    </ul>
</#macro>