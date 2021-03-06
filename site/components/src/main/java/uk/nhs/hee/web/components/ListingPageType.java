package uk.nhs.hee.web.components;

import org.apache.commons.lang.StringUtils;
import org.hippoecm.repository.HippoStdPubWfNodeType;
import uk.nhs.hee.web.repository.HEEField;

/**
 * An enumeration of Listing Page Types and its document types, sort by date field & filter value-list identifier.
 *
 * <p>Note that the listing types should be in sync
 * with the value-list {@code /content/documents/administration/valuelists/listingpagetypes}.</p>
 */
public enum ListingPageType {

    /**
     * Blog Listing
     */
    BLOG_LISTING(
            "blog",
            new String[]{"hee:blogPost"},
            Boolean.TRUE,
            HEEField.PUBLICATION_DATE.getName(),
            "blogCategories"),

    /**
     * Bulletin Listing
     */
    BULLETIN_LISTING(
            "bulletin",
            new String[]{"hee:bulletin"},
            Boolean.TRUE,
            HippoStdPubWfNodeType.HIPPOSTDPUBWF_PUBLICATION_DATE,
            "bulletinCategories"),

    /**
     * Case Study Listing
     */
    CASE_STUDY_LISTING(
            "casestudy",
            new String[]{"hee:caseStudy"},
            Boolean.TRUE,
            HippoStdPubWfNodeType.HIPPOSTDPUBWF_PUBLICATION_DATE,
            "caseStudyImpactGroups"),

    /**
     * Event Listing
     */
    EVENT_LISTING(
            "event",
            new String[]{"hee:event"},
            Boolean.TRUE,
            HEEField.DATE.getName(),
            StringUtils.EMPTY),

    /**
     * Search Listing
     */
    SEARCH_LISTING(
            "search",
            new String[]{},
            Boolean.FALSE,
            HippoStdPubWfNodeType.HIPPOSTDPUBWF_PUBLICATION_DATE,
            StringUtils.EMPTY),

    /**
     * Search Bank Listing
     */
    SEARCH_BANK_LISTING(
            "searchbank",
            new String[]{"hee:searchBank"},
            Boolean.TRUE,
            HippoStdPubWfNodeType.HIPPOSTDPUBWF_PUBLICATION_DATE,
            "searchBankTopics");


    private final String type;
    private final String[] documentTypes;
    private final boolean sortingEnabled;
    private final String sortByDateField;
    private final String filterValueListIdentifier;

    /**
     * Constructor that initialises the Listing Type (Default) Information.
     *
     * @param type                        the listing type.
     * @param documentTypes               the document types which needs to be queried to list the results.
     * @param sortingEnabled              the flag indicating whether sorting is enabled for listing or not.
     * @param sortByDateField             the date field by which search results needs to be sorted.
     * @param filterValueListIdentifier   the value-list identifier for the listing filter.
     */
    ListingPageType(
            final String type,
            final String[] documentTypes,
            final boolean sortingEnabled,
            final String sortByDateField,
            final String filterValueListIdentifier
    ) {
        this.type = type;
        this.documentTypes = documentTypes;
        this.sortingEnabled = sortingEnabled;
        this.sortByDateField = sortByDateField;
        this.filterValueListIdentifier = filterValueListIdentifier;
    }

    /**
     * Returns {@link ListingPageType} instance for the given listing {@code type}.
     *
     * @param type the listing type.
     * @return the {@link ListingPageType} instance for the given listing {@code type}.
     */
    public static ListingPageType getByName(final String type) {
        for (final ListingPageType listingPageType : ListingPageType.values()) {

            if (listingPageType.getType().equals(type)) {
                return listingPageType;
            }

        }

        throw new IllegalArgumentException(
                ListingPageType.class.getSimpleName() +
                        " ENUM type has no constant with the specified type '" + type + "'"
        );
    }

    /**
     * Returns listing type.
     *
     * @return the listing type.
     */
    public String getType() {
        return type;
    }

    /**
     * Returns document types which needs to be queried to list the results.
     *
     * @return the document types which needs to be queried to list the results.
     */
    public String[] getDocumentTypes() {
        return documentTypes;
    }

    /**
     * Returns {@code true} if sorting is enabled for listing. Otherwise, returns {@code false}.
     *
     * @return {@code true} if sorting is enabled for listing. Otherwise, returns {@code false}.
     */
    public boolean isSortingEnabled() {
        return sortingEnabled;
    }

    /**
     * Returns name of the field with which the results needs to be sorted.
     *
     * @return name of the field with which the results needs to be sorted.
     */
    public String getSortByDateField() {
        return sortByDateField;
    }

    /**
     * Returns value-list identifier for the supported filter.
     *
     * @return the value-list identifier for the supported filter.
     */
    public String getFilterValueListIdentifier() {
        return filterValueListIdentifier;
    }
}
