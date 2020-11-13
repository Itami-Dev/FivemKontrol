local sonveri = nil
ESX = nil
if Config.RP then
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end
function DiscordRequest(method, endpoint, jsondata)
    local data = nil
    PerformHttpRequest("https://discordapp.com/api/"..endpoint, function(errorCode, resultData, resultHeaders)
		data = {data=resultData, code=errorCode, headers=resultHeaders}
    end, method, #jsondata > 0 and json.encode(jsondata) or "", {["Content-Type"] = "application/json", ["Authorization"] = "Bot " .. Config.BotToken})

    while data == nil do
        Citizen.Wait(0)
    end
	
    return data
end
Citizen.CreateThread(function()
while true do 
  Citizen.Wait(600000)
end
end)
function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

function bosluk (inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end
function GetRealPlayerName(playerId)
    if Config.RP then
	local xPlayer = ESX.GetPlayerFromId(playerId)
	return xPlayer.getName()
	else
	return "ESX HENÜZ AKTİFLEŞTİRİLMEMİŞ"
	end
end
function ExecuteCOMM(command)
if string.starts(command,Config.Prefix) then
-- Oyuncu Sayısı Çek
if string.starts(command,Config.Prefix .. "oyuncusayısı") then
  webhookcalistir("Sunucu Durumu","Sunucuda Toplam Oyuncu Oynuyor : " .. GetNumPlayerIndices(),14221535)
-- Oyuncu Atma
elseif string.starts(command,Config.Prefix .. "at") then

localyazit = bosluk(command," ")

if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
webhookcalistir("İşlem Başarılı!", "Oyuncu Başarıyla Kicklendi! :  " .. GetPlayerName(yazi[2]),65280)
DropPlayer(yazi[2],"Discord Yetkilisi Tarafından Oyundan Atıldınız! Destek Odasına Giriş Yapın!")


else

webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)

end



-- Yemek Ver
elseif string.starts(command,Config.Prefix .. "yemekver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")

   
   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          


    if yazi[3] ~= nil then



      local xPlayer = ESX.GetPlayerFromId(yazi[2])



         
          xPlayer.addInventoryItem("bread", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Yemek Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Yemek Vericeğinizi Belirtin!",16711680)
    
    
          end



     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
     end
  


  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end




 -- Su Ver
elseif string.starts(command,Config.Prefix .. "suver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")




   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

      local xPlayer = ESX.GetPlayerFromId(yazi[2])



      if yazi[3] ~= nil then





         
          xPlayer.addInventoryItem("water", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Su Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


      else 


      webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Su Vericeğinizi Belirtin!",16711680)


      end

     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)

     end
  




  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end




 -- Telsiz Ver
elseif string.starts(command,Config.Prefix .. "radio") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")

   
   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          


    if yazi[3] ~= nil then



      local xPlayer = ESX.GetPlayerFromId(yazi[2])


         
          xPlayer.addInventoryItem("radio", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Telsiz Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


      
        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Telsiz Vericeğinizi Belirtin!",16711680)
    
    
          end




     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
  

     end


  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end


 -- Sopa Ver
elseif string.starts(command,Config.Prefix .. "sopaver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")

   
   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          



    if yazi[3] ~= nil then


      local xPlayer = ESX.GetPlayerFromId(yazi[2])


         
          xPlayer.addInventoryItem("WEAPON_BAT", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Sopa Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Sopa Vericeğinizi Belirtin!",16711680)
    
    
          end



     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   

  


  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end



 -- Levye Ver
elseif string.starts(command,Config.Prefix .. "levyever") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")

   
   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

    if yazi[3] ~= nil then



      local xPlayer = ESX.GetPlayerFromId(yazi[2])


         
          xPlayer.addInventoryItem("WEAPON_CROWBAR", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Levye Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Crowbar Vericeğinizi Belirtin!",16711680)
    
    
          end  



     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   

  


  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end





  -- Telefon Ver
elseif string.starts(command,Config.Prefix .. "telefonver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")

   
   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          


    if yazi[3] ~= nil then



      local xPlayer = ESX.GetPlayerFromId(yazi[2])


         
          xPlayer.addInventoryItem("blue_phone", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Telefon Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Telefon Vericeğinizi Belirtin!",16711680)
    
    
          end



     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   

  


  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end



-- Pistol Ver
elseif string.starts(command,Config.Prefix .. "tabancaver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ")

   
   if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

    if yazi[3] ~= nil then



      local xPlayer = ESX.GetPlayerFromId(yazi[2])


         
          xPlayer.addInventoryItem("WEAPON_PISTOL", yazi[3])
         
      
    

          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla PISTOL Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)


      
        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Pistol Vericeğinizi Belirtin!",16711680)
    
    
          end


     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   

  


  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end








-- Özel İtem Ver
elseif string.starts(command,Config.Prefix .. "özelitemver") then
	
  if Config.RP then
  
   local yazi = bosluk(command," ", "  ","   ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

      local xPlayer = ESX.GetPlayerFromId(yazi[2])



      if yazi[4] ~= nil then



      xPlayer.addInventoryItem(yazi[3], yazi[4])
         



          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla İtem Gönderildi! :  " .. GetPlayerName(yazi[2]),65280)



        else 


          webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar İtem Vericeğinizi Belirtin!",16711680)
    
    
          end


   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   
  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end





-- Oyuncu Öldürme

elseif string.starts(command,Config.Prefix .. "öldür") then

  local yazi = bosluk(command," ")

  if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then

  TriggerClientEvent("oldur",yazi[2])
  webhookcalistir("İşlem Başarılı!", "Oyuncu Başarıyla Öldürüldü! :  " .. GetPlayerName(yazi[2]),65280)


  else

   webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)


  end
  



  -- Meslek Ver
elseif string.starts(command,Config.Prefix .. "meslekver") then
	
  if Config.RP then
  
    local yazi = bosluk(command," ", "  ", "   ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          

      local xPlayer = ESX.GetPlayerFromId(yazi[2])



      xPlayer.setJob(yazi[3], yazi[4])



          webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Meslek Verildi! :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
    
   end
   
  else
   
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
   
    end


-- Duyuru
elseif string.starts(command,Config.Prefix .. "çıkışduyuru") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
      TriggerClientEvent("announce", -1, "Sunucuya Restart Atılacaktır! Lütfen Sunucudan Çıkış Yapalım")
          webhookcalistir("İşlem Başarılı!", "Duyuru Başarıyla Yayınlandı!",65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Duyuru Metni Yazınız",16711680)
	  
	 end




    -- Para Ver
  elseif string.starts(command,Config.Prefix .. "paraver") then
	
    if Config.RP then
    
      local yazi = bosluk(command," ", "  ")
       if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
            

        if yazi[3] ~= nil then



        local xPlayer = ESX.GetPlayerFromId(yazi[2])



            xPlayer.addMoney(yazi[3])



            webhookcalistir("İşlem Başarılı!", "Oyuncuya Başarıyla Nakit Para Verildi! :  " .. GetPlayerName(yazi[2]),65280)


          else 


            webhookcalistir("İşlem Başarısız!","Lütfen Ne Kadar Para Vericeğinizi Belirtin!",16711680)
      
      
            end

     
       else
     
        webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
      
     end
     
    else
     
      webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
     
      end








-- Kelepçe
elseif string.starts(command,Config.Prefix .. "kelepçe") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("esx_policejob:handcuff",yazi[2])   


          
          webhookcalistir("İşlem Başarılı!", "Başarıyla Kelepçelendi! :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end




-- Dondur
elseif string.starts(command,Config.Prefix .. "dondur") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("freeze:freezePlayer",yazi[2])   


          
          webhookcalistir("İşlem Başarılı!", "Başarıyla Donduruldu! :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end







    
-- Don Çöz
elseif string.starts(command,Config.Prefix .. "dondurçöz") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("freeze:notfreeze",yazi[2])   


          
          webhookcalistir("İşlem Başarılı!", "Başarıyla Dondurmayı Çözdüm! :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
    webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end


		 


-- Rev Menü
    elseif string.starts(command,Config.Prefix .. "rev") then
	
	if Config.RP then
	
	 local yazi = bosluk(command," ")
     if yazi[2] ~= nil and GetPlayerName(yazi[2]) ~= nil then
          TriggerClientEvent("esx_ambulancejob:revive",yazi[2])   
          webhookcalistir("İşlem Başarılı!", "Oyuncu Başarıyla Revlendi! :  " .. GetPlayerName(yazi[2]),65280)
   
     else
   
      webhookcalistir("İşlem Başarısız!","Lütfen Geçerli Oyuncu Id'si Giriniz",16711680)
	  
	 end
	 
	else
	 
	 webhookcalistir("Discord BOT","ESX Henüz Aktifleştirilmemiş!",16711680)
	 
    end


     end
     
  end
	 
end


Citizen.CreateThread(function()

   PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = Config.ReplyUserName, content = "Sunucu Şuanda Çevrimiçi", avatar_url = Config.AvatarURL}), { ['Content-Type'] = 'application/json' })
   while true do   


	local kanal = DiscordRequest("GET","channels/" .. Config.ChannelID,{})
if kanal.data then
	local data = json.decode(kanal.data)
	local lst = data.last_message_id
	local sonmesaj = DiscordRequest("GET","channels/" .. Config.ChannelID .. "/messages/" .. lst,{})
     if sonmesaj.data then
	local sndata = json.decode(sonmesaj.data)
	if sonveri == nil then	 
	sonveri = sndata.id
	end

	if sonveri ~= sndata.id and sndata.author.username ~= Config.ReplyUserName then
	
	
	ExecuteCOMM(sndata.content)
	sonveri = sndata.id

	
	end
    end
end
	Citizen.Wait(Config.WaitEveryTick)
	end
end)


function webhookcalistir(name, message, color)
  local connect = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "Itami Tarafından Geliştirilmektedir",
            },
        }
    }
  PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = Config.ReplyUserName, embeds = connect, avatar_url = Config.AvatarURL}), { ['Content-Type'] = 'application/json' })
end
