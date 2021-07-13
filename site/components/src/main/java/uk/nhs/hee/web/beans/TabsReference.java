package uk.nhs.hee.web.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoCompound;
import org.hippoecm.hst.content.beans.standard.HippoBean;

@HippoEssentialsGenerated(internalName = "hee:tabsReference")
@Node(jcrType = "hee:tabsReference")
public class TabsReference extends HippoCompound {
    @HippoEssentialsGenerated(internalName = "hee:tabsContentBlock")
    public HippoBean getTabsContentBlock() {
        return getLinkedBean("hee:tabsContentBlock", HippoBean.class);
    }
}
