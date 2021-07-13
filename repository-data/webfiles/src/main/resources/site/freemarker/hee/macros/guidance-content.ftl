<#include "../../include/imports.ftl">
<#import "../macros/components.ftl" as hee>

<#macro guidance guidanceDocument showTitle=true>
<#-- @ftlvariable name="guidanceDocument" type="uk.nhs.hee.web.beans.Guidance" -->
    <#if guidanceDocument??>
        <div class="nhsuk-width-container">
            <#if showTitle>
                <div class="nhsuk-grid-row">
                    <div class="nhsuk-grid-column-two-thirds">
                        <h1>${guidanceDocument.title}</h1>
                    </div>
                </div>
            </#if>

            <article>
                <div class="nhsuk-grid-row">
                    <div class="nhsuk-grid-column-two-thirds">
                        <section class="nhsuk-page-content__section-one">
                            <div class="nhsuk-page-content">
                                <p>${guidanceDocument.summary}</p>
                                <#if guidanceDocument.contentBlocks??>
                                    <#list guidanceDocument.contentBlocks as block>
                                        <#switch block.getClass().getName()>
                                            <#case "org.hippoecm.hst.content.beans.standard.HippoFacetSelect">
                                                <#if block.referencedBean?? && hst.isBeanType(block.referencedBean, 'uk.nhs.hee.web.beans.ImageSetWithCaption')>
                                                    <@hee.imageWithCaption imageWithCaption=block.referencedBean/>
                                                </#if>
                                                <#break>
                                            <#case "org.hippoecm.hst.content.beans.standard.HippoHtml">
                                                <@hst.html hippohtml=block/>
                                                <#break>
                                            <#case "uk.nhs.hee.web.beans.RichTextReference">
                                                <@hst.html hippohtml=block.richTextBlock.html/>
                                                <#break>
                                            <#case "uk.nhs.hee.web.beans.StatementBlock">
                                                <@hee.statementBlock block=block/>
                                                <#break>
                                            <#case "uk.nhs.hee.web.beans.ActionLink">
                                                <@hee.actionLink actionLink=block/>
                                                <#break>
                                            <#case "uk.nhs.hee.web.beans.YellowAlertBlock">
                                                <@hee.yellowAlertBlock block=block/>
                                                <#break>
                                            <#case "uk.nhs.hee.web.beans.Contact">
                                                <@hee.contact block=block/>
                                                <#break>
                                            <#case "uk.nhs.hee.web.beans.TabsReference">
                                                <@hee.tabs tabs=block/>
                                                <#break>
                                            <#default>
                                        </#switch>
                                    </#list>
                                </#if>

                                <@hee.lastNextReviewedDate lastNextReviewedDate=guidanceDocument.pageLastNextReview/>
                            </div>
                        </section>
                    </div>

                    <#if guidanceDocument.rightHandBlocks??>
                        <#list guidanceDocument.rightHandBlocks as block>
                            <#switch block.getClass().getName()>
                                <#case "uk.nhs.hee.web.beans.QuickLinks">
                                     <@hee.quickLinks quickLinks=block/>
                                    <#break>
                                <#case "uk.nhs.hee.web.beans.ContactCardReference">
                                    <@hee.contactCard card=block.content/>
                                    <#break>
                                <#case "uk.nhs.hee.web.beans.ExternalLinksCardReference">
                                    <@hee.externalLinksCard card=block.externalLinksCard/>
                                    <#break>
                                <#case "uk.nhs.hee.web.beans.FileLinksCardReference">
                                    <@hee.fileLinksCard card=block.fileLinksCard/>
                                    <#break>
                                <#case "uk.nhs.hee.web.beans.CtaCardReference">
                                    <@hee.ctaCard ctaCard=block/>
                                    <#break>
                                <#default>
                            </#switch>
                        </#list>
                    </#if>

                    <div class="nhsuk-grid-column-full nhsuk-section__content">
                        <@hee.contentCards contentCards=guidanceDocument.relatedContent/>
                    </div>
                </div>
            </article>
        </div>
        </main>
    </#if>
</#macro>
