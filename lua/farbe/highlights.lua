local M = {}

---@param palette palette
M.highlight = function(palette)
  local h = {
    Normal = { bg = palette.bg[1], fg = palette.fg[1] },
    NormalFloat = { bg = palette.bg[1], fg = palette.fg[1] },
    NormalNC = { bg = palette.bg[1], fg = palette.fg[1] },
    SignColumn = { bg = palette.bg[2], fg = palette.fg[1] },

    -- Cursor
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
    MoreMsg = { bg = palette.bg[1], fg = palette.fg[2] },

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
    Boolean = { fg = palette.purple[2] },
    Float = { fg = palette.cyan[2] },

    Identifier = { fg = palette.cyan[2] },
    Function = { fg = palette.green[2] },
    ['@property'] = { fg = palette.blue[2] },
    ['@field'] = { link = '@property' },
    ['@variable'] = { fg = palette.fg[1] },

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

    -- lsp semantic tokens
    ['@lsp.type.boolean'] = { link = '@boolean' },
    ['@lsp.type.builtinType'] = { link = '@type.builtin' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.decorator'] = { link = '@attribute' },
    ['@lsp.type.deriveHelper'] = { link = '@attribute' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@lsp.type.escapeSequence'] = { link = '@string.escape' },
    ['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' },
    ['@lsp.type.generic'] = { link = '@variable' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.type.lifetime'] = { link = '@storageclass' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.number'] = { link = '@number' },
    ['@lsp.type.operator'] = { link = '@operator' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.selfKeyword'] = { link = '@variable.builtin' },
    ['@lsp.type.selfTypeKeyword'] = { link = '@variable.builtin' },
    ['@lsp.type.string'] = { link = '@string' },
    ['@lsp.type.typeAlias'] = { link = '@type.definition' },
    ['@lsp.type.variable'] = {}, -- use treesitter styles for regular variables
    ['@lsp.typemod.class.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.typemod.enum.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.typemod.enumMember.defaultLibrary'] = { link = '@constant.builtin' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.keyword.async'] = { link = '@keyword.coroutine' },
    ['@lsp.typemod.keyword.injected'] = { link = '@keyword' },
    ['@lsp.typemod.macro.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.operator.injected'] = { link = '@operator' },
    ['@lsp.typemod.string.injected'] = { link = '@string' },
    ['@lsp.typemod.struct.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.typemod.variable.callable'] = { link = '@function' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
    ['@lsp.typemod.variable.injected'] = { link = '@variable' },
    ['@lsp.typemod.variable.static'] = { link = '@constant' },
  }

  for name, group in pairs(h) do
    vim.api.nvim_set_hl(0, name, group)
  end
end

return M
