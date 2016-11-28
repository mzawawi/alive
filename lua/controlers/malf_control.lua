local _M = {}

local cjson = require "cjson"

local model = require "models.malfunction"

local req_method = ngx.req.get_method
local req_get_args = ngx.req.get_uri_args
local req_get_post = ngx.req.get_post_args
local req_read_body = ngx.req.read_body

local function get_model()
	local args = req_get_args()
	local res, err = model.get_malf_list()
	if not err then
		local jsonres = cjson.encode(res)
		ngx.print(jsonres)
	else
		ngx.print(err)
	end
end

local function add_model()
	req_read_body()
	local args = req_get_post()
	local res, err = model.add_malf_list(args)
	if not err then
		ngx.say("add_model")
	else
		ngx.say(err)
	end
end

local function update_model()
	ngx.say("update_model")
end

local function delete_model()
	ngx.say("delete_model")
end

local method_func = {
	GET = get_model,
	POST = add_model,
	PUT = update_model,
	DELETE = delete_model
}

function _M.run()
	local method = req_method()
	method_func[method]()
end

return _M