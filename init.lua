core.register_on_prejoinplayer(function(name)
	if not core.settings:get_bool("noregister", false) then return end
	local ad = core.get_auth_handler().get_auth(name)
	if not ad then
		return core.settings:get("noregister_msg") or "Sorry, new players registration is currently disabled."
	end
end)
