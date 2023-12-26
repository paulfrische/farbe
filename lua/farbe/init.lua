local M = {}

M.palette = {}

---@alias palette { bg: string[], fg: string[], red: string[], green: string[], yellow: string[], blue: string[], purple: string[], cyan: string[] }

---Applies the theme `name` with `palette`
---@param name string
---@param palette palette
M._color = function(name, palette)
  vim.g.colors_name = name
  require('farbe.highlights').highlight(palette)
  M.palette = palette
end

M.setup_feline = function()
  local success, feline = pcall(require, 'feline')
  if not success then
    return
  end
  feline.add_theme(vim.g.colors_name, {
    fg = M.palette.fg[1],
    bg = M.palette.bg[2],
    black = M.palette.bg[2],
    skyblue = M.palette.blue[1],
    cyan = M.palette.cyan[1],
    green = M.palette.green[1],
    oceanblue = M.palette.blue[2],
    magenta = M.palette.purple[1],
    orange = M.palette.yellow[1],
    red = M.palette.red[1],
    violet = M.palette.purple[2],
    white = M.palette.fg[2],
    yellow = M.palette.yellow[2],
  })
end

return M
