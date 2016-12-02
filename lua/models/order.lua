local _M = {}

local mysql = require "resty.mysql"
local util = require "models.util"

function _M.get_device_by_brand_malf(brandid, malfid)
	local sql = "SELECT DISTINCT tb_device.model FROM (tb_device ,tb_malfunction) "
					.. "INNER JOIN tb_solution ON tb_solution.deviceID = tb_device.id AND tb_solution.malfID = tb_malfunction.id "
					.. "WHERE tb_malfunction.type='" .. malfid .. "' AND tb_device.brandID='" .. brandid .. "'"
	local res, err = util.query_mysql(sql)
	ngx.say(sql)
	return res, err
end

function _M.get_detail_by_brand_malf(brandid, malfid)
	local sql = "SELECT DISTINCT tb_malfunction.maldetail FROM (tb_device ,tb_malfunction) "
				.. "INNER JOIN tb_solution ON tb_solution.deviceID = tb_device.id AND tb_solution.malfID = tb_malfunction.id "
				.. "WHERE tb_malfunction.type='" .. malfid .. "' AND tb_device.brandID='" .. brandid .. "'"
	local res, err = util.query_mysql(sql)
	ngx.say(sql)
	return res, err
end

function _M.get_malf_by_brand(brandid)
	local sql = "SELECT DISTINCT tb_malfunction.malfunction FROM (tb_device ,tb_malfunction) "
					.. "INNER JOIN tb_solution ON tb_solution.deviceID = tb_device.id AND tb_solution.malfID = tb_malfunction.id "
					.. "WHERE tb_device.brandID='" .. brandid .. "'"
	local res, err = util.query_mysql(sql)
	ngx.say(sql)
	return res, err
end

function _M.get_solu_by_device_malf(deviceid, malfid)
	local sql = "SELECT tb_solution.id, tb_device.model, tb_device.brand, tb_solution.price, tb_solution.scheme, tb_solution.discount,"
				.. "tb_malfunction.maldetail "
				.. "FROM (tb_device ,tb_malfunction) INNER JOIN tb_solution ON tb_solution.deviceID = tb_device.id AND tb_solution.malfID = tb_malfunction.id "
				.. "WHERE tb_solution.deviceID='" .. deviceid .. "AND tb_solution.malfID='" .. malfid .. "'"
	local res, err = util.query_mysql(sql)
	ngx.say(sql)
	return res, err
end


return _M