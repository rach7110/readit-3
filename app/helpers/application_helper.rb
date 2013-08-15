module ApplicationHelper

	def page_title_links(link)
		if link.name == true
			"#{link.name} - Get Smart | Readit"
		else
			"Get Smart | Readit"
		end
	end

end
