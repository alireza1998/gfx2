local function run(msg)
    
    local data = load_data(_config.moderation.data)
    
     if data[tostring(msg.to.id)]['settings']['antifosh'] == 'yes' then
      
    
if not is_momod(msg) then
    
    
chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msgads = 'Dont say bad words here '
   local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msgads.."\n", ok_cb, false)
	
      end
   end
end
    
return {patterns = {
"[Kk][Oo][Ss][Nn][Aa][Nn][Tt]",
"[Kk][Oo][Nn][Ii]",
"[Kk][Ii][Rr][Ii]",
"[Kk][Ii][Rr]",
"[Jj][Ee][Nn][Dd][Ee]",
"[Kk][Hh][Aa][Rr]",
"[Kk][Oo][Ss][Ii]",
"Ú©ÙˆÙ†ÛŒ",
"Ú©ÛŒØ±ÛŒ",
"Ú©Ø³Ú©Ø´",
"Ú©ÙˆÙ†Ø¯Ù‡",
"Ø¬Ù†Ø¯Ù‡",
"Ú©Ø³ Ù†Ù†Ù‡",
"Ú¯Ø§ÛŒÛŒØ¯Ù…",
"Ù†Ú¯Ø§ÛŒÛŒØ¯Ù…",
"Ø¨Ú¯Ø§",
"Ú¯Ø§ÛŒÛŒØ¯Ù†",
"Ø¯ÛŒÙˆØ«",
"Ø§ÙˆØ¨ÛŒ",
"Ù‚Ø­Ø¨Ù‡",
"Ø¨Ø³ÛŒÚ©",
"Ø³ÛŒÚ©ØªØ±",
"Ø³ÛŒÚ©",
"Ø®ÙˆØ§Ø±Ú©Ø³ØªÙ‡",
"Ø®ÙˆØ§Ø±Ú©Ø³Ø¯Ù‡",
}, run = run}
