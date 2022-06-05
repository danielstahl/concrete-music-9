
function GetChannel(name)
  for i = 0, reaper.GetNumAudioInputs() - 1 do
    local channelName = reaper.GetInputChannelName(i)
    if channelName == name then return i
    end
  end
  return -1
end

function CreateFolder(index, name)
  reaper.InsertTrackAtIndex(index, false)
  folder = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(folder, 'P_NAME', name, true)
  reaper.SetMediaTrackInfo_Value( folder, 'I_FOLDERDEPTH',1)
  reaper.SetMediaTrackInfo_Value(folder, 'I_FOLDERCOMPACT', 0)
end

function CreateTrack(index, name, channel, lastInFolder)
  local ch = GetChannel(channel)
  local folderDepth = 0
  if lastInFolder then folderDepth = -1 end

  reaper.InsertTrackAtIndex(index, false)
  tr = reaper.GetTrack(0,index)
  reaper.GetSetMediaTrackInfo_String(tr, 'P_NAME', name, true)
  reaper.SetMediaTrackInfo_Value( tr, 'I_RECARM',1)
  reaper.SetMediaTrackInfo_Value( tr, 'I_RECINPUT',1024 + ch)
  reaper.SetMediaTrackInfo_Value( tr, 'I_FOLDERDEPTH',folderDepth)
end

function ImportAudio(index, trackName, fileName, lastInFolder)
  local folderDepth = 0
  if lastInFolder then folderDepth = -1 end

  reaper.SetEditCurPos(0, false, false)
  reaper.InsertTrackAtIndex(index, false)
  tr = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(tr, 'P_NAME', trackName, true)
  reaper.SetMediaTrackInfo_Value( tr, 'I_FOLDERDEPTH',folderDepth)
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
end


CreateFolder(0, "Resonator 1")
ImportAudio(1, "Resonator 1 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_resonator_1_1.caf", false)
ImportAudio(2, "Resonator 1 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_resonator_1_2.caf", true)

CreateFolder(3, "Resonator 2")
ImportAudio(4, "Resonator 2 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_resonator_2_1.caf", false)
ImportAudio(5, "Resonator 2 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_resonator_2_2.caf", true)

CreateFolder(6, "Resonator 3")
ImportAudio(7, "Resonator 3 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_resonator_3_1.caf", false)
ImportAudio(8, "Resonator 3 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_resonator_3_2.caf", true)

CreateFolder(9, "Chest 1")
ImportAudio(10, "Chest 1 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_chest_1_1.caf", false)
ImportAudio(11, "Chest 1 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_chest_1_2.caf", false)
ImportAudio(12, "Chest 1 3", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_chest_1_3.caf", false)
ImportAudio(13, "Chest 1 4", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_chest_1_4.caf", false)
ImportAudio(14, "Chest 1 5", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_chest_1_5.caf", true)

CreateFolder(15, "Door 1")
ImportAudio(16, "Door 1 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_door_1_1.caf", false)
ImportAudio(17, "Door 1 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_door_1_2.caf", false)
ImportAudio(18, "Door 1 3", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_door_1_3.caf", false)
ImportAudio(19, "Door 1 4", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_door_1_4.caf", false)
ImportAudio(20, "Door 1 5", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_door_1_5.caf", true)

CreateFolder(21, "Hit 1")
ImportAudio(22, "Hit 1 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_1_1.caf", false)
ImportAudio(23, "Hit 1 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_1_2.caf", false)
ImportAudio(24, "Hit 1 3", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_1_3.caf", false)
ImportAudio(25, "Hit 1 4", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_1_4.caf", false)
ImportAudio(26, "Hit 1 5", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_1_5.caf", true)

CreateFolder(27, "Hit 2")
ImportAudio(28, "Hit 2 1", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_2_1.caf", false)
ImportAudio(29, "Hit 2 2", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_2_2.caf", false)
ImportAudio(30, "Hit 2 3", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_2_3.caf", false)
ImportAudio(31, "Hit 2 4", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_2_4.caf", false)
ImportAudio(32, "Hit 2 5", "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 9/stage/concreteMusic9_hit_2_5.caf", true)
