function CuringSwaps()
  if Legacy then
    if Legacy.CT.Enemies then
      enClass = enClass or Legacy.CT.Enemies[target]
      --Reprio(aff) will push the priority back to its default position
      --Prio(aff) will push the affliction to the 1 slot working as a psuedo Prioaff
      --Deprio(aff, "hard") will force an aff to 26
      --Deprio(aff, [soft]) will move the prioritiy down 3 positions
      
      
      --List of Afflictions.
      local Aff = Legacy.Curing.Affs
      
      --Used for Tracking your Serverside settings.
      local SS = Legacy.Settings.Curing.SS.Settings
      
      --Used for Tracking the total count of Afflictions.
      local affCount = table.size(Legacy.Curing.Affs)
      
      --Shortening the Vitals subtable and standardizing it with Char name.
      local Vitals = Legacy[gmcp.Char.Status.name].Vitals
      
      --Declaring Locks as afflictions Uncomment the stuff below if you want to use this to track the locktype in Afflictions
      if (Aff.impatience and Aff.asthma and Aff.slickness and Aff.anorexia and not Aff.paralysis) then
        --Aff.softlocked = true
        --Aff.truelocked = nil
      elseif (Aff.impatience and Aff.asthma and Aff.slickness and Aff.anorexia and Aff.paralysis) then
        --Aff.softlocked = nil
        --Aff.truelocked = true
      else
        --Aff.softlocked = nil
        --Aff.truelocked = nil
      end
      
      function isBroken(limb)  
        for k,v in pairs(Legacy.Curing.Affs) do
          if (k:match("mangled") or k:match("broken") or k:match("damaged")) and k:match(limb) then
            return true
          end
        end
        return false
      end
      
      function Stack(herb, amount)
        local Aff       = Legacy.Curing.Affs
        local AffStacks = { 
        ["kelp"]        = {"asthma", "clumsiness", "hypochondria", "sensitivity", "weariness", "healthleech", "parasite", "rebbies"},
        ["ginseng"]     = {"addiction", "darkshade", "haemophilia", "lethargy", "nausea", "scytherus", "flushings"},
        ["goldenseal"]  = {"dizziness", "epilepsy", "impatience", "shyness", "stupidity", "depression", "shadowmadness", "mycalium", "sandfever", "horror"},
        ["lobelia"]     = {"agoraphobia", "guilt", "spiritburn", "tenderskin", "claustrophobia", "loneliness", "masochism", "recklessness", "vertigo"},
        ["ash"]         = {"confusion", "dementia", "hallucinations", "hypersomnia", "paranoia"},
        ["bellwort"]    = {"retribution","timeloop", "peace","justice","lovers"}
        }
      local stack   = AffStacks[herb:lower()]
      local count   = 0
      local amount  = amount or 4
  
      if herb:lower() == "goldenseal" then
        for k , _ in pairs(Aff) do
          if table.contains(stack, k) or string.starts(k, "unweavingm") or string.starts(k, "horror") then
            count = count + 1
          end
          if count == amount then
            return true
          end
        end
      elseif herb:lower() == "ginseng" then
        for k , _ in pairs(Aff) do
          if table.contains(stack, k) or string.starts(k, "unweavingb") then
            count = count + 1  
          end
          if count == amount then
            return true
          end
        end
        else
          for k , _ in pairs(Aff) do
            if table.contains(stack, k) then
              count = count + 1  
            end
            if count == amount then
              return true
            end
          end
        end
      return false
    end
      
      
      withTarget =
        function()
          if table.contains(gmcp.Room.Players, target) then
            return true
          else
            return false
          end
        end
        
        
      if enClass == "Alchemist" then
      elseif enClass == "Sublimation" then
      elseif enClass == "Apostate" then
      elseif enClass == "Bard" then
      elseif enClass == "Blademaster" then
      elseif enClass == "Depthswalker" then
      elseif enClass == "Druid" then
      elseif enClass == "Infernal" then
      elseif enClass == "Jester" then
      elseif enClass == "Magi" then
      elseif enClass == "Monk" then
      elseif enClass == "Occultist" then
      elseif enClass == "Paladin" then
      elseif enClass == "Pariah" then
      elseif enClass == "Priest" then
      elseif enClass == "Psion" then
      elseif enClass == "Runewarden" then
      elseif enClass == "Sentinel" then
      elseif enClass == "Serpent" then
      elseif enClass == "Shaman" then
      elseif enClass == "Sylvan" then
      elseif enClass == "Unnamable" then
      elseif enClass == "2H" then
      elseif enClass == "SnB" then
      elseif enClass == "DwB" then
      elseif enClass == "DwC" then
      elseif enClass == "Shikudo" then
      elseif enClass == "Tekura" then
      elseif enClass == "Dragon" then
      elseif enClass == "Waterlord" then
      elseif enClass == "Airlord" then
      elseif enClass == "Firelord" then
      elseif enClass == "Earthlord" then
      elseif enClass == "PaladinDwC" then
      elseif enClass == "PaladinSnB" then
      elseif enClass == "PaladinDwB" then
      elseif enClass == "Paladin2H" then
      elseif enClass == "InfernalDwC" then
      elseif enClass == "InfernalSnB" then
      elseif enClass == "InfernalDwB" then
      elseif enClass == "Infernal2H" then
      elseif enClass == "RunewardenDwC" then
      elseif enClass == "RunewardenSnB" then
      elseif enClass == "RunewardenDwB" then
      elseif enClass == "Runewarden2H" then
      elseif enClass == "UnnamableDwC" then
      elseif enClass == "UnnamableSnB" then
      elseif enClass == "UnnamableDwB" then
      elseif enClass == "Unnamable2H" then
      elseif enClass == "Group" then
      elseif enClass == "" or enClass == nil then
        
      end
    end
  end
end

registerAnonymousEventHandler("gmcp.Char.Afflictions", "CuringSwaps")
registerAnonymousEventHandler("gmcp.Room.Info", "CuringSwaps")