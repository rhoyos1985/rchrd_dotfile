return {
    "tpope/vim-fugitive",
    config = function()
        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>gc", "<cmd>Git<cr>", { desc = "Git status" })
    end,
}
