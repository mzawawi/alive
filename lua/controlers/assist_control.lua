local _M = {}

local template = require "resty.template"
local order = require "models.order"

local function get_index_html()
	local brandid = "1"
	local iphonemalf, iphoneerr = order.get_malf_by_brand(brandid)
	ngx.say(type(iphonemalf))
	brandid = "2"
	local ipadmalf, ipaderr = order.get_malf_by_brand(brandid)
	ngx.say(type(ipadmalf))
	template.render("index.html", { iphonemalf = iphonemalf, ipadmalf = ipadmalf})
end

local function get_error_html()

end

local function get_about_html()

end

function _M.run()
	return get_index_html()
end

return _M