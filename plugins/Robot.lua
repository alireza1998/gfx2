local function pre_process(msg)
	local receiver = get_receiver(msg)
	
	-- If sender is moderator then re-enable the channel
	--if is_sudo(msg) then
	if is_momod(msg) then
	  if msg.text == "[!/]bot on" then
	    enable_channel(receiver)
	  end
	end

  if is_channel_disabled(receiver) then
  	msg.text = ""
  end

	return msg
end

local function run(msg, matches)
	local receiver = get_receiver(msg)
	-- Enable a channel
	if matches[1] == 'on' then
		return enable_channel(receiver)
	end
	-- Disable a channel
	if matches[1] == 'off' then
		return disable_channel(receiver)
	end
end

return {
	description = "Robot Switch", 
	usage = {
		"/bot on : enable robot in group",
		"/bot off : disable robot in group" },
	patterns = {
		"^[!/]bot? (on)",
		"^[!/]bot? (off)" }, 
	run = run,
	privileged = true,
	--moderated = true,
	pre_process = pre_process
}
