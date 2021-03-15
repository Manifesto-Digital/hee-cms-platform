<#-- @ftlvariable name="categoriesMap" type="java.util.Map" -->
<#-- @ftlvariable name="selectedCategories" type="java.util.List" -->
<#macro checkboxGroup title name itemsMap selectedItemsList>
    <div class="nhsuk-form-group">
        <fieldset class="nhsuk-fieldset">
            <legend class="nhsuk-fieldset__legend">
                ${title}
            </legend>
            <div class="nhsuk-checkboxes">
                <#list itemsMap as value, text >
                    <div class="nhsuk-checkboxes__item">
                        <#if selectedItemsList?seq_contains("${value}")>
                            <#assign  isSelected = 'checked'/>
                        <#else>
                            <#assign  isSelected = ''/>
                        </#if>
                        <input class="nhsuk-checkboxes__input" name="${name}"
                               type="checkbox"
                               value="${value}" ${isSelected}>
                        <label class="nhsuk-label nhsuk-checkboxes__label"
                               for="${name}">
                            ${text?html}
                        </label>
                    </div>
                </#list>
            </div>
        </fieldset>
    </div>
</#macro>