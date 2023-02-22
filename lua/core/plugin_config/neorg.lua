require("neorg").setup{
  load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.norg.qol.todo_items"] = {}, -- Adds a todo item syntax
      ["core.norg.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
          geo = "~/geoNotes",
        },
      },
    },
  }
}
