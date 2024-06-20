require("obsidian").setup({
  workspaces = { {
    name = "Obsidian Vault",
    path = "~/vaults/MyPersonalVault",
  } },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
    new_notes_location = "current_dir",
    prepend_note_id = true,
  },
  mappings = {},
})
