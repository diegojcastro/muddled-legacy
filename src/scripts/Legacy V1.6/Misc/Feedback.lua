function Feedback(message)

  local msg = message 
  
  local httpdone = registerAnonymousEventHandler('sysPostHttpDone', 
    function(event, rurl, response)
      if rurl == url then display(r) else return true end
    end, true)

  local httperror = registerAnonymousEventHandler('sysPostHttpError', 
    function(event, response, rurl)
      if rurl == url then display(r) else return true end
    end, true)
   
  
  
  
  local url = "https://discord.com/api/webhooks/1027353225327808542/zi3Hf7hCU9hFsD8eOp1AVQyClnM3WOV3gFQulScM0V7I9wC7tL0Bg_jm623V1i3ny6F-"
  local data = {
    username = "Feedback",    
    content  = "``"..gmcp.Char.Status.name..": "..msg.."``\n" 
  }
  local header = {
    ["Content-Type"] = "application/json",
    --["Content-Length"] = data:len()
  }  
  postHTTP(yajl.to_string(data), url, header)
  
  killAnonymousEventHandler(httpdone)
  killAnonymousEventHandler(httperror)
end

