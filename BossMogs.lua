local _, ctx = ...


AddonCompartmentFrame:RegisterAddon({
    text = "BossMogs",
    func = function()
        ctx.GUI.ToggleShow()
    end,
})
