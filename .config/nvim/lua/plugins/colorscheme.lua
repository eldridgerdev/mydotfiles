local setDark = function()
  vim.cmd([[
        set background=dark
        let g:gruvbox_material_background = 'hard'
        let g:gruvbox_material_better_performance = 1
        let g:gruvbox_material_enable_italic = 1
        let g:gruvbox_material_diagnostic_text_highlight = 1
        let g:gruvbox_material_diagnostic_virtual_text = "colored"
        let g:gruvbox_material_sign_column_background = 'none'
        let g:gruvbox_material_transparent_background = 1

        colorscheme gruvbox-material
  ]])
end

local setLight = function()
  vim.cmd([[
        set background=light
        let g:gruvbox_material_background = 'soft'
        let g:gruvbox_material_better_performance = 1
        let g:gruvbox_material_enable_italic = 1
        let g:gruvbox_material_diagnostic_text_highlight = 1
        let g:gruvbox_material_diagnostic_virtual_text = "colored"
        let g:gruvbox_material_sign_column_background = 'none'
        let g:gruvbox_material_transparent_background = 0

        colorscheme gruvbox-material
    ]])
end
local toggle = function(bgDark)
  local bg = not bgDark
  if bg then
    setDark()
  else
    setLight()
  end
  return bg
end
local bgDark = true

vim.keymap.set("n", "<leader>t", function()
  bgDark = toggle(bgDark)
end, { desc = "Switch theme" })

return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      if bgDark then
        setDark()
      else
        setLight()
      end
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
