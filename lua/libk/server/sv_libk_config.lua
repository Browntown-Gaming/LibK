LibK.SQL = {}
--SQL Configuration
LibK.SQL.UseMysql = true --Set to true to use MSQL, false will use SQLite(sv.db)
--MySQL Settings
if not BTGamingDatabases then
	include("btgamingdatabases/config.lua")
end
local sqlcreds = BTGamingDatabases("playbtgc_btv_pointshop")

LibK.SQL.Host = sqlcreds["host"]
LibK.SQL.Port = sqlcreds["port"]
LibK.SQL.User = sqlcreds["username"]
LibK.SQL.Password = sqlcreds["password"]
LibK.SQL.Database = "playbtgc_btv_pointshop"
