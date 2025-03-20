
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<M-Down>", ":m .+1<CR>==")
vim.keymap.set("n", "<M-Up>", ":m .-2<CR>==") 
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv") 
vim.keymap.set("n", "<C-Up>", "[{")
vim.keymap.set("n", "<C-Down>", "]}")

vim.keymap.set("n", "<C-M-Down>", "yy<Cmd>put<CR>")
vim.keymap.set("n", "<C-M-Up>", "yyP")
vim.keymap.set("v", "<C-M-Down>", "y`><Cmd>put<CR>gv")
vim.keymap.set("v", "<C-M-Up>", "y`<<Cmd>put!<CR>gv")

vim.keymap.set("n", "<leader>b", "<C-O>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<C-c>", [["+yiw]])
vim.keymap.set("v", "<C-c>", [["+Y]])

vim.keymap.set("n", "<C-z>", "u")
vim.keymap.set("n", "<C-y>", "<C-r>")

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<S-M-f>", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>EN", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>EP", "<cmd>lprev<CR>zz")
vim.keymap.set('n', '<leader>ce', ':cclose<CR>')
vim.keymap.set('n', '<leader>oe', ':copen<CR>')

vim.keymap.set("n", "<C-D>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set(
    "n",
    "<leader>ea",
    "oassert.NoError(err, \"\")<Esc>F\";a"
)

vim.keymap.set(
    "n",
    "<leader>ef",
    "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
)

vim.keymap.set(
    "n",
    "<leader>el",
    "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
)

vim.keymap.set("n", "<leader>ca", function()
    require("cellular-automaton").start_animation("make_it_rain")
end)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.g.VM_maps = {
    ['Find Under'] = '<C-d>',
    ['Find Subword Under'] = '<C-d>',
    ['Select All'] = '<leader><C-d>',
    ['Skip Region'] = '<C-x>',
    ['Remove Region'] = '<C-p>'
}

vim.keymap.set('n', '<C-d>', '<Nop>')
vim.keymap.set('v', '<C-d>', '<Nop>')