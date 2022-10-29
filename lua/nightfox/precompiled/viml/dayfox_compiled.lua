-- This file is autogenerated by NIGHTFOX.
-- Do not make changes directly to this file.

local cmd = vim.fn.has("nvim") == 0 and vim.command or vim.cmd

if vim.g.colors_name then
  cmd("hi clear")
end

cmd("set termguicolors")
cmd("set background=light")
vim.g.colors_name = "dayfox"

cmd([[
highlight @constant.builtin guifg=#d76558 guibg=NONE gui=NONE guisp=NONE |
highlight @constructor guifg=#8e6f98 guibg=NONE gui=NONE guisp=NONE |
highlight @danger guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @error guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @field guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight @field.rust guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight @function.builtin guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @function.macro guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @keyword.function guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @keyword.operator guifg=#233f5e guibg=NONE gui=bold guisp=NONE |
highlight @namespace guifg=#5a99b0 guibg=NONE gui=NONE guisp=NONE |
highlight @note guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight @operator guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.bracket guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.delimiter guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.special guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight @string.escape guifg=#a36f3e guibg=NONE gui=bold guisp=NONE |
highlight @string.regex guifg=#a36f3e guibg=NONE gui=NONE guisp=NONE |
highlight @tag.javascript guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @tag.typescript guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @text guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight @text.reference guifg=#8e6f98 guibg=NONE gui=NONE guisp=NONE |
highlight @type.builtin guifg=#5a99b0 guibg=NONE gui=NONE guisp=NONE |
highlight @uri guifg=#6ca7bd guibg=NONE gui=bold guisp=NONE |
highlight @variable guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight @variable.builtin guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight @warning guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight AerialGuide guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight Bold guifg=NONE guibg=NONE gui=bold guisp=NONE |
highlight BufferCurrent guifg=#1d344f guibg=#2e537d gui=NONE guisp=NONE |
highlight BufferCurrentIndex guifg=#4d688e guibg=#2e537d gui=NONE guisp=NONE |
highlight BufferCurrentMod guifg=#ba793e guibg=#2e537d gui=NONE guisp=NONE |
highlight BufferCurrentSign guifg=#4d688e guibg=#2e537d gui=NONE guisp=NONE |
highlight BufferCurrentTarget guifg=#b95d76 guibg=#2e537d gui=NONE guisp=NONE |
highlight BufferInactive guifg=#7f848e guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferInactiveIndex guifg=#7f848e guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferInactiveMod guifg=#dcc8b6 guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferInactiveSign guifg=#ced6db guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferInactiveTarget guifg=#b95d76 guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferTabpage guifg=#ced6db guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferTabpages guifg=NONE guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferVisible guifg=#1d344f guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferVisibleIndex guifg=#4d688e guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferVisibleMod guifg=#ba793e guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferVisibleSign guifg=#4d688e guibg=#dbdbdb gui=NONE guisp=NONE |
highlight BufferVisibleTarget guifg=#b95d76 guibg=#dbdbdb gui=NONE guisp=NONE |
highlight CmpDocumentation guifg=#1d344f guibg=#dbdbdb gui=NONE guisp=NONE |
highlight CmpDocumentationBorder guifg=#ced5de guibg=#dbdbdb gui=NONE guisp=NONE |
highlight CmpItemAbbr guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemAbbrDeprecated guifg=#2e537d guibg=NONE gui=strikethrough guisp=NONE |
highlight CmpItemAbbrMatch guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemAbbrMatchFuzzy guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemKindDefault guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemKindSnippet guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight CocInlayHint guifg=#7f848e guibg=#dbcece gui=NONE guisp=NONE |
highlight ColorColumn guifg=NONE guibg=#dbcece gui=NONE guisp=NONE |
highlight Comment guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight Conceal guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight Conditional guifg=#806589 guibg=NONE gui=NONE guisp=NONE |
highlight Constant guifg=#d76558 guibg=NONE gui=NONE guisp=NONE |
highlight Cursor guifg=#eaeaea guibg=#1d344f gui=NONE guisp=NONE |
highlight CursorLine guifg=NONE guibg=#ced6db gui=NONE guisp=NONE |
highlight CursorLineNr guifg=#ba793e guibg=NONE gui=bold guisp=NONE |
highlight DapUIBreakpointsCurrentLine guifg=#618774 guibg=NONE gui=bold guisp=NONE |
highlight DapUIBreakpointsDisabledLine guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight DapUIBreakpointsInfo guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight DapUIBreakpointsPath guifg=#5a99b0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIDecoration guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight DapUIModifiedValue guifg=#1d344f guibg=NONE gui=bold guisp=NONE |
highlight DapUIScope guifg=#5a99b0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIStoppedThread guifg=#5a99b0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIValue guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight DapUIVariable guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesEmpty guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesError guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesValue guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight DashboardFooter guifg=#d76558 guibg=NONE gui=italic guisp=NONE |
highlight DiagnosticError guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticHint guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticInfo guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE gui=undercurl guisp=#b95d76 |
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE gui=undercurl guisp=#618774 |
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE gui=undercurl guisp=#4d688e |
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE gui=undercurl guisp=#ba793e |
highlight DiagnosticVirtualTextError guifg=#b95d76 guibg=#dbc0c7 gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextHint guifg=#618774 guibg=#c1ccc7 gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextInfo guifg=#4d688e guibg=#bbc3ce gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextWarn guifg=#ba793e guibg=#dcc8b6 gui=NONE guisp=NONE |
highlight DiagnosticWarn guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight DiffAdd guifg=NONE guibg=#cfd6d2 gui=NONE guisp=NONE |
highlight DiffChange guifg=NONE guibg=#cbd0d8 gui=NONE guisp=NONE |
highlight DiffDelete guifg=NONE guibg=#e0ced3 gui=NONE guisp=NONE |
highlight DiffText guifg=NONE guibg=#abb6c5 gui=NONE guisp=NONE |
highlight Directory guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight EndOfBuffer guifg=#eaeaea guibg=NONE gui=NONE guisp=NONE |
highlight Error guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight ErrorMsg guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight FernBranchText guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight FloatBorder guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight FoldColumn guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight Folded guifg=#2e537d guibg=#dbcece gui=NONE guisp=NONE |
highlight Function guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterAdd guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterChange guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterDelete guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsAdd guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsChange guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsDelete guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette0 guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette1 guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette10 guifg=#629f81 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette11 guifg=#ca884a guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette12 guifg=#4e75aa guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette13 guifg=#9f75ac guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette14 guifg=#74b2c9 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette15 guifg=#cfd6dd guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette2 guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette3 guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette4 guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette5 guifg=#8e6f98 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette6 guifg=#6ca7bd guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette7 guifg=#cfd6dd guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette8 guifg=#24476f guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette9 guifg=#c76882 guibg=NONE gui=NONE guisp=NONE |
highlight HopNextKey guifg=#6ca7bd guibg=NONE gui=bold guisp=NONE |
highlight HopNextKey1 guifg=#4d688e guibg=NONE gui=bold guisp=NONE |
highlight HopNextKey2 guifg=#4e75aa guibg=NONE gui=NONE guisp=NONE |
highlight HopUnmatched guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight Identifier guifg=#6ca7bd guibg=NONE gui=NONE guisp=NONE |
highlight IncSearch guifg=#FFFFFF guibg=#618774 gui=NONE guisp=NONE |
highlight Italic guifg=NONE guibg=NONE gui=italic guisp=NONE |
highlight Keyword guifg=#8e6f98 guibg=NONE gui=NONE guisp=NONE |
highlight LightspeedGreyWash guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight LineNr guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspCodeLens guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight LspCodeLensSeparator guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspFloatWinBorder guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspFloatWinNormal guifg=NONE guibg=#dbdbdb gui=NONE guisp=NONE |
highlight LspInlayHint guifg=#7f848e guibg=#dbcece gui=NONE guisp=NONE |
highlight LspReferenceRead guifg=NONE guibg=#ced5de gui=NONE guisp=NONE |
highlight LspReferenceText guifg=NONE guibg=#ced5de gui=NONE guisp=NONE |
highlight LspReferenceWrite guifg=NONE guibg=#ced5de gui=NONE guisp=NONE |
highlight LspSagaCodeActionBorder guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaDefPreviewBorder guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaFinderSelection guifg=#ced5de guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaHoverBorder guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaRenameBorder guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaSignatureHelpBorder guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight LspSignatureActiveParameter guifg=#b6c4d9 guibg=NONE gui=NONE guisp=NONE |
highlight LspTroubleCount guifg=#8e6f98 guibg=#2e537d gui=NONE guisp=NONE |
highlight LspTroubleNormal guifg=#2e537d guibg=#dbdbdb gui=NONE guisp=NONE |
highlight LspTroubleText guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight MatchParen guifg=#ba793e guibg=NONE gui=bold guisp=NONE |
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE gui=nocombine guisp=NONE |
highlight MiniJump guifg=#dbdbdb guibg=#8e6f98 gui=NONE guisp=NONE |
highlight MiniJump2dSpot guifg=#6ca7bd guibg=NONE gui=bold guisp=NONE |
highlight MiniStarterCurrent guifg=NONE guibg=NONE gui=nocombine guisp=NONE |
highlight MiniStarterFooter guifg=#d76558 guibg=NONE gui=italic guisp=NONE |
highlight MiniStarterItemBullet guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterItemPrefix guifg=#d685af guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterQuery guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterSection guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight MiniStatuslineDevinfo guifg=#233f5e guibg=#dbcece gui=NONE guisp=NONE |
highlight MiniStatuslineFileinfo guifg=#233f5e guibg=#dbcece gui=NONE guisp=NONE |
highlight MiniStatuslineModeCommand guifg=#dbdbdb guibg=#ba793e gui=bold guisp=NONE |
highlight MiniStatuslineModeInsert guifg=#dbdbdb guibg=#618774 gui=bold guisp=NONE |
highlight MiniStatuslineModeNormal guifg=#dbdbdb guibg=#6ca7bd gui=bold guisp=NONE |
highlight MiniStatuslineModeOther guifg=#dbdbdb guibg=#4d688e gui=bold guisp=NONE |
highlight MiniStatuslineModeReplace guifg=#dbdbdb guibg=#b95d76 gui=bold guisp=NONE |
highlight MiniStatuslineModeVisual guifg=#dbdbdb guibg=#8e6f98 gui=bold guisp=NONE |
highlight MiniTablineCurrent guifg=#233f5e guibg=#bebebe gui=bold guisp=NONE |
highlight MiniTablineHidden guifg=#2e537d guibg=#dbcece gui=NONE guisp=NONE |
highlight MiniTablineModifiedCurrent guifg=#bebebe guibg=#233f5e gui=bold guisp=NONE |
highlight MiniTablineModifiedHidden guifg=#dbcece guibg=#2e537d gui=NONE guisp=NONE |
highlight MiniTablineModifiedVisible guifg=#dbcece guibg=#233f5e gui=NONE guisp=NONE |
highlight MiniTablineTabpagesection guifg=#1d344f guibg=#eaeaea gui=bold guisp=NONE |
highlight MiniTablineVisible guifg=#233f5e guibg=#dbcece gui=NONE guisp=NONE |
highlight MiniTestEmphasis guifg=NONE guibg=NONE gui=bold guisp=NONE |
highlight MiniTestFail guifg=#b95d76 guibg=NONE gui=bold guisp=NONE |
highlight MiniTestPass guifg=#618774 guibg=NONE gui=bold guisp=NONE |
highlight MiniTrailspace guifg=NONE guibg=#b95d76 gui=NONE guisp=NONE |
highlight ModeMsg guifg=#ba793e guibg=NONE gui=bold guisp=NONE |
highlight ModesCopy guifg=NONE guibg=#ba793e gui=NONE guisp=NONE |
highlight ModesDelete guifg=NONE guibg=#b95d76 gui=NONE guisp=NONE |
highlight ModesInsert guifg=NONE guibg=#6ca7bd gui=NONE guisp=NONE |
highlight ModesVisual guifg=NONE guibg=#8e6f98 gui=NONE guisp=NONE |
highlight MoreMsg guifg=#4d688e guibg=NONE gui=bold guisp=NONE |
highlight NeoTreeDirectoryIcon guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeDirectoryName guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeDotfile guifg=#4e75aa guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeFileName guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeFileNameOpened guifg=#1d344f guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitAdded guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitConflict guifg=#e3786c guibg=NONE gui=italic guisp=NONE |
highlight NeoTreeGitDeleted guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitIgnored guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitModified guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitUntracked guifg=#9f75ac guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeIndentMarker guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeNormal guifg=#1d344f guibg=#dbdbdb gui=NONE guisp=NONE |
highlight NeoTreeRootName guifg=#e3786c guibg=NONE gui=bold guisp=NONE |
highlight NeoTreeSymbolicLinkTarget guifg=#de8db7 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitBranch guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffAdd guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffAddHighlight guifg=NONE guibg=#cfd6d2 gui=NONE guisp=NONE |
highlight NeogitDiffContextHighlight guifg=NONE guibg=#dbcece gui=NONE guisp=NONE |
highlight NeogitDiffDelete guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffDeleteHighlight guifg=NONE guibg=#e0ced3 gui=NONE guisp=NONE |
highlight NeogitHunkHeader guifg=#4d688e guibg=#ced6db gui=NONE guisp=NONE |
highlight NeogitHunkHeaderHighlight guifg=#4d688e guibg=#ced5de gui=NONE guisp=NONE |
highlight NeogitNotificationError guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitNotificationInfo guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NeogitNotificationWarning guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight NeogitRemote guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight NeotestAdapterName guifg=#d685af guibg=NONE gui=bold guisp=NONE |
highlight NeotestDir guifg=#6ca7bd guibg=NONE gui=NONE guisp=NONE |
highlight NeotestFailed guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight NeotestFile guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NeotestFocused guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight NeotestMarked guifg=#1d344f guibg=NONE gui=bold guisp=NONE |
highlight NeotestNamespace guifg=#5a99b0 guibg=NONE gui=NONE guisp=NONE |
highlight NeotestPassed guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight NeotestRunning guifg=#e3786c guibg=NONE gui=NONE guisp=NONE |
highlight NeotestSkipped guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight NonText guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight Normal guifg=#1d344f guibg=#eaeaea gui=NONE guisp=NONE |
highlight NormalFloat guifg=#1d344f guibg=#dbdbdb gui=NONE guisp=NONE |
highlight NormalNC guifg=#1d344f guibg=#eaeaea gui=NONE guisp=NONE |
highlight NotifyDEBUGBorder guifg=#a5b8af guibg=NONE gui=NONE guisp=NONE |
highlight NotifyDEBUGTitle guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyERRORBorder guifg=#d2a3b0 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyERRORTitle guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyINFOBorder guifg=#9ba9bc guibg=NONE gui=NONE guisp=NONE |
highlight NotifyINFOTitle guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NotifyTRACEBorder guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight NotifyTRACETitle guifg=#7f848e guibg=NONE gui=NONE guisp=NONE |
highlight NotifyWARNBorder guifg=#d2b294 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyWARNTitle guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight Number guifg=#e3786c guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeEmptyFolderName guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeFolderIcon guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeFolderName guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitDeleted guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitDirty guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitMerge guifg=#e3786c guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitNew guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeImageFile guifg=#cfd6dd guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeIndentMarker guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeNormal guifg=#1d344f guibg=#dbdbdb gui=NONE guisp=NONE |
highlight NvimTreeOpenedFile guifg=#c9709e guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeOpenedFolderName guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeRootFolder guifg=#e3786c guibg=NONE gui=bold guisp=NONE |
highlight NvimTreeSpecialFile guifg=#6ca7bd guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeSymlink guifg=#de8db7 guibg=NONE gui=NONE guisp=NONE |
highlight Operator guifg=#233f5e guibg=NONE gui=NONE guisp=NONE |
highlight Pmenu guifg=#1d344f guibg=#ced5de gui=NONE guisp=NONE |
highlight PmenuSel guifg=NONE guibg=#b6c4d9 gui=NONE guisp=NONE |
highlight PmenuThumb guifg=NONE guibg=#b6c4d9 gui=NONE guisp=NONE |
highlight PounceAccept guifg=#eaeaea guibg=#d76558 gui=NONE guisp=NONE |
highlight PounceAcceptBest guifg=#eaeaea guibg=#5a99b0 gui=NONE guisp=NONE |
highlight PounceGap guifg=#1d344f guibg=#ced5de gui=NONE guisp=NONE |
highlight PounceMatch guifg=#1d344f guibg=#b6c4d9 gui=NONE guisp=NONE |
highlight PreProc guifg=#c9709e guibg=NONE gui=NONE guisp=NONE |
highlight Search guifg=#1d344f guibg=#b6c4d9 gui=NONE guisp=NONE |
highlight SignColumn guifg=#2e537d guibg=NONE gui=NONE guisp=NONE |
highlight Sneak guifg=#dbdbdb guibg=#8e6f98 gui=NONE guisp=NONE |
highlight SneakScope guifg=NONE guibg=#ced5de gui=NONE guisp=NONE |
highlight Special guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight SpellBad guifg=NONE guibg=NONE gui=undercurl guisp=#b95d76 |
highlight SpellCap guifg=NONE guibg=NONE gui=undercurl guisp=#ba793e |
highlight SpellLocal guifg=NONE guibg=NONE gui=undercurl guisp=#4d688e |
highlight SpellRare guifg=NONE guibg=NONE gui=undercurl guisp=#4d688e |
highlight Statement guifg=#8e6f98 guibg=NONE gui=NONE guisp=NONE |
highlight StatusLine guifg=#233f5e guibg=#dbdbdb gui=NONE guisp=NONE |
highlight StatusLineNC guifg=#2e537d guibg=#dbdbdb gui=NONE guisp=NONE |
highlight String guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight Substitute guifg=#eaeaea guibg=#b95d76 gui=NONE guisp=NONE |
highlight TabLine guifg=#233f5e guibg=#dbcece gui=NONE guisp=NONE |
highlight TabLineFill guifg=NONE guibg=#dbdbdb gui=NONE guisp=NONE |
highlight TabLineSel guifg=#eaeaea guibg=#2e537d gui=NONE guisp=NONE |
highlight TelescopeBorder guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight TelescopeSelectionCaret guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight Title guifg=#485e7d guibg=NONE gui=NONE guisp=NONE |
highlight Todo guifg=#eaeaea guibg=#4d688e gui=NONE guisp=NONE |
highlight Type guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight Underlined guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight VertSplit guifg=#dbdbdb guibg=NONE gui=NONE guisp=NONE |
highlight Visual guifg=NONE guibg=#ced5de gui=NONE guisp=NONE |
highlight WarningMsg guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight WhichKeyFloat guifg=NONE guibg=#dbdbdb gui=NONE guisp=NONE |
highlight Whitespace guifg=#ced6db guibg=NONE gui=NONE guisp=NONE |
highlight WinBar guifg=#2e537d guibg=#eaeaea gui=bold guisp=NONE |
highlight WinBarNC guifg=#2e537d guibg=#eaeaea gui=bold guisp=NONE |
highlight diffAdded guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight diffChanged guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight diffFile guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight diffIndexLine guifg=#c9709e guibg=NONE gui=NONE guisp=NONE |
highlight diffLine guifg=#d76558 guibg=NONE gui=NONE guisp=NONE |
highlight diffNewFile guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight diffOldFile guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight diffRemoved guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol1 guifg=#b95d76 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol2 guifg=#ba793e guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol3 guifg=#618774 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol4 guifg=#4d688e guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol5 guifg=#6ca7bd guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol6 guifg=#8e6f98 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol7 guifg=#d685af guibg=NONE gui=NONE guisp=NONE |
highlight! link @attribute Constant |
highlight! link @property @field |
highlight! link @tag Keyword |
highlight! link @tag.attribute Function |
highlight! link @tag.delimiter Delimiter |
highlight! link AerialLine Search |
highlight! link Boolean Number |
highlight! link Character String |
highlight! link CmpItemKindClass Type |
highlight! link CmpItemKindConstant TSConstant |
highlight! link CmpItemKindConstructor Function |
highlight! link CmpItemKindEnum Constant |
highlight! link CmpItemKindEnumMember TSField |
highlight! link CmpItemKindEvent Constant |
highlight! link CmpItemKindField TSField |
highlight! link CmpItemKindFunction Function |
highlight! link CmpItemKindInterface Constant |
highlight! link CmpItemKindKeyword Identifier |
highlight! link CmpItemKindMethod Function |
highlight! link CmpItemKindModule TSNamespace |
highlight! link CmpItemKindOperator Operator |
highlight! link CmpItemKindProperty TSProperty |
highlight! link CmpItemKindReference Keyword |
highlight! link CmpItemKindStruct Type |
highlight! link CmpItemKindTypeParameter TSField |
highlight! link CmpItemKindUnit Constant |
highlight! link CmpItemKindValue Keyword |
highlight! link CmpItemKindVariable TSVariable |
highlight! link CmpItemMenu Comment |
highlight! link CurSearch IncSearch |
highlight! link CursorColumn CursorLine |
highlight! link CursorIM Cursor |
highlight! link DapUIBreakpointsLine DapUILineNumber |
highlight! link DapUIFloatBorder FloatBorder |
highlight! link DapUIFrameName Normal |
highlight! link DapUILineNumber Number |
highlight! link DapUISource Keyword |
highlight! link DapUIThread String |
highlight! link DapUIType Type |
highlight! link DashboardCenter String |
highlight! link DashboardHeader Title |
highlight! link DashboardShortCut Identifier |
highlight! link Debug Special |
highlight! link Define PreProc |
highlight! link Delimiter Special |
highlight! link DiagnosticSignError DiagnosticError |
highlight! link DiagnosticSignHint DiagnosticHint |
highlight! link DiagnosticSignInfo DiagnosticInfo |
highlight! link DiagnosticSignWarn DiagnosticWarn |
highlight! link Exception Keyword |
highlight! link FidgetTask LineNr |
highlight! link FidgetTitle Title |
highlight! link Float Number |
highlight! link FocusedSymbol Search |
highlight! link Include PreProc |
highlight! link Label Conditional |
highlight! link LspSagaBorderTitle Title |
highlight! link LspSagaCodeActionContent String |
highlight! link LspSagaCodeActionTitle Title |
highlight! link Macro PreProc |
highlight! link MiniCursorword LspReferenceText |
highlight! link MiniCursorwordCurrent LspReferenceText |
highlight! link MiniIndentscopeSymbol Delimiter |
highlight! link MiniStarterHeader Title |
highlight! link MiniStarterInactive Comment |
highlight! link MiniStarterItem Normal |
highlight! link MiniStatuslineFilename StatusLine |
highlight! link MiniStatuslineInactive StatusLineNC |
highlight! link MiniSurround IncSearch |
highlight! link MiniTablineFill TabLineFill |
highlight! link NeoTreeDimText Conceal |
highlight! link NeoTreeNormalNC NeoTreeNormal |
highlight! link NeotestExpandMarker Conceal |
highlight! link NeotestIndent Conceal |
highlight! link NeotestTest Normal |
highlight! link NotifyDEBUGIcon NotifyDEBUGTitle |
highlight! link NotifyERRORIcon NotifyERRORTitle |
highlight! link NotifyINFOIcon NotifyINFOTitle |
highlight! link NotifyTRACEIcon NotifyTRACETitle |
highlight! link NotifyWARNIcon NotifyWARNTitle |
highlight! link NvimTreeGitRenamed NvimTreeGitDeleted |
highlight! link NvimTreeGitStaged NvimTreeGitStaged |
highlight! link NvimTreeVertSplit VertSplit |
highlight! link PmenuSbar Pmenu |
highlight! link PreCondit PreProc |
highlight! link Question MoreMsg |
highlight! link QuickFixLine CursorLine |
highlight! link Repeat Conditional |
highlight! link SignColumnSB SignColumn |
highlight! link SpecialChar Special |
highlight! link SpecialComment Special |
highlight! link SpecialKey NonText |
highlight! link StorageClass Type |
highlight! link Structure Type |
highlight! link SymbolOutlineConnector Conceal |
highlight! link Tag Special |
highlight! link TelescopeMatching Search |
highlight! link TelescopeSelection CursorLine |
highlight! link Typedef Type |
highlight! link VisualNOS visual |
highlight! link WhichKey Identifier |
highlight! link WhichKeyDesc Keyword |
highlight! link WhichKeyGroup Function |
highlight! link WhichKeySeparator Comment |
highlight! link WhichKeySeperator Comment |
highlight! link WhichKeyValue Comment |
highlight! link WildMenu Pmenu |
highlight! link illuminatedCurWord LspReferenceText |
highlight! link illuminatedWord LspReferenceText |
highlight! link lCursor Cursor |
highlight! link qfFileName Directory |
highlight! link qfLineNr lineNr
]])

local function set_terminal()
   -- stylua: ignore
  local colors = {
    "#1d344f", "#b95d76", "#618774", "#ba793e", "#4d688e", "#8e6f98", "#6ca7bd", "#cdd1d5", "#24476f", "#c76882", "#629f81", "#ca884a", "#4e75aa", "#9f75ac", "#74b2c9", "#cfd6dd",
  }
  for i, c in ipairs(colors) do
    local n = "terminal_color_" .. i - 1
    vim.g[n] = c
  end
  if vim.fn.has("nvim") == 0 then
    vim.g.terminal_ansi_colors = vim.list(colors)
  end
end

set_terminal()
