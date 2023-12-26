local M = {}

---@alias palette { bg: string[], fg: string[], red: string[], green: string[], yellow: string[], blue: string[], purple: string[], cyan: string[] }

---Applies the theme `name` with `palette`
---@param name string
---@param palette palette
M._color = function(name, palette)
  vim.g.colors_name = name
  require('farbe.highlights').highlight(palette)
  M._setup_feline(name, palette)
end

---setup feline
---@param name string
---@param palette palette
M._setup_feline = function(name, palette)
  local success, feline = pcall(require, 'feline')
  if not success then
    return
  end
  feline.add_theme('name', {
    fg = palette.fg[1],
    bg = palette.bg[2],
    black = palette.bg[2],
    skyblue = palette.blue[1],
    cyan = palette.cyan[1],
    green = palette.green[1],
    oceanblue = palette.blue[2],
    magenta = palette.purple[1],
    orange = palette.yellow[1],
    red = palette.red[1],
    violet = palette.purple[2],
    white = palette.fg[2],
    yellow = palette.yellow[2],
  })
end

return M
