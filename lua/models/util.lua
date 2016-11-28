local _M = {}

local mysql = require "resty.mysql"

local mysql_conn = {
	host = "127.0.0.1",
	port = 3306,
	database = "ngx_test",
	user = "root",
	password = "liyy",
}

function _M.query_mysql(query)
	local db, err = mysql:new()
	local res
	if not db then
		return res, err
	end
	db:set_timeout(1000)
	local ok, errcode, sqlstate
	ok, err, errcode, sqlstate = db:connect(mysql_conn)
	if not ok then
		ngx.log(ngx.ERR, "failed to connect: ", err, ": ", errcode, " ", sqlstate)
		return res, err
	end
	res, err, errcode, sqlstate = db:query(query)
	if err then
		return res, err
	end
	ok, err = db:set_keepalive(1000, 8)
	if not ok then
		ngx.log(ngx.ERR, "failed to set_keepalive: ", err)
	end
	err = nil
	return res, err
end

return _M