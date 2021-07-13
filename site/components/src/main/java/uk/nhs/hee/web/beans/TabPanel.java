package uk.nhs.hee.web.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoCompound;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

@HippoEssentialsGenerated(internalName = "hee:tabPanel")
@Node(jcrType = "hee:tabPanel")
public class TabPanel extends HippoCompound {
    @HippoEssentialsGenerated(internalName = "hee:tabTitle")
    public String getTabTitle() {
        return getSingleProperty("hee:tabTitle");
    }

    @HippoEssentialsGenerated(internalName = "hee:tabBody")
    public HippoHtml getTabBody() {
        return getHippoHtml("hee:tabBody");
    }
}
