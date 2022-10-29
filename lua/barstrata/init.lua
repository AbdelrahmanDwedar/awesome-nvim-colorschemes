local variants = require("barstrata.colors")
local cfg = require("barstrata.config").config
local c = variants[cfg.variant]
local utils = require("barstrata.utils")
local M = {}

local set_terminal_colors = function()
  vim.g.terminal_color_0 = c.black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.black
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.magenta
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
  vim.g.terminal_color_background = c.bg
  vim.g.terminal_color_foreground = c.fg
end

local set_groups = function()
  local groups = {
    -- Base
    -- Editor highlight groups
    Normal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }, -- normal text and background color
    NormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }, -- normal text in non-current windows
    SignColumn = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }, -- column where signs are displayed
    EndOfBuffer = { fg = c.gray02 }, -- ~ lines at the end of a buffer
    NormalFloat = { fg = c.fg, bg = c.gray01 }, -- normal text and background color for floating windows
    FloatBorder = { fg = c.blue, bg = c.gray01 },
    ColorColumn = { fg = c.none, bg = c.gray01 }, --  used for the columns set with 'colorcolumn'
    Conceal = { fg = c.gray05 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.cyan, bg = c.none }, -- the character under the cursor -- , style = "reverse"
    CursorIM = { fg = c.cyan, bg = c.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    Directory = { fg = c.blue, bg = c.none, style = "bold" }, -- directory names (and other special names in listings)
    DiffAdd = { fg = c.green, bg = c.none, style = "reverse" }, -- diff mode: Added line
    DiffChange = { fg = c.blue, bg = c.none, style = "reverse" }, --  diff mode: Changed line
    DiffDelete = { fg = c.red, bg = c.none, style = "reverse" }, -- diff mode: Deleted line
    DiffText = { fg = c.fg, bg = c.none, style = "reverse" }, -- diff mode: Changed text within a changed line
    ErrorMsg = { fg = c.red }, -- error messages
    Folded = { fg = c.gray05, bg = c.none, style = "italic" },
    FoldColumn = { fg = c.blue },
    IncSearch = { style = "reverse" },
    LineNr = { fg = c.gray05 },
    CursorLineNr = { fg = c.gray06 },
    MatchParen = { fg = c.cyan, style = "bold" },
    ModeMsg = { fg = c.cyan, style = "bold" },
    MoreMsg = { fg = c.cyan, style = "bold" },
    NonText = { fg = c.gray03 },
    Pmenu = { fg = c.fg, bg = c.gray01 },
    PmenuSel = { fg = c.bg, bg = c.blue },
    PmenuSbar = { fg = c.fg, bg = c.gray02 },
    PmenuThumb = { fg = c.fg, bg = c.gray05 },
    Question = { fg = c.green, style = "bold" },
    QuickFixLine = { fg = c.blue, bg = c.gray01, style = "bold,italic" },
    qfLineNr = { fg = c.blue, bg = c.gray01 },
    Search = { style = "reverse" },
    SpecialKey = { fg = c.gray03 },
    SpellBad = { fg = c.red, bg = c.none, style = "italic,undercurl" },
    SpellCap = { fg = c.blue, bg = c.none, style = "italic,undercurl" },
    SpellLocal = { fg = c.cyan, bg = c.none, style = "italic,undercurl" },
    SpellRare = { fg = c.cyan, bg = c.none, style = "italic,undercurl" },
    StatusLine = { fg = c.gray07, bg = c.gray01 },
    StatusLineNC = { fg = c.gray06, bg = c.gray01 },
    StatusLineTerm = { fg = c.gray07, bg = c.gray01 },
    StatusLineTermNC = { fg = c.gray07, bg = c.gray01 },
    TabLineFill = { fg = c.gray05, bg = c.gray01 },
    TablineSel = { fg = c.bg, bg = c.blue },
    Tabline = { fg = c.gray05 },
    Title = { fg = c.cyan, bg = c.none, style = "bold" },
    Visual = { fg = c.bg, bg = c.bright_magenta },
    VisualNOS = { fg = c.none, bg = c.gray03 },
    WarningMsg = { fg = c.yellow, style = "bold" },
    WildMenu = { fg = c.bg, bg = c.blue, style = "bold" },
    CursorColumn = { fg = c.none, bg = c.gray01 },
    CursorLine = { fg = c.none, bg = c.gray01 },
    ToolbarLine = { fg = c.fg, bg = c.gray01 },
    ToolbarButton = { fg = c.fg, bg = c.none, style = "bold" },
    NormalMode = { fg = c.cyan, bg = c.none, style = "reverse" },
    InsertMode = { fg = c.green, bg = c.none, style = "reverse" },
    VisualMode = { fg = c.cyan, bg = c.none, style = "reverse" },
    VertSplit = { fg = cfg.variant == "default" and c.bg2 or c.gray03, bg = c.bg2 },
    WinSeparator = { fg = c.bright_pink, bg = c.bg },
    CommandMode = { fg = c.gray05, bg = c.none, style = "reverse" },
    Warnings = { fg = c.yellow },
    healthError = { fg = c.red },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.yellow },
    --common
    Type = { fg = c.cyan, stye = cfg.type_style }, -- int, long, char, etc.
    StorageClass = { fg = c.cyan }, -- static, register, volatile, etc.
    Structure = { fg = c.pink }, -- struct, union, enum, etc.
    Constant = { fg = c.fg }, -- any constant
    Comment = { fg = c.gray04, bg = c.none, style = cfg.comment_style }, -- italic comments
    Conditional = { fg = c.blue, bg = c.none, style = cfg.keyword_style }, -- italic if, then, else, endif, switch, etc.
    Keyword = { fg = c.blue, bg = c.none, style = cfg.keyword_style }, -- italic for, do, while, etc.
    Repeat = { fg = c.blue, bg = c.none, style = cfg.keyword_style }, -- italic any other keyword
    Boolean = { fg = c.pink, bg = c.none, style = cfg.boolean_style }, -- true , false
    Function = { fg = c.blue, bg = c.none, style = cfg.function_style },
    Identifier = { fg = c.blue }, -- any variable name
    String = { fg = c.cyan, bg = c.none }, -- Any string
    Character = { fg = c.pink }, -- any character constant: 'c', '\n'
    Number = { fg = c.cyan }, -- a number constant: 5
    Float = { fg = c.pink }, -- a floating point constant: 2.3e10
    Statement = { fg = c.blue }, -- any statement
    Label = { fg = c.cyan }, -- case, default, etc.
    Operator = { fg = c.gray06 }, -- sizeof", "+", "*", etc.
    Exception = { fg = c.green }, -- try, catch, throw
    PreProc = { fg = c.red }, -- generic Preprocessor
    Include = { fg = c.blue }, -- preprocessor #include
    Define = { fg = c.cyan }, -- preprocessor #define
    Macro = { fg = c.blue }, -- same as Define
    Typedef = { fg = c.cyan, style = cfg.type_style }, -- A typedef
    PreCondit = { fg = c.cyan }, -- preprocessor #if, #else, #endif, etc.
    Special = { fg = c.bright_pink, bg = c.none, "italic" }, -- any special symbol
    SpecialChar = { fg = c.pink }, -- special character in a constant
    Tag = { fg = c.red }, -- you can use CTRL-] on this
    Delimiter = { fg = c.gray06 }, -- character that needs attention like , or .
    SpecialComment = { fg = c.blue }, -- special things inside a comment
    Debug = { fg = c.red }, -- debugging statements
    Underlined = { fg = c.cyan, bg = c.none, style = "underline" }, -- text that stands out, HTML links
    Ignore = { fg = c.gray06 }, -- left blank, hidden
    Error = { fg = c.red, bg = c.none, style = "bold,underline" }, -- any erroneous construct
    Todo = { fg = c.cyan, bg = c.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- HTML
    htmlArg = { fg = c.blue, style = "italic" },
    htmlBold = { fg = c.pink, bg = c.none, style = "bold" },
    htmlEndTag = { fg = c.fg },
    htmlstyle = { fg = c.cyan, bg = c.none, style = "italic" },
    htmlLink = { fg = c.cyan, style = "underline" },
    htmlSpecialChar = { fg = c.red },
    htmlSpecialTagName = { fg = c.blue, style = "bold" },
    htmlTag = { fg = c.fg },
    htmlTagN = { fg = c.blue },
    htmlTagName = { fg = c.blue, "bold" },
    htmlTitle = { fg = c.fg },
    htmlH1 = { fg = c.blue, style = "bold" },
    htmlH2 = { fg = c.blue, style = "bold" },
    htmlH3 = { fg = c.blue, style = "bold" },
    htmlH4 = { fg = c.blue, style = "bold" },
    htmlH5 = { fg = c.blue, style = "bold" },
    -- Markdown
    markdownH1 = { fg = c.blue, style = "bold" },
    markdownH2 = { fg = c.blue, style = "bold" },
    markdownH3 = { fg = c.blue, style = "bold" },
    markdownH4 = { fg = c.blue, style = "bold" },
    markdownH5 = { fg = c.blue, style = "bold" },
    markdownH6 = { fg = c.blue, style = "bold" },
    markdownHeadingDelimiter = { fg = c.gray06 },
    markdownHeadingRule = { fg = c.gray05 },
    markdownId = { fg = c.cyan },
    markdownIdDeclaration = { fg = c.blue },
    markdownIdDelimiter = { fg = c.cyan },
    markdownLinkDelimiter = { fg = c.gray05 },
    markdownLinkText = { fg = c.blue, style = "italic" },
    markdownListMarker = { fg = c.gray06 },
    markdownOrderedListMarker = { fg = c.gray06 },
    markdownRule = { fg = c.gray05 },
    markdownUrl = { fg = c.gray06, bg = c.none, style = "underline" },
    markdownBlockquote = { fg = c.gray06 },
    markdownBold = { fg = c.red, bg = c.none, style = "bold" },
    markdownItalic = { fg = c.red, bg = c.none, style = "italic" },
    markdownCode = { fg = c.pink },
    markdownCodeBlock = { fg = c.pink },
    markdownCodeDelimiter = { fg = c.gray06 },
    -- Dashboard
    DashboardShortCut = { fg = c.red },
    DashboardHeader = { fg = c.pink },
    DashboardCenter = { fg = c.blue },
    DashboardFooter = { fg = c.green, style = "italic" },
    -- highlight groups for the native LSP client
    LspReferenceText = { fg = c.bg, bg = c.pink }, -- used for highlighting "text" references
    LspReferenceRead = { fg = c.bg, bg = c.pink }, -- used for highlighting "read" references
    LspReferenceWrite = { fg = c.bg, bg = c.pink }, -- used for highlighting "write" references

    -- Diagnostics
    DiagnosticError = { fg = c.urgent_red }, -- base highlight group for "Error"
    DiagnosticWarn = { fg = c.urgent_yellow }, -- base highlight group for "Warning"
    DiagnosticInfo = { fg = c.urgent_green }, -- base highlight group from "Information"
    DiagnosticHint = { fg = c.urgent_blue }, -- base highlight group for "Hint"
    DiagnosticUnderlineError = { style = "undercurl", sp = c.urgent_red }, -- used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn = { style = "undercurl", sp = c.urgent_yellow }, -- used to underline "Warning" diagnostics.
    DiagnosticUnderlineInfo = { style = "undercurl", sp = c.urgent_green }, -- used to underline "Information" diagnostics.
    DiagnosticUnderlineHint = { style = "undercurl", sp = c.urgent_blue }, -- used to underline "Hint" diagnostics.

    -- Diagnostics (old)
    LspDiagnosticsDefaultError = { fg = c.red }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError = { fg = c.red }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError = { fg = c.red, style = "bold" }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError = { fg = c.red, style = "bold" }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError = { fg = c.red, style = "undercurl", sp = c.red }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning = { fg = c.yellow }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = c.yellow }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning = { fg = c.yellow, style = "bold" }, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning = { fg = c.yellow, style = "bold" }, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning = { fg = c.yellow, style = "undercurl", sp = c.yellow }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation = { fg = c.blue }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation = { fg = c.blue }, -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation = { fg = c.blue, style = "bold" }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = c.blue, style = "bold" }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation = { fg = c.blue, style = "undercurl", sp = c.blue }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint = { fg = c.cyan }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint = { fg = c.cyan }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint = { fg = c.cyan, style = "bold" }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint = { fg = c.cyan, style = "bold" }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint = { fg = c.cyan, style = "undercurl", sp = c.cyan }, -- used to underline "Hint" diagnostics.

    -- Plugins highlight groups
    -- LspTrouble
    LspTroubleText = { fg = c.gray04 },
    LspTroubleCount = { fg = c.pink, bg = c.gray03 },
    LspTroubleNormal = { fg = c.fg, bg = c.bg },
    --
    -- Diff
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.blue },
    diffOldFile = { fg = c.gray04 },
    diffNewFile = { fg = c.fg },
    diffFile = { fg = c.gray05 },
    diffLine = { fg = c.cyan },
    diffIndexLine = { fg = c.pink },
    -- GitSigns
    GitSignsAdd = { fg = c.green }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr = { fg = c.green }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn = { fg = c.green }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = c.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = c.red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = c.red }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeNormal = { bg = c.bgog },
    TelescopeBorder = { fg = c.bgog },
    TelescopeSelectionCaret = { fg = c.blue, bg = c.bgog },
    TelescopeMatching = { fg = c.red },
    TelescopePromptNormal = { bg = c.gray03 },
    TelescopePromptTitle = { fg = c.magenta },
    TelescopePromptPrefix = { fg = c.blue },
    TelescopePromptBorder = { fg = c.gray03, bg = c.gray03 },
    TelescopePreviewTitle = { fg = c.magenta },
    TelescopePreviewBorder = { fg = c.bgog, bg = c.bgog },
    TelescopeResultsTitle = { fg = c.magenta, bg = c.bgog },
    TelescopeResultsBorder = { fg = c.bgog, bg = c.bgog },

    -- NvimTree
    NvimTreeRootFolder = { fg = c.cyan, style = "italic" },
    NvimTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg2 },
    NvimTreeImageFile = { fg = c.pink },
    NvimTreeExecFile = { fg = c.green },
    NvimTreeSpecialFile = { fg = c.pink },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeOpenedFolderName = { fg = c.blue },
    NvimTreeOpenedFile = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.gray05 },
    NvimTreeFolderIcon = { fg = c.gray06 },
    NvimTreeIndentMarker = { fg = c.gray03 },
    NvimTreeGitDirty = { fg = c.gray06 },
    NvimTreeGitStaged = { fg = c.cyan },
    NvimTreeGitRenamed = { fg = c.yellow },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeGitDeleted = { fg = c.red },

    -- Ale-vim
    ALEError = { fg = c.red },
    ALEWarning = { fg = c.yellow },
    ALEInfo = { fg = c.blue },
    ALEErrorSign = { fg = c.red },
    ALEWarningSign = { fg = c.yellow },
    ALEInfoSign = { fg = c.blue },
    ALEVirtualTextError = { fg = c.red },
    ALEVirtualTextWarning = { fg = c.yellow },
    ALEVirtualTextInfo = { fg = c.blue },

    -- WhichKey
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.magenta, style = "italic" },
    WhichKeyDesc = { fg = c.blue },
    WhichKeySeperator = { fg = c.gray05 },
    WhichKeyFloating = { bg = c.gray01 },
    WhichKeyFloat = { bg = c.gray01 },

    -- LspSaga
    DefinitionIcon = { fg = c.gray06 },
    DiagnosticWarning = { fg = c.yellow },
    DiagnosticTruncateLine = { fg = c.gray05 },
    TargetWord = { fg = c.cyan },
    TargetFileName = { fg = c.blue },
    DiagnosticInformation = { fg = c.blue },
    SagaShadow = { fg = c.gray05 },
    ReferencesIcon = { fg = c.gray06 },
    ReferencesCount = { fg = c.gray06 },
    DefinitionCount = { fg = c.gray06 },
    ProviderTruncateLine = { fg = c.gray05 },
    LspSagaFinderSelection = { fg = c.pink },
    LspFloatWinNormal = { bg = c.gray01 },
    LspFloatWinBorder = { fg = c.gray05 },
    LspSagaLspFinderBorder = { fg = c.gray05, bg = c.gray01 },
    LspSagaBorderTitle = { fg = c.gray06 },
    DefinitionPreviewTitle = { fg = c.gray06 },
    LspSagaShTruncateLine = { fg = c.gray05 },
    LspSagaDocTruncateLine = { fg = c.gray05 },
    LspSagaCodeActionTitle = { fg = c.gray06 },
    LspSagaCodeActionTruncateLine = { fg = c.gray05 },
    LspSagaCodeActionContent = { fg = c.pink },
    LspSagaRenamePromptPrefix = { fg = c.green },
    LspSagaRenameBorder = { fg = c.gray05, bg = c.gray01 },
    LspSagaHoverBorder = { fg = c.gray05, bg = c.gray01 },
    LspSagaSignatureHelpBorder = { fg = c.gray05 },
    LspSagaCodeActionBorder = { fg = c.gray05, bg = c.gray01 },
    LspSagaAutoPreview = { fg = c.gray06 },
    LspSagaDefPreviewBorder = { fg = c.gray05 },
    LspLinesDiagBorder = { fg = c.gray05 },
    LspSagaLightBulb = { fg = c.gray06 },
    LspSagaLightBulbSign = { fg = c.gray06 },
    LspSagaDiagnosticBorder = { fg = c.gray05 },
    LspSagaDiagnosticHeader = { fg = c.gray06 },
    LspSagaDiagnosticTruncateLine = { fg = c.gray05 },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.green },
    BufferLineFill = { bg = c.gray03 },

    -- Sneak
    Sneak = { fg = c.bg, bg = c.green },
    SneakScope = { bg = c.gray04 },

    -- Indent Blankline
    IndentBlanklineChar = { fg = c.gray03 },
    IndentBlanklineContextChar = { fg = c.gray06 },

    -- nvim-cmp
    CmpItemAbbrDeprecated = { fg = c.gray05, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.blue },
    CmpItemAbbrMatchFuzzy = { fg = c.blue },
    CmpItemKindVariable = { fg = c.blue },
    CmpItemKindInterface = { fg = c.blue },
    CmpItemKindText = { fg = c.blue },
    CmpItemKindFunction = { fg = c.pink },
    CmpItemKindMethod = { fg = c.pink },
    CmpItemKindKeyword = { fg = c.fg },
    CmpItemKindProperty = { fg = c.fg },
    CmpItemKindUnit = { fg = c.fg },
    -- mini.nvim
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.cyan },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.blue },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.magenta },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.yellow },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.green },
    MiniStatuslineModeOther = { fg = c.gray05, bg = c.gray01 },
    MiniStatuslineDevInfo = { fg = c.fg, bg = c.gray02 },
    MiniStatuslineFilename = { fg = c.fg, bg = c.gray01 },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.gray02 },
    MiniStatuslineInactive = { fg = c.gray05, bg = c.gray01 },
    MiniTablineCurrent = { fg = c.bg, bg = c.cyan },
    MiniTablineVisible = { fg = c.bg, bg = c.magenta },
    MiniTablineHidden = { fg = c.gray05, bg = c.gray02 },
    MiniTablineModifiedCurrent = { fg = c.bg, bg = c.cyan },
    MiniTablineModifiedVisible = { fg = c.bg, bg = c.magenta },
    MiniTablineModifiedHidden = { fg = c.gray05, bg = c.gray02 },
    MiniTablineFill = { bg = c.gray01 },
    MiniCursorword = { style = "underline" },
    MiniSurround = { style = "underline" },
    MiniTrailspace = { bg = c.red },
    MiniCompletionActiveParameter = { style = "underline" },
    MiniJump = { style = "reverse" },
    MiniStarterCurrent = { fg = c.cyan },
    MiniStarterFooter = { fg = c.gray06 },
    MiniStarterHeader = { fg = c.blue },
    MiniStarterInactive = { fg = c.gray06 },
    MiniStarterItem = { fg = c.fg, bg = c.gray01 },
    MiniStarterItemBullet = { bg = c.gray01 },
    MiniStarterItemPrefix = { style = "underline" },
    MiniStarterSelection = { fg = c.magenta },
    MiniStarterQuery = { fg = c.magenta },

    -- Custom highlight groups for use in statusline plugins
    StatusLineNormalMode = { fg = c.black, bg = c.gray02 },
    StatusLineInsertMode = { fg = c.black, bg = c.gray03 },
    StatusLineVisualMode = { fg = c.black, bg = c.gray04 },
    StatusLineReplaceMode = { fg = c.black, bg = c.gray05 },
    StatusLineTerminalMode = { fg = c.black, bg = c.gray05 },
    StatusLineHint = { fg = c.cyan, bg = c.gray01 },
    StatusLineInfo = { fg = c.blue, bg = c.gray01 },
    StatusLineWarn = { fg = c.yellow, bg = c.gray01 },
    StatusLineError = { fg = c.red, bg = c.gray01 },

    -- Hydra
    HydraRed = { fg = c.red },
    HydraBlue = { fg = c.blue },
    HydraAmaranth = { fg = c.red },
    HydraTeal = { fg = c.cyan },
    HydraPink = { fg = c.magenta },
    HydraHint = { fg = c.fg, bg = c.gray02 },

    -- vim-illuminate
    IlluminatedWordText = { bg = c.gray02 },
    IlluminatedWordRead = { bg = c.gray02 },
    IlluminatedWordWrite = { bg = c.gray02 },

    FunctionCalls = { fg = c.teal, style = cfg.function_style },
  }
  local treesitter = {
    ["annotation"] = { fg = c.green }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    ["attribute"] = { fg = c.pink }, -- (unstable) TODO: docs
    ["boolean"] = { fg = c.yellow, bg = c.none, style = cfg.boolean_style }, -- true or false
    ["character"] = { fg = c.cyan }, -- For characters.
    ["comment"] = { fg = c.gray05, bg = c.none, style = cfg.comment_style }, -- For comment blocks.
    ["conditional"] = { fg = c.bright_pink, style = cfg.keyword_style }, -- For keywords related to conditionnals.
    ["constant"] = { link = "Constant" }, -- For constants
    ["constant.builtin"] = { fg = c.fg, style = "italic" }, -- For constants that are built in the language: `nil` in Lua.
    ["constant.macro"] = { fg = c.cyan }, -- For constants that are defined by macros: `NULL` in C.
    ["constructor"] = { fg = c.bright_magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["error"] = { fg = c.red }, -- For syntax/parser errors.
    ["exception"] = { fg = c.green }, -- For exception related keywords.
    ["field"] = { link = "Identifier" }, -- For fields.
    ["float"] = { fg = c.pink }, -- For floats.
    ["function"] = { fg = c.teal, style = cfg.function_style }, -- For fuction (calls and definitions).
    ["function.call"] = {link = "FunctionCalls"},
    ["function.builtin"] = { fg = c.bright_pink, style = cfg.function_style }, -- For builtin functions: `table.insert` in Lua.
    ["function.macro"] = { fg = c.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    ["include"] = { fg = c.green, style = "italic" }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    ["keyword"] = { fg = c.bright_pink, style = cfg.keyword_style }, -- For keywords that don't fall in previous categories.
    ["keyword.function"] = { fg = c.bright_pink, style = cfg.function_style }, -- For keywords used to define a fuction.
    ["keyword.operator"] = { fg = c.bright_pink }, -- For operators that are English words, e.g. `and`, `as`, `or`.
    ["keyword.return"] = { fg = c.bright_pink, style = cfg.keyword_style }, -- For the `return` and `yield` keywords.
    ["label"] = { fg = c.bright_pink }, -- For labels: `label:` in C and `:label:` in Lua.
    ["method"] = { fg = c.teal, style = cfg.function_style }, -- For method calls and definitions.
    ["method.call"] = {link = "FunctionCalls"}, -- For method calls and definitions.
    ["namespace"] = { fg = c.blue }, -- For identifiers referring to modules and namespaces.
    -- TSNone = {}, -- No highlighting. Don't change the values of this highlight group.
    ["number"] = { fg = c.pink }, -- For all numbers
    ["operator"] = { fg = c.gray06 }, -- For any operator: `+`, but also `->` and `*` in C.
    ["parameter"] = { link = "Identifier" }, -- For parameters of a function.
    -- TSParameterReference = { fg = c.fg }, -- For references to parameters of a function.
    ["property"] = { link = "Identifier" }, -- Same as `TSField`.
    ["punct.delimiter"] = { fg = c.gray06 }, -- For delimiters ie: `.`
    ["punct.bracket"] = { fg = c.gray06 }, -- For brackets and parens.
    ["punct.special"] = { fg = c.pink }, -- For special punctutation that does not fall in the catagories before.
    ["repeat"] = { fg = c.bright_pink, style = cfg.keyword_style }, -- For keywords related to loops.
    ["string"] = { fg = c.teal }, -- For strings.
    ["string.regex"] = { fg = c.blue }, -- For regexes.
    ["string.escape"] = { fg = c.magenta }, -- For escape characters within a string.
    ["string.special"] = { fg = c.yellow }, -- For escape characters within a string.
    ["symbol"] = { fg = c.pink }, -- For identifiers referring to symbols or atoms.
    ["tag"] = { fg = c.bright_pink }, -- Tags like html tag names.
    ["tag.attribute"] = { fg = c.blue, style = "italic" }, -- For html tag attributes.
    ["tag.delimiter"] = { fg = c.gray06 }, -- Tag delimiter like `<` `>` `/`
    ["text"] = { fg = c.pink }, -- For strings considered text in a markup language.
    ["text.strong"] = { fg = c.pink, style = "bold" }, -- For text to be represented in bold.
    ["text.emphasis"] = { fg = c.pink, style = "bold,italic" }, -- For text to be represented with emphasis.
    ["text.underline"] = { fg = c.fg, bg = c.none, style = "underline" }, -- For text to be represented with an underline.
    ["text.strike"] = {}, -- For strikethrough text.
    ["text.title"] = { fg = c.fg, bg = c.none, style = "bold" }, -- Text that is part of a title.
    ["text.literal"] = { fg = c.fg }, -- Literal text.
    ["text.uri"] = { fg = c.yellow }, -- Any URL like a link or email.
    ["text.math"] = { fg = c.blue }, -- For LaTeX-like math environments.
    ["text.reference"] = { fg = c.red }, -- For footnotes, text references, citations.
    ["text.environment"] = { fg = c.blue }, -- For text environments of markup languages.
    ["text.environment.name"] = { fg = c.blue }, -- For the name/the string indicating the type of text environment.
    ["text.note"] = { fg = c.blue, style = "italic" }, -- Text representation of an informational note.
    ["text.warning"] = { fg = c.yellow, style = "italic" }, -- Text representation of a warning note.
    ["text.danger"] = { fg = c.red, style = "italic" }, -- Text representation of a danger note.
    ["type"] = { fg = c.orange, style = cfg.type_style }, -- For types.
    ["type.builtin"] = { link = "@type" }, -- For builtin types.
    ["variable"] = { fg = c.fg, style = cfg.variable_style }, -- Any variable name that does not have another highlight.
    ["variable.builtin"] = { link = "@variable" }, -- Variable names that are defined by the languages, like `this` or `self`.
  }
  for group, parameters in pairs(treesitter) do
    utils.ts_highlight(group, parameters)
  end

  for group, parameters in pairs(groups) do
    utils.highlight(group, parameters)
  end
end

M.colorscheme = function()
  vim.api.nvim_command("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "barstrata"

  set_terminal_colors()
  set_groups()
end

return M
