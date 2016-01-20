local function run(msg)
if msg.text == "hi" then
	return "سلام.لطفا فارسی چت کن دوست عزیزم"
end
if msg.text == "Hi" then
	return "سلام.لطفا از این پس فارسی چت کن"
end
if msg.text == "Hello" then
	return "سلام.اگه میشه فارسی چت کن.راستی خودتو معرفی میکنی؟"
end
if msg.text == "hello" then
	return "سلام دوست عزیزم.خوشحالم از آشنایی با شما"
end
if msg.text == "Salam" then
	return "سلام .من نمیشناسمت اصل میدی؟"
end
if msg.text == "salam" then
	return "سلام.من نمیشناسمت اصل میدی؟"
end
if msg.text == "alireza" then
	return "علیرضا رو میشناسم .ادمین ربات هستند"
end
if msg.text == "Alireza" then
	return "با علیرضا ادمین ربات کار داری؟"
end
if msg.text == "ALIREZA" then
	return "بابایی بیا دارن صدات میکنن"
end
if msg.text == "Gfx" then
	return "انگار منو صدا زدی.بله درخدمتم"
end
if msg.text == "gfx" then
	return "سلام.انگار منو صدا زدی.چه کمکی از دست من بر میاد؟"
end
if msg.text == "bot" then
	return "بله.با من کاری داری؟"
end
if msg.text == "Bot" then
	return "چرا منو صدا میکنی؟کاری داری ؟"
end
if msg.text == "سلام" then
	return "سلام دوست عزیزم.جه کمکی از دست من بر میاد برات انجام بدم؟"
end
if msg.text == "Bye" then
	return "یک بار خداحفظی کردی که"
end
if msg.text == "bye" then
	return "خدانگهدار دوست عزیز"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Aa]lireza$",
		"^ALIREZA$",
		"^[Bb]ot$",
		"^[Gg]fx$",
		"^[Bb]ye$",
		"^سلام$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
