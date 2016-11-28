local _M = {}

local mysql = require "resty.mysql"
local util = require "models.util"


function _M.get_model_list()
	local sql = "select id, model, color, other from tb_model"
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.add_model_list(args)
	local sql = "insert tb_model(model, color, other) values ('" .. args.model .. "','" .. args.color .. "','" .. args.other .. "')"
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.update_model_list(args)
	local sql = "update tb_model set model='" .. args.model .. "', color='" .. args.color .. "', other='" .. args.other .."' where id=" .. args.id
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.delete_model_list(id)
	local sql = "detele from tb_model where id=" .. id
	local res, err = util.query_mysql(sql)
	return res, err
end

return _M