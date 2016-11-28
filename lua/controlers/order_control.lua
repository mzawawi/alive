local _M = {}

local cjson = require "cjson"

local model = require "models.model"

local req_method = ngx.req.get_method
local req_get_args = ngx.req.get_uri_args
local req_get_post = ngx.req.get_post_args
local req_read_body = ngx.req.read_body
local ngx_var = ngx.var

local function get_malf_select()
	local args = req_get_args()
	if args.brandID then
		ngx.say(args.brandID, type(args.brandID))
	else
		ngx.say("brandID nil")
	end
	local res = "get_malf_select world"
	ngx.say(res)
end

local function get_info_detail()
	local args = req_get_args()
	local res = "get_info_detail wrold"
	ngx.say(res)
end

local function get_order_detail()
	local res = "get_order_detail world"
	ngx.say(res)
end

local method_get_func = {
	["/order/malf"] = get_malf_select,
	["/order/info"] = get_info_detail,
	["/order/detail"] = get_order_detail
}

local method_post_func = {
	["/order/malf"] = get_malf_select,
	["/order/info"] = get_info_detail,
	["/order/detail"] = get_order_detail
}

function _M.run()
	local method = req_method()
	local uri = ngx_var.uri
	if method == "GET" then
		if method_get_func[uri] then
			method_get_func[uri]()
		else
			ngx.say("error url")
		end
	elseif method == "POST" then
		if method_post_func[uri] then
			method_post_func[uri]()
		else
			ngx.say("error url")
		end
	else
		ngx.say("error url")
	end
end

return _M