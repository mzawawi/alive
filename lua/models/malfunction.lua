local _M = {}

local mysql = require "resty.mysql"
local util = require "models.util"

function _M.get_malf_list()
	local sql = "select id, malfunction, maldetail, descripe from tb_malfunction"
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.add_malf_list(args)
	local sql = "insert tb_malfunction(malfunction, maldetail, descripe) values ('" .. args.malfunction .. "','" .. args.maldetail .. "','" .. args.descripe .. "')"
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.update_malf_list()
	local sql = "update tb_malfunction set malfunction='" .. args.malfunction .. "', maldetail='" .. args.maldetail
			.. "', descripe='" .. args.descripe .."' where id=" .. args.id
	local res, err = util.query_mysql(sql)
	return res, err
end

function _M.delete_malf_list(id)
	local sql = "detele from tb_malfunction where id=" .. id
	local res, err = util.query_mysql(sql)
	return res, err
end

return _M