return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
        MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
        MMMMMMMMMMMMds+:--------:+sdNMMMMMMMMMMM
        MMMMMMMMms:-+sdNMMMMMMMMNdy+--omMMMMMMMM
        MMMMMMh:` /mMMMMMMMMMMMMMMMMm+ `-yMMMMMM
        MMMMd--hN``--sNMMMMMMMMMMNy:..`md:.hMMMM
        MMM+`yMMMy hd+./hMMMMMMh/.+dd sMMMh`/MMM
        MM:.mMMMMM:.NMMh/.+dd+./hMMM--MMMMMm--NM
        M+`mMMMMMMN`+MMMMm-  .dMMMMo mMMMMMMN.:M
        d yMMMMMMMMy dNy:.omNs--sNm oMMMMMMMMh h
        /`MMMMMMMMMM.`.+dMMMMMMm+.``NMMMMMMMMM-:
        .:MMMMMMMd+./`oMMMMMMMMMMs /.+dMMMMMMM/`
        .:MMMMmo.:yNMs dMMMMMMMMm`oMNy:.omMMMM/`
        /`MNy:.omMMMMM--MMMMMMMM:.MMMMMNs--sNM.:
        d -` :++++++++: /++++++/ :++++++++:  : h
        M+ yddddddddddd+ yddddy /dddddddddddy`/M
        MM/.mMMMMMMMMMMM.-MMMM/.NMMMMMMMMMMm.:NM
        MMMo`sMMMMMMMMMMd sMMy hMMMMMMMMMMy`+MMM
        MMMMd--hMMMMMMMMM+`mN`/MMMMMMMMMh--hMMMM
        MMMMMMh:.omMMMMMMN.:/`NMMMMMMms.:hMMMMMM
        MMMMMMMMNs:./shmMMh  yMMNds/.:smMMMMMMMM
        MMMMMMMMMMMMdy+/---``---:+sdMMMMMMMMMMMM
         MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
        ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
