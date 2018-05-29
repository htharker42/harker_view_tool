
 module HarkerViewTool
		class Renderer 
			def self.copywrite name, msg
			"<h6> &copy #{Time.now.year} | <b> #{name} </b> #{msg}</h6>".html_safe
			end
		end
end

