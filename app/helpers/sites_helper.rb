module SitesHelper
	def sample_helper_method(site_id)
		site_id*100
	end

	def html_demo
		"<h1>hello html demo</h1>".html_safe
		
	end
end	