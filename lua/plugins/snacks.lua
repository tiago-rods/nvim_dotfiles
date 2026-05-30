return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        lazygit = { enabled = true, win = { style = "float", width = 0.8, height = 0.8, border = "rounded" } },
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
        terminal = {
            enabled = true,
            win = {
                style = "terminal", bo = { filetype = "snacks_terminal" }, height = 0.25,
            }
        },
    },
    keys = {
        { "<leader>gg", function() Snacks.lazygit() end,                desc = "Lazygit" },
        { "<leader>gG", function() Snacks.lazygit(vim.fn.getcwd()) end, desc = "Lazygit (cwd)" },
        { "<leader>t",  function() Snacks.terminal.toggle() end,        desc = "Toggle Terminal" },
    },
}
