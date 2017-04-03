module ApplicationHelper
    def title_set(page_title='')
        baseTitle = "RoR App II"
        if page_title.empty?
            baseTitle
        else
            page_title + " | " + baseTitle
        end
    end
end
