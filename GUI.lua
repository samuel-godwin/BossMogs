local _, ctx = ...

ctx.GUI = {}

local GUI = ctx.GUI

function GUI:ToggleShow()
    if not GUI.GUIFrame then
        GUI:CreateGUIFrame()
        return
    end
    GUI.GUIFrame:SetShown(not GUI.GUIFrame:IsShown())
end

function GUI:CreateGUIFrame()
    self.GUIFrame = CreateFrame("Frame", "BossMogsUI", UIParent, "BasicFrameTemplateWithInset")
    self.GUIFrame:SetSize(500, 350)
    self.GUIFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
    self.GUIFrame.title = self.GUIFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    self.GUIFrame.title:SetPoint("TOPLEFT", self.GUIFrame.TitleBg, "TOPLEFT", 5, -3)
    self.GUIFrame.TitleBg:SetHeight(30)
    self.GUIFrame.title:SetText("BossMogs")
end
