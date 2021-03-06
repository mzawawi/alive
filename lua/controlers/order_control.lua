local _M = {}

local cjson = require "cjson"

local model = require "models.model"
local order = require "models.order"
local util = require "controlers.util"
local template = require "resty.template"
local http = require "resty.http"

local req_method = ngx.req.get_method
local req_get_args = ngx.req.get_uri_args
local req_get_post = ngx.req.get_post_args
local req_read_body = ngx.req.read_body
local ngx_var = ngx.var

local function get_malf_select()
	local args = req_get_args()
	local res = "get_malf_select world"
	--local res, err = order.get_device_by_brand_malf(args.bid, args.malfid)
	--local res, err = order.get_malf_by_brand(args.bid)

	local res, err = order.get_device_by_brand_malf(args.bid, args.malfid)
	template.render("index.html", { device = res })
	if err then
		ngx.say(err)
	else
		ngx.say(cjson.encode(res))
	end
end

local function get_info_detail()
	local args = req_get_args()
	if args.deviceID and args.colorID and args.malfID then
		local res = "get_info_detail wrold"
		ngx.say(res)
	else
		ngx.say("args error")
	end
end

local function post_order_detail()
	req_read_body()
	local args = req_get_post()
	
	ngx.say(cjson.encode(args))
end

local method_get_func = {
	["/order/malf"] = get_malf_select,
	["/order/info"] = get_info_detail
}

local method_post_func = {
	["/order/detail"] = post_order_detail
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
		ngx.say(uri)
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