return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    config = function()
	    require("neo-tree").setup({
    		enable_git_status = true,
    		close_if_last_window = true,
    		filesystem = {
	   		 follow_current_file = {
				    enabled = true
	 		   }
   		 }
	 })
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}
