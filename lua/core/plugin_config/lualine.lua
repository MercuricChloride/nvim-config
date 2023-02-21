local messages = {
  "Stay focused :)",
  "Keep pushin",
  "You got this dawg",
}

local function random_message()
  local randomNum = math.random(1, #messages)
  return messages[randomNum]
end

vim.g.message_to_display = random_message()

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nord',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_b = {
      {
        'branch',
        icon = '',
      }
    },
    lualine_c = {
      {
        "g:message_to_display",
      }
    },
    lualine_x = {
      {
        require('pomodoro').statusline
      }
    },
  }
}
