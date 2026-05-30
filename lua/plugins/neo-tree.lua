return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
        require ("nvim-web-devicons").setup({default = true})
        require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            ilesystem = {
            filtered_items = {
              hide_gitignore = false,
              never_show = { ".git" },
            },
        }
        })
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>", {})
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal right<CR>', {noremap = true})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
