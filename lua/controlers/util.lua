local _M = {}

local lrucache = require "resty.lrucache"
local cjson = require "cjson"

local iphone4_color = {
	["1"] = "黑色",
	["2"] = "白色",
}

local iphone4S_color = {
	["1"] = "黑色",
	["2"] = "白色",
}

local iphone5_color = {
	["1"] = "银（白色屏幕）",
	["2"] = "灰（黑色屏幕）",
}

local iphone5C_color = {
	["1"] = "白色",
	["2"] = "粉色",
	["3"] = "黄色",
	["4"] = "蓝色",
	["5"] = "绿色"
}

local iphone5S_color = {
	["1"] = "银（白色屏幕）",
	["2"] = "灰（黑色屏幕）",
	["3"] = "金（白色屏幕）",
}

local iphoneSE_color = {
	["1"] = "灰色",
	["2"] = "银色",
	["3"] = "金色",
	["4"] = "玫瑰金色"
}

local iphone6_color = {
	["1"] = "银（白色屏幕）",
	["2"] = "灰（黑色屏幕）",
	["3"] = "金（白色屏幕）"
}


local iphone6P_color = {
	["1"] = "银（白色屏幕）",
	["2"] = "灰（黑色屏幕）",
	["3"] = "金（白色屏幕）"
}

local iphone6S_color = {
	["1"] = "灰（黑色屏幕）",
	["2"] = "银（白色屏幕）",
	["3"] = "金（白色屏幕）",
	["4"] = "粉（白色屏幕）"
}

local iphone6SP_color = {
	["1"] = "灰（黑色屏幕）",
	["2"] = "银（白色屏幕）",
	["3"] = "金（白色屏幕）",
	["4"] = "粉（白色屏幕）"
}

local iphone7_color = {
	["1"] = "金色",
	["2"] = "玫瑰金色",
	["3"] = "银色",
	["4"] = "黑色",
	["4"] = "亮黑色"
}

local iphone7P_color = {
	["1"] = "金色",
	["2"] = "玫瑰金色",
	["3"] = "银色",
	["4"] = "黑色",
	["4"] = "亮黑色"
}

local phone_color_map = {
	["iPhone 4"] = iphone4_color,
	["iPhone 4S"] = iphone4S_color,
	["iPhone 5"] = iphone5_color,
	["iPhone 5C"] = iphone5C_color,
	["iPhone 5S"] = iphone5S_color,
	["iPhone 5SE"] = iphone5SE_color,
	["iPhone 6"] = iphone6_color,
	["iPhone 6P"] = iphone6P_color,
	["iPhone 6S"] = iphone6S_color,
	["iPhone 6SP"] = iphone6SP_color,
	["iPhone 7"] = iphone7_color,
	["iPhone 7P"] = iphone7P_color
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

local brand_color_map = {
	["1"] = phone_color_map
}

function _M.get_phone_color(brand, phoneid)
	local res = brand_color_map[brand]
	local phone = iphone_map[phoneid]
	ngx.say(cjson.encode(res))
	if brand_color_map[brand] and iphone_map[phoneid] then
		return brand_color_map[brand][iphone_map[phoneid]]
	else
		return nil
	end
end

function _M.get_brand_color(brand)
	return brand_color_map[brand]
end

function _M.get_brand()
	return brand_type
end

function _M.get_brand_phone(brand)
	if brand_type[brand] and brand_phone_map[brand] then
		return brand_phone_map[brand]
	else
		return nil
	end
end

return _M