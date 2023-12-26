local M = {}

---@param palette palette
M.highlight = function(palette)
  local h = {
    Normal = { bg = palette.bg[1], fg = palette.fg[1] },
    NormalFloat = { bg = palette.bg[1], fg = palette.fg[1] },
    NormalNC = { bg = palette.bg[1], fg = palette.fg[1] },
    SignColumn = { bg = palette.bg[2], fg = palette.fg[1] },

    ColorColumn = { bg = palette.bg[2], fg = palette.fg[2] },
    Conceal = { fg = palette.fg[2] },

    CurSearch = { bg = palette.blue[1], fg = palette.fg[2] },
    Search = { bg = palette.blue[1], fg = palette.fg[2] },
    IncSearch = { bg = palette.yellow[1], fg = palette.fg[2] },
    Substitute = { bg = palette.red[1], fg = palette.fg[2] },
    Directory = { fg = palette.blue[1] },

    DiffAdd = { bg = palette.green[1], fg = palette.fg[2] },
    DiffChange = { bg = palette.yellow[1], fg = palette.fg[2] },
    DiffText = { fg = palette.fg[2] },
    DiffDelete = { bg = palette.red[1], fg = palette.fg[2] },

    ErrorMsg = { fg = palette.red[1] },
    WarningMsg = { fg = palette.red[2] },

    WinSeperator = { bg = palette.bg[1], fg = palette.bg[2] },
    FloatBorder = { bg = palette.bg[1], fg = palette.bg[2] },
    FloatTitle = { bg = palette.bg[2], fg = palette.fg[1] },
    FloatFooter = { bg = palette.bg[2], fg = palette.fg[1] },

    Folded = { fg = palette.fg[2] },
    FoldedColumn = { bg = palette.bg[2], fg = palette.fg[2] },

    LineNr = { bg = palette.bg[2], fg = palette.fg[2] },
    LineNrAbove = { bg = palette.bg[2], fg = palette.fg[2] },
    LineNrBelow = { bg = palette.bg[2], fg = palette.fg[2] },

    MatchParen = { bg = palette.bg[1], fg = palette.cyan[1] },

    ModeMsg = { bg = palette.bg[1], fg = palette.cyan[1] },
    StatusLine = { bg = palette.bg[2], fg = palette.cyan[1] },
    StatusLineNC = { bg = palette.bg[2], fg = palette.cyan[1] },

    WinBar = { bg = palette.bg[2], fg = palette.cyan[1] },
    WinBarNC = { bg = palette.bg[2], fg = palette.cyan[1] },

    TabLine = { bg = palette.bg[2], fg = palette.cyan[1] },
    TabLineFill = { bg = palette.bg[2], fg = palette.green[1] },
    TabLineSel = { bg = palette.bg[1], fg = palette.cyan[2] },

    MsgArea = { bg = palette.bg[1], fg = palette.cyan[1] },
    MsgSeparator = { bg = palette.bg[1], fg = palette.fg[1] },
    MoreMsg = { bg = palette.bg[1], fg = palette.bg[2] },

    Title = { bg = palette.bg[2], fg = palette.fg[1] },

    NonText = { fg = palette.bg[2] },
    SpecialKey = { fg = palette.bg[2] },
    Whitespace = { fg = palette.bg[2] },

    WildMenu = { bg = palette.cyan[2], fg = palette.bg[1] },

    Pmenu = { bg = palette.bg[2], fg = palette.fg[1] },
    PmenuSel = { bg = palette.cyan[2], fg = palette.bg[1] },
    PmenuKind = { bg = palette.bg[2], fg = palette.fg[1] },
    PmenuKindSel = { bg = palette.cyan[2], fg = palette.bg[1] },
    PmenuExtra = { bg = palette.bg[2], fg = palette.fg[1] },
    PmenuExtraSel = { bg = palette.cyan[2], fg = palette.bg[1] },
    PmenuSbar = { bg = palette.bg[2], fg = palette.blue[1] },
    PmenuThumb = { bg = palette.bg[2], fg = palette.blue[1] },

    Question = { fg = palette.green[2] },

    QuickFixLine = { bg = palette.bg[2], fg = palette.fg[2] },

    Visual = { bg = palette.blue[1], fg = palette.fg[2] },
    VisualNOS = { bg = palette.blue[1], fg = palette.fg[2] },

    -- language
    Comment = { fg = palette.green[2] },
    Constant = { fg = palette.cyan[2] },
    String = { bg = palette.bg[2], fg = palette.green[1] },
    Character = { bg = palette.bg[2], fg = palette.green[1] },
    Number = { fg = palette.cyan[2] },
    Boolean = { fg = palette.cyan[2] },
    Float = { fg = palette.cyan[2] },

    Identifier = { fg = palette.cyan[2] },
    Function = { fg = palette.fg[2] },

    Statement = { fg = palette.red[2] },
    Conditional = { fg = palette.red[2] },
    Repeat = { fg = palette.red[2] },
    Label = { fg = palette.red[2] },
    Keyword = { fg = palette.red[2] },
    Exception = { fg = palette.red[2] },
    Operator = { fg = palette.purple[2] },

    PreProc = { fg = palette.red[1] },
    Include = { fg = palette.red[1] },
    Define = { fg = palette.red[1] },
    Macro = { fg = palette.red[1] },
    PreCondit = { fg = palette.red[1] },

    Type = { fg = palette.cyan[1] },
    StorageClass = { fg = palette.cyan[1] },
    Structure = { fg = palette.cyan[2] },
    Typedef = { fg = palette.cyan[2] },

    Special = { fg = palette.cyan[2] },
    SpecialChar = { fg = palette.cyan[2] },
    Tag = { fg = palette.cyan[2] },
    Delimiter = { fg = palette.cyan[2] },
    SpecialComment = { fg = palette.cyan[2] },
    Debug = { fg = palette.cyan[2] },
    Underline = { fg = palette.cyan[2], underline = true },

    Ignore = { fg = palette.bg[2] },

    Error = { fg = palette.red[1], undercurl = true },

    Todo = { fg = palette.purple[1], bold = true },

    Cursor = { bg = palette.fg[2], fg = palette.fg[1] },
    TermCursor = { bg = palette.fg[2], fg = palette.fg[1] },
    TermCursorNC = { bg = palette.fg[2], fg = palette.fg[1] },
    lCursor = { bg = palette.fg[2], fg = palette.fg[1] },
    CursorIM = { bg = palette.fg[2], fg = palette.fg[1] },
    CursorColumn = { bg = palette.bg[2], fg = palette.fg[1] },
    CursorLine = { bg = palette.bg[2] },
    CursorLineSign = { bg = palette.bg[2], fg = palette.fg[1] },
    CursorLineFold = { bg = palette.bg[2], fg = palette.fg[1] },
    CursorLineNr = { bg = palette.bg[2], fg = palette.fg[1] },
  }

  for name, group in pairs(h) do
    vim.api.nvim_set_hl(0, name, group)
  end
end

return M
