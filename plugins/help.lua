do

function run(msg, matches)

local mods = [[ 
راهنما فارسی مدیران :
@TeleNERObot

!kick [Username | ID | Reply]        
🔶اخراج کردن فرد از گروه

!unban [Username | ID | Reply]
🔶️خارج کردن فرد از بن

!banlist
🔶لیست کسانی که بن هستند

!id [Username | Id | Reply]
🔶بدست اوردن اطلاعات فرد 

!res @username
🔶بدست اوردن ایدی با استفاده از یوزر

!res [Reply]
🔶اوردن ایدی با استفاده از ریپلی

!lock [ads | name | tag | leave | badw | member | chat | farsi | bots]
🔶قفل کردن

!unlock [ads | name | tag | leave | badw | member | chat | farsi | bots]
🔶حذف قفل 

!all
🔶همه

!addsudo
🔶اضافه کردن سودو

!set[photo | name]
🔶ثبت (اسم-عکس) برای گروه

!set [rules | about]
🔶رثبت (قوانین-درباره) برای گروه

!tagall [MSG]
تگ همه

!who
🔶مشخصات فرد

!filter [+-?] [word]
🔶فیلتر کردن

!set [value] [MSG]
🔶ثبت

!info [Username | ID | Reply]
🔶مشخصات

!plugins [-+] (Plug Name) chat
🔶ثبت و لغو پلاگین

....................................................................................
به علاوه تمامی دستورات رنک :
member
....................................................................................
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی

 ]]

 
 local admin = [[ 
 
 help owner:
 
 @TeleNERObot
 
 !banall [Reply | ID]
 🔶بن کردن در همه ی گروه های ربات
 
 !unbanall [ID]
 🔶لغو بن در همه ی گروه های ربات
 
 !add 
🔶ادد کردن ربات در گروه
 
 !rem
 
 !leave
 🔶لفت دادن ربات در گروه
 
 !setowner [ID | Reply]
 🔶اضافه کردن ادمین به گروه
 
 !kill chat [ID]
 🔶حمله به چت
 
 !bc [GP-ID] [MSG]
 🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶
 
 !all [GP-ID]
 🔶همه
 ....................................................................................
 به علاوه تمامی دستورات رنک های :
 owner
 و
 mod
 و
 member
....................................................................................
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 
 ]]
 
 local owner = [[
 
 راهنمای فارسی صاحبان گروه :
 @TeleNERObot
 
 !promote [Reply | ID | Username]
 🔶ادمین کردن کسی در گروه 
 
 !demote [Reply | ID | Username]
 🔶برکنار کردن ادمین در گروه
 
 !setowner [ID | Reply]
 🔶اضافه کردن اونر
 
 !addsudo
 🔶اضافه کردن سودو
 
 !setrank [Reply | ID | Username]
 🔶انتخاب رنک در گروه
 ....................................................................................
 به علاوه تمامی دستورات رنک های :
 mod
 و
 member
 ....................................................................................
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 
 ]]
 
 local member = [[
 
 راهنمای فارسی عضو ها :
 @TeleNERObot
 
 !calc [formula]
 🔶حل مسائل ریاضی
 
 !get [Value]
 🔶🔶🔶🔶🔶🔶🔶🔶
 
 !filterlist
 🔶لیست کلمات فیلتر شده
 
 !info
 🔶مشخصات فرد
 
 !id
 🔶ایدی
 
 !me
 🔶اطلاعات من
 
 !voice [MSG]
 🔶تبدیل متن به ویس
 
 !time
 🔶ساعت
 
 !time [Area]
 🔶ساعت شهر
 
 !tex [Msg]
 🔶🔶🔶🔶🔶🔶
 
 !feedback [msg]
 🔶ارسال فیدبک به سودو ربات
 
 !share
 🔶شر کردن شماره بات

 !sticker [TXT]
 🔶استیکر به متن
 ....................................................................................
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 
 ]]
 
 local sudo = [[
 
 راهنما فارسی سودو ها :
 @TeleNERObot
 
 !addadmin [ID | Username]
 🔶اضافه کردن ادمین
 
 !removeadmin [ID | Username]
 🔶حذف ادمین
 
 !creategroup [Name]
 🔶ساخت گروه 
 
 !up [Name.format] [Text]
 🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶
 
 !dl [name.format]
 دانلود کردن
 
 !echo> [name.format] [Text]
 🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶🔶
 
 !invite [Username | ID | Reply]
 اینوایت کردن فرد به گروه
 
 !stats bot
 🔶امار ربات
 
 !plugins 
 🔶پلاگین ها
 
 !plugins [+-] [Plugname]
 🔶اضافه و لغو کردن پلاگین
 
 !reload
 🔶🔶🔶🔶🔶
 
 ....................................................................................
 به علاوه دسترسی به تمامی دستورات رنک های دیگر
 ....................................................................................
 جهت دریافت راهنمای رنک های دیگر میتوانید از دستورات زیر استفاده کنید :
 
 !help owner 
 راهنمای صاحبان
 
 !help mod
راهنمای مدیران

!help member
راهنمای اعضای معمولی
 ]]
 
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return member
    end 
end

    
return {
 
  patterns = {
    "^!(help)$",
	"^([Hh]elp)$",
	"^/([Hh]elp)$",
	
	"^!([Hh]elp) (mod)$",
	"^!([Hh]elp) (owner)$",
	"^!([Hh]elp) (member)$",
  }, 
  run = run 
}

end
