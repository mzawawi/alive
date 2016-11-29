local _M = {}

local lrucache = require "resty.lrucache"

local phone4_cache = lrucache.new(64)
local phone4S_cache = lrucache.new(64)
local phone5_cache = lrucache.new(64)
local phone5C_cache = lrucache.new(64)
local phone5S_cache = lrucache.new(64)
local phoneSE_cache = lrucache.new(64)
local phone6_cache = lrucache.new(64)
local phone6P_cache = lrucache.new(64)
local phone6S_cache = lrucache.new(64)
local phone6SP_cache = lrucache.new(64)
local phone7_cache = lrucache.new(64)
local phone7P_cache = lrucache.new(64)

if not phone4_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end
if not phone4S_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phone5_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end
if not phone5C_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phoneSE_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end
if not phone6_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phone6P_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phone6S_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phone6SP_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phone7_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

if not phone7P_cache then
	return error("failed to create the cache: " .. (err or "unknown"))
end

phone4_cache:set(1, "黑色")
phone4_cache:set(2, "白色")

phone4S_cache:set(1, "黑色")
phone4S_cache:set(2, "白色")

phone5_cache:set(1, "银（白色屏幕）")
phone5_cache:set(2, "灰（黑色屏幕）")

phone5C_cache:set(1, "白色")
phone5C_cache:set(2, "粉色")
phone5C_cache:set(3, "黄色")
phone5C_cache:set(4, "蓝色")
phone5C_cache:set(5, "绿色")

phone5S_cache:set(1, "银（白色屏幕）")
phone5S_cache:set(2, "灰（黑色屏幕）")
phone5S_cache:set(3, "金（白色屏幕）")

phoneSE_cache:set(1, "灰色")
phoneSE_cache:set(2, "银色")
phoneSE_cache:set(3, "金色")
phoneSE_cache:set(4, "玫瑰金色")

phone6_cache:set(1, "银（白色屏幕）")
phone6_cache:set(2, "灰（黑色屏幕）")
phone6_cache:set(3, "金（白色屏幕）")

phone6P_cache:set(1, "银（白色屏幕）")
phone6P_cache:set(2, "灰（黑色屏幕）")
phone6P_cache:set(3, "金（白色屏幕）")

phone6S_cache:set(1, "灰（黑色屏幕）")
phone6S_cache:set(2, "银（白色屏幕）")
phone6S_cache:set(3, "金（白色屏幕）")
phone6S_cache:set(4, "粉（白色屏幕）")

phone6SP_cache:set(1, "灰（黑色屏幕）")
phone6SP_cache:set(2, "银（白色屏幕）")
phone6SP_cache:set(3, "金（白色屏幕）")
phone6SP_cache:set(4, "粉（白色屏幕）")

phone7_cache:set(1, "灰（黑色屏幕）")
phone7_cache:set(2, "银（白色屏幕）")
phone7_cache:set(3, "金（白色屏幕）")
phone7_cache:set(4, "粉（白色屏幕）")
phone7_cache:set(5, "粉（白色屏幕）")

phone7P_cache:set(1, "灰（黑色屏幕）")
phone7P_cache:set(2, "银（白色屏幕）")
phone7P_cache:set(3, "金（白色屏幕）")
phone7P_cache:set(4, "粉（白色屏幕）")
phone7P_cache:set(5, "粉（白色屏幕）")

local phone_color = {
	["iPhone 4"] = phone4_cache,
	["iPhone 4S"] = phone4S_cache,
	["iPhone 5"] = phone5_cache,
	["iPhone 5C"] = phone5C_cache,
	["iPhone 5S"] = phone5S_cache,
	["iPhone 5SE"] = phone5SE_cache,
	["iPhone 6"] = phone6_cache,
	["iPhone 6P"] = phone6P_cache,
	["iPhone 6S"] = phone6S_cache,
	["iPhone 6SP"] = phone6SP_cache,
	["iPhone 7"] = phone7_cache,
	["iPhone 7P"] = phone7P_cache
}

local iphone_map = {
	["1"] = "iPhone 4",
	["2"] = "iPhone 4S",
	["3"] = "iPhone 5",
	["4"] = "iPhone 5S",
	["5"] = "iPhone 5C",
	["6"] = "iPhone 5SE",
	["7"] = "iPhone 6",
	["8"] = "iPhone 6P",
	["9"] = "iPhone 6S",
	["10"] = "iPhone 6SP",
	["11"] = "iPhone 7",
	["12"] = "iPhone 7P",
}

local brand_type = {
	["1"] = "iPhone",
	["2"] = "iPad"
}

local brand_phone_map = {
	["1"] = iphone_map
}

function _M.get_phone_color(phoneid)

end

function _M.get_phone(brand)
	if brand_type[brand] and brand_phone_map[brand] then
		return brand_phone_map[brand]
	else
		return nil
	end
end

function _M.get_brand()
	return brand_type
end

return _M