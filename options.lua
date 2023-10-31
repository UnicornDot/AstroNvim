-- set vim options here (vim.<first_key>.<second_key> = value)
local opt = {
  list = true, -- show whitespace characters
  listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
  showbreak = "↪ ",
  -- showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1,
  -- spellfile = vim.fn.expand(vim.fn.stdpath("config") .. "/lua/user/spell/en.utf-8.add"),
  -- thesaurus = vim.fn.expand(vim.fn.stdpath("config") .. "/lua/user/spell/mthesaur.txt"),
  swapfile = false,
  wrap = false, -- soft wrap lines
  termguicolors = true,
  wildmenu = true,
  wildmode = "longest:list,full",
  shell="pwsh -NoLogo",
  shellcmdflag="-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellquote="\"",
  shellxquote="",
}

local g = {
  mapleader = " ", -- set leader key
  maplocalleader = " ", -- set default local leader key
  transparent_background = true,
  resession_enabled = true,
  inlay_hints_enabled = true,
}

return {
  opt = opt,
  g = g,
  wo = {
    spell = false,
  },
}
