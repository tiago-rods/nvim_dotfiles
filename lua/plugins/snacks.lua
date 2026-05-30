return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        lazygit = { enabled = true, win = {width = 0.8, height = 0.8, border = rounded } },
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
    },
    keys = {
    {"<leader>git", "<cmd>lua Snacks.lazygit()<CR>"},
    { "<leader>gG", "<cmd>lua Snacks.lazygit(vim.fn.getcwd())<CR>" }
    
    },
}
