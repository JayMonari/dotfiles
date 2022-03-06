vim.cmd 'let mapleader = " "'

local opts = { noremap = true }

local keymap = vim.api.nvim_set_keymap
keymap('i', 'jj', '<Esc>', {})

local function nmap(key, map)
  keymap('n', key, map, opts)
end
-- Move to window
nmap('<Leader>k', '<C-w><C-k>')
nmap('<Leader>j', '<C-w><C-j>')
nmap('<Leader>h', '<C-w><C-h>')
nmap('<Leader>l', '<C-w><C-l>')
-- Jump back and forth
nmap('<Leader>o', '<C-o>')
nmap('<Leader>i', '<C-i>')
-- TODO
nmap('<Leader>/', ':nohlsearch<CR>')
nmap('U', '<C-r>')

-- All the LSP goodies
nmap('gd', ':lua vim.lsp.buf.definition()<CR>')
nmap('gD', ':lua vim.lsp.buf.declaration()<CR>')
nmap('gi', ':lua vim.lsp.buf.implementation()<CR>')
nmap('gw', ':lua vim.lsp.buf.document_symbol()<CR>')
nmap('gw', ':lua vim.lsp.buf.workspace_symbol()<CR>')
nmap('gr', ':lua vim.lsp.buf.references()<CR>')
nmap('gt', ':lua vim.lsp.buf.type_definition()<CR>')
nmap('K', ':lua vim.lsp.buf.hover()<CR>')
nmap('<C-k>', ':lua vim.lsp.buf.signature_help()<CR>')
nmap('<Leader>af', ':lua vim.lsp.buf.code_action()<CR>')
nmap('<Leader>rn', ':lua vim.lsp.buf.rename()<CR>')

