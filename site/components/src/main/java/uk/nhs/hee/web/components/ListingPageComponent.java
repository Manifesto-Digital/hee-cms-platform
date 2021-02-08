package uk.nhs.hee.web.components;

import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;
import org.hippoecm.hst.core.parameters.ParametersInfo;
import org.onehippo.cms7.essentials.components.EssentialsDocumentComponent;
import uk.nhs.hee.web.components.info.ListingPageComponentInfo;

@ParametersInfo(type = ListingPageComponentInfo.class)
public class ListingPageComponent extends EssentialsDocumentComponent {

    @Override
    public void doBeforeRender(final HstRequest request, final HstResponse response) {
        super.doBeforeRender(request, response);
    }
}