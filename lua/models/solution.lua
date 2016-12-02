local _M = {}

local mysql = require "resty.mysql"
local util = require "models.util"

function _M.get_solution_list()
	local sql = "select id, deviceID, malfID, scheme, warranty, price, discount from tb_solution"
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.add_solution_list(args)
	local sql = "insert tb_solution(modelID, malfID, scheme, warranty, price, discount) values ('"
		.. args.modelID .. "," .. args.malfID .. "," .. args.scheme .. "," .. args.warranty .. "," .. args.price .. "," .. args.discount .. ")"
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.update_solution_list(args)
	local sql = "update tb_solution set modelID='" .. args.modelID .. "', malfID='" .. args.malfID
			.. "', scheme='" .. args.scheme .. "', warranty='" .. args.warranty .. "', price='" .. args.price
			.. "', discount='" .. args.discount .."' where id=" .. args.id
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.delete_solution_list(id)
	local sql = "detele from tb_solution where id=" .. id
	local res, err = util.query_mysql(sql)
	return res, err
end

return _M