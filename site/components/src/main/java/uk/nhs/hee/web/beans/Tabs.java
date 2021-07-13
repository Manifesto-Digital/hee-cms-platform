package uk.nhs.hee.web.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import java.util.List;
import uk.nhs.hee.web.beans.TabPanel;

@HippoEssentialsGenerated(internalName = "hee:tabs")
@Node(jcrType = "hee:tabs")
public class Tabs extends BaseDocument {
    @HippoEssentialsGenerated(internalName = "hee:tabTitle")
    public String getTabTitle() {
        return getSingleProperty("hee:tabTitle");
    }

    @HippoEssentialsGenerated(internalName = "hee:tabPanel")
    public List<TabPanel> getTabPanel() {
        return getChildBeansByName("hee:tabPanel", TabPanel.class);
    }
}
