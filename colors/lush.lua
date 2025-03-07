vim.g.colors_name = "lush"

local black0 = { "#282828", 0, "black" }
local black1 = { "#202020", 0, "black" }
local black2 = { "#101010", 0, "black" }
local black3 = { "#292320", 15, "white" }
local gray0 = { "#555555", 244, "gray" }
local gray1 = { "#505050", 237, "darkgrey" }
local gray2 = { "#3c3c3c", 235, "gray" }
local gray3 = { "#2f2f2f", 233, "gray" }
local gray4 = { "#2d2d2d", 235, "gray" }
local gray5 = { "#7c7c7c", 243, "gray" }
local gray6 = { "#929292", 251, "gray" }
local gray7 = { "#bdbdbd", 15, "white" }
local gray8 = { "#d9d9d9", 15, "white" }
local gray9 = { "#ebebeb", 15, "white" }
local white0 = { "#f0f0f0", 15, "white" }
local white1 = { "#f5f5f5", 15, "white" }
local red0 = { "#A8334C", 196, "red" }
local red1 = { "#811f34", 124, "darkred" }
local red2 = { "#261A14", 124, "darkred" }
local orange0 = { "#a36b37", 208, "darkyellow" }
local orange1 = { "#944927", 208, "darkyellow" }
local orange2 = { "#2E2520", 208, "darkyellow" }
local yellow0 = { "#d4bb74", 220, "yellow" }
local yellow2 = { "#a38737", 220, "yellow" }
local green0 = { "#6fa13a", 72, "green" }
local green1 = { "#5b8332", 83, "darkgreen" }
local green2 = { "#4F6C31", 72, "green" }
local turquoise0 = { "#97ad8f", 38, "darkblue" }
local turquoise1 = { "#749176", 33, "green" }
local blue0 = { "#286486", 63, "blue" }
local blue1 = { "#2b4c5e", 87, "cyan" }
local magenta0 = { "#88507D", 126, "magenta" }
local magenta1 = { "#6b5577", 126, "darkmagenta" }
local magenta2 = { "#2D2A30", 126, "magenta" }
local pink0 = { "#b3899c", 38, "white" }
local pink1 = { "#7b5164", 162, "magenta" }
local pink3 = { "#2E2529", 162, "magenta" }
local purple0 = { "#cb8e9f", 129, "magenta" }
local purple1 = { "#6b4255", 51, "cyan" }
local addfg = { "#605f1f", 51, "cyan" }
local addbg = { "#393913", 51, "cyan" }
local addbg_light = { "#CBE5B8", 51, "cyan" }
local changefg = { "#6b4255", 51, "cyan" }
local changebg = { "#4a3c42", 51, "cyan" }
local changebg_light = { "#D4DEE7", 51, "cyan" }
local delfg = { "#8d2d29", 51, "cyan" }
local delbg = { "#473126", 51, "cyan" }
local delbg_light = { "#EBD8DA", 51, "cyan" }

local highlight_group_normal = { dark = { fg = gray7, bg = black0 }, light = { fg = black0, bg = white1 } }

local BG = highlight_group_normal.bg
local FG = highlight_group_normal.fg
local NONE = {}

local highlight_groups = {
	--[[ 4.1. Text Analysis ]]
	Comment = { dark = { fg = gray0 }, light = { fg = gray6 }, style = "italic" },
	NonText = { dark = { fg = gray2 }, light = { fg = gray8 } },
	EndOfBuffer = "NonText",
	Whitespace = "NonText",

	--[[ 4.1.1. Literals]]
	Constant = { fg = blue1 },
	String = { fg = green2, style = "italic" },
	Character = { fg = green2 },
	Number = { fg = pink0 },
	Boolean = { fg = yellow2 },
	Float = "Number",

	--[[ 4.1.2. Identifiers]]
	Identifier = { dark = { fg = gray7 }, light = { fg = gray0 } },
	Function = { fg = blue1, style = "bold" },

	--[[ 4.1.3. Syntax]]
	Statement = { fg = green1 },
	Conditional = { fg = orange0, style = "italic" },
	Repeat = { fg = red1, style = "italic" },
	Label = { fg = pink1, style = "bold" },
	Operator = { dark = { fg = gray5 }, light = { fg = gray0 } },
	Keyword = { fg = purple1 },
	Exception = { fg = red0, style = "bold" },
	Noise = "Delimiter",

	--[[ 4.1.4. metatextual information]]
	preproc = { fg = turquoise1 },
	include = { fg = pink1, style = { "nocombine", "italic" } },
	Define = { fg = blue0, style = "nocombine" },
	Macro = { fg = blue0, style = "italic" },
	PreCondit = { dark = { fg = yellow2 }, light = { fg = orange1 }, style = "italic" },

	--[[ 4.1.5. Semantics]]
	Type = { fg = yellow2 },
	StorageClass = { dark = { fg = orange0 }, light = { fg = orange1 }, style = "bold" },
	Structure = { fg = yellow0, style = "bold" },
	Typedef = { dark = { fg = yellow2 }, light = { fg = orange1 }, style = "italic" },

	--[[ 4.1.6. Edge Cases]]
	Special = { fg = blue0, style = "bold" },
	SpecialChar = { dark = { fg = red0 }, light = { fg = red1 }, style = "italic" },
	SpecialKey = "Character",
	Tag = "Underlined",
	Delimiter = { fg = gray7 },
	SpecialComment = { fg = gray0, style = { "bold", "nocombine" } },
	Debug = "WarningMsg",

	--[[ 4.1.7. Help Syntax]]
	Underlined = { fg = turquoise1, style = { "underline", color = turquoise1 } },
	Ignore = { fg = gray0 },
	Error = { fg = black0, bg = red0, style = { "bold", "underline", color = black0 } },
	-- Error = { fg = black, bg = red, style = { "bold" } },
	Todo = { fg = black0, bg = yellow0, style = { "bold" } },
	-- Todo = { fg = yellow, style = { "bold"} },
	Hint = { fg = black0, bg = magenta0, style = "bold" },
	Info = { fg = black0, bg = pink0, style = "bold" },
	Warning = { fg = black0, bg = orange0, style = "bold" },

	--[[ 4.2... Editor UI  ]]

	--[[ 4.2.1. Status Line]]
	StatusLine = { dark = { bg = BG, fg = green0 }, light = { bg = BG, fg = green2 } },
	StatusLineNC = function(self)
		return { fg = gray0, bg = self.StatusLine.bg }
	end,
	StatusLineTerm = "StatusLine",
	StatusLineTermNC = "StatusLineNC",
	MsgArea = { bg = BG, fg = gray2 },
	WinBar = { dark = { bg = gray3 }, light = { bg = white0 } },

	--[[ 4.2.2. Separators]]
	VertSplit = { dark = { bg = gray2, fg = gray2 }, light = { bg = gray9, fg = gray9 } },
	TabLine = { dark = { fg = black1, bg = black1 }, light = { fg = white1, bg = white1 } },
	TabLineFill = { dark = { fg = black1, bg = black1 }, light = { fg = white1, bg = white1 } },
	TabLineSel = { fg = FG, bg = BG },
	Title = { style = "bold" },

	--[[ 4.2.3. Conditional Line Highlighting]]
	Conceal = { fg = red0, bg = BG },
	CursorLine = { dark = { bg = gray4 }, light = { bg = white1 } },
	CursorLineNr = { bg = NONE },
	CursorlineFold = { bg = NONE },
	debugBreakpoint = "ErrorMsg",
	debugPC = "ColorColumn",
	LineNr = { bg = BG, dark = { fg = gray1 }, light = { fg = gray7 } },
	QuickFixLine = { dark = { bg = gray4 }, light = { gray7 } },
	Visual = { dark = { bg = gray1 }, light = { bg = gray9 } },
	VisualNOS = { dark = { bg = gray4 }, light = { gray9 } },

	--[[ 4.2.4. Popup Menu]]
	Pmenu = { dark = { fg = gray5, bg = gray2 }, light = { fg = gray1, bg = gray9 } },
	PmenuSbar = { dark = { fg = black2, bg = gray2 }, light = { fg = gray8, bg = gray9 } },
	PmenuSel = {
		dark = { fg = gray9, bg = red0 },
		light = { fg = gray9, bg = red1 },
		style = { "bold" },
	},
	PmenuThumb = { dark = { fg = gray1, bg = gray1 }, light = { fg = gray6, bg = gray6 } },
	WildMenu = "PmenuSel",
	NormalFloat = { bg = BG, dark = { fg = gray7 }, light = { fg = black0 } },
	FloatBorder = { bg = BG, dark = { fg = gray1 }, light = { fg = gray7 } },

	--[[ 4.2.5. Folds]]
	FoldColumn = { dark = { bg = BG, fg = gray1 }, light = { bg = BG, fg = gray7 }, style = "bold" },
	Folded = {
		dark = { bg = changebg },
		light = { bg = changebg_light },
		--[[ style = {
			"bold",
			"italic",
		}, ]]
	},

	--[[ 4.2.6. Diffs]]
	DiffAdd = { fg = addfg, dark = { bg = addbg }, light = { bg = addbg_light } },
	DiffChange = { fg = changefg, dark = { bg = changebg }, light = { bg = changebg_light } },
	DiffDelete = { fg = delfg, dark = { bg = delbg }, light = { bg = delbg_light } },
	DiffText = function(self)
		return { fg = self.DiffAdd.fg, bg = yellow0 }
	end,

	--[[ 4.2.7. Searching]]
	IncSearch = { style = { "bold", "inverse" } },
	MatchParen = { style = { "inverse" } },
	-- Search = { style = { "bold", "underline" } },
	Search = { style = { "inverse", "bold", color = NONE } },

	--[[ 4.2.8. Spelling]]
	SpellBad = { style = { "undercurl", color = red0 } },
	SpellCap = { style = { "undercurl", color = green1 } },
	SpellLocal = { style = { "undercurl", color = yellow0 } },
	SpellRare = { style = { "undercurl", color = blue0 } },

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = { dark = { bg = gray1 }, light = { bg = gray9 } },
	SignColumn = { bg = BG },

	--[[ 4.2.10. Messages]]
	ErrorMsg = { fg = red0, style = "bold" },
	HintMsg = { fg = magenta0, style = "italic" },
	InfoMsg = { fg = pink0, style = "italic" },
	ModeMsg = { fg = yellow0 },
	MoreMsg = { fg = gray8 },
	WarningMsg = { fg = orange0, style = "bold" },
	Question = { fg = turquoise0, style = "bold" },

	--[[ 4.2.11. LSP / Diagnostics ]]
	DiagnosticDeprecated = { strikethrough = true },
	DiagnosticError = "Error",
	DiagnosticFloatingError = function(self)
		return { fg = self.ErrorMsg.fg, bg = BG }
	end,
	DiagnosticSignError = function(self)
		return { fg = self.ErrorMsg.fg, bg = BG }
	end,
	DiagnosticVirtualTextError = function(self)
		return { fg = self.ErrorMsg.fg, bg = red2, style = "italic" }
	end,
	DiagnosticWarn = "Warning",
	DiagnosticFloatingWarn = function(self)
		return { fg = self.WarningMsg.fg, bg = BG }
	end,
	DiagnosticSignWarn = function(self)
		return { fg = self.WarningMsg.fg, bg = BG }
	end,
	DiagnosticVirtualTextWarn = function(self)
		return { fg = self.WarningMsg.fg, bg = orange2, style = "italic" }
	end,
	DiagnosticHint = "Hint",
	DiagnosticFloatingHint = function(self)
		return { fg = self.HintMsg.fg, bg = BG }
	end,
	DiagnosticSignHint = function(self)
		return { fg = self.HintMsg.fg, bg = BG }
	end,
	DiagnosticVirtualTextHint = function(self)
		return { fg = self.HintMsg.fg, bg = magenta2, style = "italic" }
	end,
	DiagnosticInfo = "Info",
	DiagnosticFloatingInfo = function(self)
		return { fg = self.InfoMsg.fg, bg = BG }
	end,
	DiagnosticSignInfo = function(self)
		return { fg = self.InfoMsg.fg, bg = BG }
	end,
	DiagnosticVirtualTextInfo = function(self)
		return { fg = self.InfoMsg.fg, bg = pink3, style = "italic" }
	end,
	DiagnosticUnderlineError = { style = { "undercurl", color = red0 } },
	DiagnosticUnderlineHint = { style = { "undercurl", color = magenta0 } },
	DiagnosticUnderlineInfo = { style = { "undercurl", color = blue0 } },
	DiagnosticUnderlineWarn = { style = { "undercurl", color = orange0 } },
	DiagnosticOk = { fg = black0, bg = green1, style = "bold" },
	DiagnosticFloatingOk = { fg = green1, style = "italic" },
	DiagnosticSignOk = "DiagnosticFloatingOk",
	DiagnosticUnderlineOk = { style = { "undercurl", color = green1 } },
	DiagnosticUnnecessary = function(self)
		return { style = { "underdotted", color = self.Ignore.fg } }
	end,

	LspDiagnosticsDefaultError = "DiagnosticError",
	LspDiagnosticsFloatingError = "DiagnosticFloatingError",
	LspDiagnosticsSignError = "DiagnosticSignError",

	LspDiagnosticsDefaultWarning = "DiagnosticWarn",
	LspDiagnosticsFloatingWarning = "DiagnosticFloatingWarn",
	LspDiagnosticsSignWarning = "DiagnosticSignWarn",

	LspDiagnosticsDefaultHint = "DiagnosticHint",
	LspDiagnosticsFloatingHint = "DiagnosticFloatingHint",
	LspDiagnosticsSignHint = "DiagnosticSignHint",

	LspDiagnosticsDefaultInformation = "DiagnosticInfo",
	LspDiagnosticsFloatingInformation = "DiagnosticFloatingInfo",
	LspDiagnosticsSignInformation = "DiagnosticSignInfo",

	LspDiagnosticsUnderlineError = "DiagnosticUnderlineError",
	LspDiagnosticsUnderlineHint = "DiagnosticUnderlineHint",
	LspDiagnosticsUnderlineInfo = "DiagnosticUnderlineInfo",
	LspDiagnosticsUnderlineWarning = "DiagnosticUnderlineWarn",

	["@lsp.mod.constant"] = "@constant",
	["@lsp.mod.readonly"] = "@lsp.mod.constant",
	["@lsp.type.boolean"] = "@boolean",
	["@lsp.type.character"] = "@character",
	["@lsp.type.float"] = "@float",
	["@lsp.type.interface"] = "@lsp.type.type",
	["@lsp.type.namespace"] = "@namespace",
	["@lsp.type.number"] = "@number",
	["@lsp.type.operator"] = "@operator",
	["@lsp.type.string"] = "@string",
	["@lsp.typemod.type.readonly"] = "@lsp.type.type",

	--[[ 4.2.12. Cursor ]]
	Cursor = { style = "inverse" },
	CursorIM = "Cursor",
	CursorColumn = { bg = gray1 },

	--[[ 4.2.13. Misc ]]
	Directory = { fg = blue0, style = "bold" },

	--[[ 4.3. Programming Languages ]]

	--[[ 4.3.1. C ]]
	cConstant = "Constant",
	cCustomClass = "Type",

	--[[ 4.3.2. C++ ]]
	cppSTLexception = "Exception",
	cppSTLnamespace = "String",

	--[[ 4.3.3 C# ]]
	csBraces = "Delimiter",
	csClass = "Structure",
	csClassType = "Type",
	csContextualStatement = "Conditional",
	csEndColon = "Delimiter",
	csGeneric = "Typedef",
	csInterpolation = "Include",
	csInterpolationDelimiter = "SpecialChar",
	csLogicSymbols = "Operator",
	csModifier = "Keyword",
	csNew = "Operator",
	csNewType = "Type",
	csParens = "Delimiter",
	csPreCondit = "PreProc",
	csQuote = "Delimiter",
	csRepeat = "Repeat",
	csStorage = "StorageClass",
	csUnspecifiedStatement = "Statement",
	csXmlTag = "Define",
	csXmlTagName = "Define",
	razorCode = "PreProc",
	razorcsLHSMemberAccessOperator = "Noise",
	razorcsRHSMemberAccessOperator = "razorcsLHSMemberAccessOperator",
	razorcsStringDelimiter = "razorhtmlValueDelimiter",
	razorcsTypeNullable = "Special",
	razorcsUnaryOperatorKeyword = "Operator",
	razorDelimiter = "Delimiter",
	razorEventAttribute = "PreCondit",
	razorFor = "razorIf",
	razorhtmlAttribute = "htmlArg",
	razorhtmlAttributeOperator = "Operator",
	razorhtmlTag = "htmlTag",
	razorhtmlValueDelimiter = "Delimiter",
	razorIf = "PreCondit",
	razorImplicitExpression = "PreProc",
	razorLine = "Constant",
	razorUsing = "Include",

	--[[ 4.3.4. CSS ]]
	cssAtRule = "PreCondit",
	cssAttr = "Keyword",
	cssAttrComma = "Noise",
	cssAttrRegion = "Keyword",
	cssBraces = "Delimiter",
	cssClassName = "Identifier",
	cssClassNameDot = "Noise",
	cssFlexibleBoxAttr = "cssAttr",
	cssFunctionComma = "Noise",
	cssImportant = "Exception",
	cssNoise = "Noise",
	cssProp = "Label",
	cssPseudoClass = "Special",
	cssPseudoClassId = "cssSelectorOp",
	cssSelectorOp = "Operator",
	cssTagName = "Structure",
	cssUnitDecorators = "Type",
	scssAmpersand = "Special",
	scssAttribute = "Noise",
	scssBoolean = "Boolean",
	scssDefault = "Keyword",
	scssElse = "scssIf",
	scssMixinName = function(self)
		local super = self.cssClassName
		return { bg = super.bg, fg = super.fg, style = "italic" }
	end,
	scssIf = "PreCondit",
	scssInclude = "Include",
	scssSelectorChar = "Delimiter",
	scssDefinition = "PreProc",
	scssSelectorName = "Identifier",
	scssVariable = "Define",
	scssVariableAssignment = "Operator",

	--[[ 4.3.5. Dart ]]
	dartLibrary = "Statement",

	--[[ 4.3.6. dot ]]
	dotKeyChar = "Character",
	dotType = "Type",

	--[[ 4.3.7. Go ]]
	goBlock = "Delimiter",
	goBoolean = "Boolean",
	goBuiltins = "Operator",
	goField = "Identifier",
	goFloat = "Float",
	goFormatSpecifier = "Character",
	goFunction = "Function",
	goFunctionCall = "goFunction",
	goFunctionReturn = NONE,
	goMethodCall = "goFunctionCall",
	goParamType = "goReceiverType",
	goPointerOperator = "SpecialChar",
	goPredefinedIdentifiers = "Constant",
	goReceiver = "goBlock",
	goReceiverType = "goTypeName",
	goSimpleParams = "goBlock",
	goType = "Type",
	goTypeConstructor = "goFunction",
	goTypeName = "Type",
	goVarAssign = "Identifier",
	goVarDefs = "goVarAssign",

	--[[ 4.3.8. HTML ]]
	htmlArg = "Label",
	htmlBold = { fg = highlight_group_normal.fg, style = "bold" },
	htmlTitle = "htmlBold",
	htmlEndTag = "htmlTag",
	htmlH1 = "markdownH1",
	htmlH2 = "markdownH2",
	htmlH3 = "markdownH3",
	htmlH4 = "markdownH4",
	htmlH5 = "markdownH5",
	htmlH6 = "markdownH6",
	htmlItalic = { style = "italic" },
	htmlSpecialTagName = "Keyword",
	htmlTag = "Special",
	htmlTagN = "Typedef",
	htmlTagName = "Type",

	--[[ 4.3.9. Java ]]
	javaClassDecl = "Structure",

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock = "Function",
	jsObjectKey = "Type",
	jsReturn = "Keyword",
	jsVariableDef = "Identifier",

	--[[ 4.3.11. JSON ]]
	jsonBraces = "luaBraces",
	jsonEscape = "SpecialChar",
	jsonKeywordMatch = "Operator",
	jsonNull = "Constant",
	jsonQuote = "Delimiter",
	jsonString = "String",
	jsonStringSQError = "Exception",

	--[[ 4.3.12. Lua ]]
	["@lsp.type.function.lua"] = {},
	["@lsp.type.keyword.lua"] = "SpecialComment",
	["@lsp.typemod.function.declaration.lua"] = "@lsp.type.function",
	["@lsp.typemod.function.global.lua"] = "@lsp.type.function",
	["@lsp.typemod.variable.defaultLibrary.lua"] = "@lsp.type.class.lua",
	["@lsp.typemod.variable.definition.lua"] = "@structure.lua",
	luaBraces = "Structure",
	luaBrackets = "Delimiter",
	luaBuiltin = "Keyword",
	luaComma = "Delimiter",
	luaDocTag = "SpecialComment",
	luaFuncArgName = "Identifier",
	luaFuncCall = "Function",
	luaFuncId = "luaNoise",
	luaFuncKeyword = "Type",
	luaFuncName = "Function",
	luaFuncParens = "Delimiter",
	luaFuncTable = "Identifier",
	luaFunction = "Keyword",
	luaGotoLabel = "luaLabel",
	luaIn = "luaRepeat",
	luaLocal = "Keyword",
	luaNoise = "Delimiter",
	luaParens = "Delimiter",
	luaSpecialTable = "Structure",
	luaSpecialValue = "Function",
	luaStatement = "Keyword",
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return { bg = delimiter.bg, fg = delimiter.fg, style = "italic" }
	end,

	--[[ 4.3.12. Make ]]
	makeCommands = "Statement",
	makeSpecTarget = "Type",

	--[[ 4.3.13. Markdown ]]
	markdownCode = "mkdCode",
	markdownStrike = { fg = gray1, style = { "strikethrough" } },
	markdownJekyllFrontMatter = { fg = gray1 },
	markdownJekyllDelimiter = { fg = gray1 },
	markdownCodeDelimiter = "mkdCodeDelimiter",
	markdownHeadingDelimiter = "NonText",
	markdownH1 = { bg = red0, fg = black0, style = { "bold", "undercurl" } },
	markdownH2 = { bg = orange0, fg = black0, style = { "bold", "undercurl" } },
	markdownH3 = { bg = yellow0, fg = black0, style = { "bold", "undercurl" } },
	markdownH4 = { bg = turquoise1, fg = black0, style = { "bold", "undercurl" } },
	markdownH5 = { bg = blue1, fg = black0, style = { "bold", "undercurl" } },
	markdownH6 = { bg = purple0, fg = black0, style = { "bold", "undercurl" } },
	markdownLinkDelimiter = "Delimiter",
	markdownLinkTextDelimiter = "markdownLinkDelimiter",
	markdownUrl = "Underlined",
	mkdBold = "Ignore",
	mkdBoldItalic = "mkdBold",
	mkdCode = "Keyword",
	mkdCodeDelimiter = "mkdBold",
	mkdCodeEnd = "mkdCodeStart",
	mkdCodeStart = "mkdCodeDelimiter",
	mkdHeading = "Delimiter",
	mkdItalic = "mkdBold",
	mkdLineBreak = "NonText",
	mkdListItem = "Special",
	mkdRule = function(self)
		return { fg = self.Ignore.fg, style = { "underline", color = self.Delimiter.fg } }
	end,
	mkdURL = "htmlString",

	--[[ 4.3.20. Python ]]
	pythonBrackets = "Delimiter",
	pythonBuiltinFunc = "Operator",
	pythonBuiltinObj = "Type",
	pythonBuiltinType = "Type",
	pythonClass = "Structure",
	pythonClassParameters = "pythonParameters",
	pythonDecorator = "PreProc",
	pythonDottedName = "Identifier",
	pythonError = "Error",
	pythonException = "Exception",
	pythonInclude = "Include",
	pythonIndentError = "pythonError",
	pythonLambdaExpr = "pythonOperator",
	pythonOperator = "Operator",
	pythonParam = "Identifier",
	pythonParameters = "Delimiter",
	pythonSelf = "Statement",
	pythonSpaceError = "pythonError",
	pythonStatement = "Statement",

	--[[ 4.3.21. Ruby ]]
	rubyClass = "Structure",
	rubyDefine = "Define",
	rubyInterpolationDelimiter = "Delimiter",

	--[[ 4.3.23. Scala ]]
	scalaKeyword = "Keyword",
	scalaNameDefinition = "Identifier",

	--[[ 4.3.24. shell ]]
	shDerefSimple = "SpecialChar",
	shFunctionKey = "Function",
	shLoop = "Repeat",
	shParen = "Delimiter",
	shQuote = "Delimiter",
	shSet = "Statement",
	shTestOpr = "Debug",

	--[[ 4.3.25. Solidity ]]
	solBuiltinType = "Type",
	solContract = "Typedef",
	solContractName = "Function",

	--[[ 4.3.26. TOML ]]
	tomlComment = "Comment",
	tomlDate = "Special",
	tomlFloat = "Float",
	tomlKey = "Label",
	tomlTable = "Structure",

	--[[ 4.3.27. VimScript ]]
	vimCmdSep = "Delimiter",
	vimFunction = "Function",
	vimFgBgAttrib = "Constant",
	vimHiCterm = "Label",
	vimHiCtermFgBg = "vimHiCterm",
	vimHiGroup = "Typedef",
	vimHiGui = "vimHiCterm",
	vimHiGuiFgBg = "vimHiGui",
	vimHiKeyList = "Operator",
	vimIsCommand = "Identifier",
	vimOption = "Keyword",
	vimScriptDelim = "Ignore",
	vimSet = "String",
	vimSetEqual = "Operator",
	vimSetSep = "Delimiter",
	vimUserFunc = "vimFunction",
	--[[ 4.3.28. XML ]]
	xmlAttrib = "htmlArg",
	xmlEndTag = "xmlTag",
	xmlEqual = "Operator",
	xmlTag = "htmlTag",
	xmlTagName = "htmlTagName",

	--[[ 4.3.29. SQL ]]
	sqlKeyword = "Keyword",
	sqlParen = "Delimiter",
	sqlSpecial = "Constant",
	sqlStatement = "Statement",
	sqlParenFunc = "Function",

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = "Title",
	dosiniLabel = "Label",

	--[[ 4.3.31. Crontab ]]
	crontabDay = "StorageClass",
	crontabDow = "String",
	crontabHr = "Number",
	crontabMin = "Float",
	crontabMnth = "Structure",

	--[[ 4.3.32. PlantUML ]]
	plantumlArrowLR = "Statement",
	plantumlColonLine = NONE,
	plantumlMindmap = "Label",
	plantumlMindmap2 = "Label",

	--[[ 4.3.33. YAML ]]
	yamlKey = "Label",

	--[[ 4.3.34. Git ]]
	diffAdded = "DiffAdd",
	diffRemoved = "DiffDelete",
	gitcommitHeader = "SpecialComment",
	gitcommitDiscardedFile = "gitcommitSelectedFile",
	gitcommitOverFlow = "Error",
	gitcommitSelectedFile = "Directory",
	gitcommitSummary = "Title",
	gitcommitUntrackedFile = "gitcommitSelectedFile",
	gitconfigAssignment = "String",
	gitconfigEscape = "SpecialChar",
	gitconfigNone = "Operator",
	gitconfigSection = "Structure",
	gitconfigVariable = "Label",
	gitrebaseBreak = "Keyword",
	gitrebaseCommit = "Tag",
	gitrebaseDrop = "Exception",
	gitrebaseEdit = "Define",
	gitrebaseExec = "PreProc",
	gitrebaseFixup = "gitrebaseSquash",
	gitrebaseMerge = "PreProc",
	gitrebasePick = "Include",
	gitrebaseReset = "gitrebaseLabel",
	gitrebaseReword = "gitrebasePick",
	gitrebaseSquash = "Macro",
	gitrebaseSummary = "Title",

	--[[ 4.3.35. Vimtex ]]
	texMathRegion = "Number",
	texMathSub = "Number",
	texMathSuper = "Number",
	texMathRegionX = "Number",
	texMathRegionXX = "Number",

	--[[ 4.3.36. Coq ]]
	coqConstructor = "Constant",
	coqDefBinderType = "coqDefType",
	coqDefContents1 = "coqConstructor",
	coqDefType = "Typedef",
	coqIndBinderTerm = "coqDefBinderType",
	coqIndConstructor = "Delimiter",
	coqIndTerm = "Type",
	coqKwd = "Keyword",
	coqKwdParen = "Function",
	coqProofDelim = "coqVernacCmd",
	coqProofDot = "coqTermPunctuation",
	coqProofPunctuation = "coqTermPunctuation",
	coqRequire = "Include",
	coqTactic = "Operator",
	coqTermPunctuation = "Delimiter",
	coqVernacCmd = "Statement",
	coqVernacPunctuation = "coqTermPunctuation",

	--[[ 4.3.37 Help ]]
	helpCommand = "Statement",
	helpHyperTextEntry = "Tag",
	helpExample = "Statement",
	helpNote = "DiagnosticHint",
	helpHeader = "Label",
	helpOption = "Keyword",
	helpHeadline = "Title",
	helpSectionDelim = "Delimiter",
	helpHyperTextJump = "Underlined",

	--[[ 4.3.38 Man ]]
	manBold = function(self)
		return vim.tbl_extend("force", self.mkdCode, { style = "nocombine" })
	end,
	manOptionDesc = "Special",
	manUnderline = "@text.literal",
	manReference = "@text.uri",
	manHeader = "markdownH1",
	manSectionHeading = "markdownH2",
	manSubHeading = "markdownH3",

	--[[ 4.4. Plugins ]]

	--[[ 4.3.39 Rust ]]
	["@lsp.mod.callable.rust"] = "@lsp.type.function",
	["@lsp.type.builtinType.rust"] = "@lsp.type.type",
	["@lsp.type.character.rust"] = {},
	["@lsp.type.decorator.rust"] = "@preproc",
	["@lsp.type.derive.rust"] = "@macro",
	["@lsp.type.enumMember.rust"] = {},
	["@lsp.type.macro.rust"] = {},
	["@lsp.type.operator.rust"] = {},
	["@lsp.type.selfKeyword.rust"] = "@keyword",
	["@lsp.type.selfTypeKeyword.rust"] = "@lsp.type.typeAlias.rust",
	["@lsp.type.string.rust"] = {},
	["@lsp.type.typeAlias.rust"] = "@type.definition",
	["@lsp.typemod.character.injected.rust"] = "@lsp.type.character",
	["@lsp.typemod.deriveHelper.attribute.rust"] = "@lsp.type.decorator.rust",
	["@lsp.typemod.keyword.injected.rust"] = "@keyword",
	["@lsp.typemod.macro.injected.rust"] = "@macro",
	["@lsp.typemod.operator.injected.rust"] = "@operator",
	["@lsp.typemod.string.injected.rust"] = "@lsp.type.string",
	rustAssert = "Debug",
	rustCharacterDelimiter = "rustNoise",
	rustIdentifier = "Identifier",
	rustStaticLifetime = "rustStorage",
	rustStringDelimiter = "rustNoise",

	--[[ 4.3.40 XXD ]]
	xxdAddress = "Label",
	xxdAscii = "Character",
	xxdDot = "Ignore",
	xxdSep = "Delimiter",

	--[[ 4.3.41 i3config ]]
	i3ConfigAction = "Function",
	i3ConfigAssignKeyword = "Keyword",
	i3ConfigAssign = "i3ConfigVariable",
	i3ConfigBind = "@text",
	i3ConfigBindKeyword = "Keyword",
	i3ConfigBlockKeyword = "Keyword",
	i3ConfigBorderStyle = "Keyword",
	i3ConfigBorderStyleKeyword = "Keyword",
	i3ConfigClientColorKeyword = "Keyword",
	i3ConfigCommandKeyword = "Keyword",
	i3ConfigDelayUrgencyKeyword = "Keyword",
	i3ConfigDrawingMarksKeyword = "Keyword",
	i3ConfigEdgeKeyword = "Keyword",
	i3ConfigExec = "Statement",
	i3ConfigExecKeyword = "Keyword",
	i3ConfigFloating = "Keyword",
	i3ConfigFocusFollowsMouseKeyword = "Keyword",
	i3ConfigFocusOnActivationKeyword = "Keyword",
	i3ConfigFocusWrappingKeyword = "Keyword",
	i3ConfigFontContent = "String",
	i3ConfigFontKeyword = "Keyword",
	i3ConfigFontSeparator = "Delimiter",
	i3ConfigFontSize = "i3ConfigNumber",
	i3ConfigForceXineramaKeyword = "Keyword",
	i3ConfigGapStyleKeyword = "Keyword",
	i3ConfigInitialize = "String",
	i3ConfigInitializeKeyword = "Keyword",
	i3ConfigInterprocessKeyword = "Keyword",
	i3ConfigLayoutKeyword = "Keyword",
	i3ConfigMouseWarpingKeyword = "Keyword",
	i3ConfigNoFocusKeyword = "Keyword",
	i3ConfigNoStartupId = "i3ConfigBindArgument",
	i3ConfigNumber = "Number",
	i3ConfigOrientationKeyword = "Keyword",
	i3ConfigPopupOnFullscreenKeyword = "Keyword",
	i3ConfigResourceKeyword = "Keyword",
	i3ConfigSmartBorderKeyword = "Keyword",
	i3ConfigSmartGapKeyword = "Keyword",
	i3ConfigString = "String",
	i3ConfigTitleAlignKeyword = "Keyword",
	i3ConfigVariable = "Define",
	i3ConfigVariableAndModifier = "Character",
	i3ConfigVariableModifier = "Operator",
	i3ConfigWindowCommandSpecial = "htmlTag",
	i3ConfigWorkspaceKeyword = "Keyword",

	--[[ 4.3.42 xDefaults ]]
	xdefaultsLabel = "Label",
	xdefaultsPunct = "Delimiter",
	xdefaultsValue = "String",

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]

	--[[ 4.4.1. ALE ]]
	ALEErrorSign = "ErrorMsg",
	ALEWarningSign = "WarningMsg",
	--[[ 4.4.2. coc.nvim ]]
	CocErrorHighlight = { fg = red0, style = { "undercurl" } },
	CocHintHighlight = { fg = magenta0, style = { "undercurl" } },
	CocInfoHighlight = { fg = blue0, style = { "undercurl" } },
	CocWarningHighlight = { fg = orange0, style = { "undercurl" } },
	CocErrorSign = "ALEErrorSign",
	CocHintSign = "HintMsg",
	CocInfoSign = "InfoMsg",
	CocWarningSign = "ALEWarningSign",

	--[[ 4.4.2. vim-jumpmotion / vim-easymotion ]]
	EasyMotion = "IncSearch",
	JumpMotion = "EasyMotion",

	--[[ 4.4.4. vim-gitgutter / vim-signify ]]
	GitGutterAdd = { fg = addfg, bg = BG },
	GitGutterChange = { fg = changefg, bg = BG },
	GitGutterDelete = { fg = delfg, bg = BG },
	GitGutterChangeDelete = { fg = orange0, bg = BG },
	SignifySignAdd = "GitGutterAdd",
	SignifySignChange = "GitGutterChange",
	SignifySignDelete = "GitGutterDelete",
	SignifySignChangeDelete = "GitGutterChangeDelete",

	--[[ 4.4.5. vim-indent-guides ]]
	IndentGuidesOdd = { bg = gray4 },
	IndentGuidesEven = { bg = gray0 },

	--[[ 4.4.7. NERDTree ]]
	NERDTreeCWD = "Label",
	NERDTreeUp = "Operator",
	NERDTreeDir = "Directory",
	NERDTreeDirSlash = "Delimiter",
	NERDTreeOpenable = "NERDTreeDir",
	NERDTreeClosable = "NERDTreeOpenable",
	NERDTreeExecFile = "Function",
	NERDTreeLinkTarget = "Tag",

	--[[ 4.4.8. nvim-treesitter ]]
	["@structure"] = "Structure", -- BUG: missing from Nvim >=0.9
	["@boolean"] = { fg = orange1, style = "italic" },
	["@text.note"] = "Info",
	["@text.warning"] = "Warning",
	["@text.danger"] = "Error",
	["@todo"] = "Todo",
	["@type"] = "Type",
	["@constant"] = "Constant",
	["@conditional"] = "Conditional",
	["@constant.builtin"] = { fg = orange0, style = "italic" },
	["@constructor"] = "Typedef",
	["@text.reference"] = { fg = blue1 },
	["@function.builtin"] = { fg = turquoise1, style = "bold" },
	["@tag"] = "Tag",
	["@function"] = "Function",
	["@field"] = { dark = { fg = gray7 }, light = { fg = gray1 } },
	["@exception"] = { fg = purple0, style = "italic" },
	["@function.macro"] = { fg = red1 },
	["@string.escape"] = "Character",
	["@string.regex"] = "SpecialChar",
	["@operator"] = "Operator",
	["@parameter"] = { fg = orange0 },
	["@property"] = { fg = turquoise1 },
	["@punctuation.delimiter"] = { dark = { fg = gray5 }, light = { fg = gray0 } },
	["@punctuation.bracket"] = { fg = red0 },
	["@punctuation.special"] = { fg = gray0, style = "bold" },
	["@repeat"] = "Repeat",
	["@keyword"] = { fg = blue1, style = "italic" },
	["@keyword.function"] = { fg = red1, style = "italic" },
	["@keyword.return"] = { fg = red1, style = "italic" },
	["@include"] = { fg = purple1, style = "italic" },
	["@label"] = { fg = blue0 },
	["@namespace"] = "Directory",
	["@error"] = { fg = red0, style = { "undercurl", color = red0 } },
	["@text.uri"] = "Underlined",
	["@variable"] = "Identifier",
	["@variable.builtin"] = { fg = red1, style = "italic" },
	["@type.definition"] = { fg = blue1, style = "italic" },
	["@text.title"] = { fg = red0, style = { "bold", "underline", color = red0 } },
	["@text.literal"] = "String",
	["@text.emphasis"] = { style = "italic" },
	["@text.strong"] = { style = "bold" },

	--[[ 4.4.9. barbar.nvim ]]
	BufferAlternate = function(self)
		return { fg = self.BufferVisible.fg, bg = self.TabLine.bg }
	end,
	BufferAlternateERROR = function(self)
		return { fg = self.ErrorMsg.fg, bg = gray1 }
	end,
	BufferAlternateHINT = function(self)
		return { fg = self.DiagnosticFloatingHint.fg, bg = gray1 }
	end,
	BufferAlternateIndex = function(self)
		return { fg = self.Number.fg, bg = gray1 }
	end,
	BufferAlternateINFO = function(self)
		return { fg = self.DiagnosticFloatingInfo.fg, bg = gray1 }
	end,
	BufferAlternateMod = function(self)
		return { fg = self.BufferVisibleMod.fg, bg = gray1, style = "bold" }
	end,
	BufferAlternateSign = function(self)
		return { fg = self.DiagnosticFloatingHint.fg, bg = self.BufferAlternate.bg }
	end,
	BufferAlternateTarget = function(self)
		return { fg = self.BufferAlternateSign.fg, bg = gray1, style = "italic" }
	end,
	BufferAlternateWARN = function(self)
		return { fg = self.WarningMsg.fg, bg = gray1 }
	end,
	BufferCurrent = { dark = { fg = gray6 }, light = { fg = gray6 }, style = "bold" },
	BufferCurrentIndex = function(self)
		return { fg = self.InfoMsg.fg, bg = self.BufferCurrent.bg }
	end,
	BufferCurrentMod = { fg = yellow2, bg = BG, style = { "italic", "bold" } },
	BufferCurrentSign = { dark = { fg = red0 }, light = { fg = red1 }, bg = BG },
	BufferCurrentTarget = { fg = blue0, style = "bold" },
	BufferInactive = { dark = { fg = gray1, bg = gray4 }, light = { fg = gray5, bg = gray8 } },
	BufferInactiveIndex = function(self)
		return { fg = self.InfoMsg.fg, bg = self.BufferInactive.bg }
	end,
	BufferInactiveMod = { dark = { fg = gray1, bg = gray4 }, light = { fg = gray5, bg = gray8 } },
	BufferInactiveSign = { dark = { fg = gray1, bg = gray4 }, light = { fg = gray5, bg = gray8 } },
	BufferInactiveTarget = {
		dark = { fg = gray1, bg = gray4 },
		light = { fg = gray5, bg = gray8 },
		style = "bold",
	},
	BufferTabpages = { fg = gray6, dark = { bg = gray4 }, light = { bg = gray8 }, style = "bold" },
	BufferTabpageFill = { fg = gray6, dark = { bg = gray4 }, light = { bg = gray8 }, style = "bold" },
	BufferOffset = { fg = gray6, dark = { bg = black1 }, light = { bg = gray9 }, style = "bold" },
	BufferVisible = { fg = gray6, bg = BG, style = { "bold" } },
	BufferVisibleIndex = function(self)
		return { fg = self.InfoMsg.fg, bg = self.BufferVisible.bg }
	end,
	BufferVisibleMod = { fg = red0, bg = BG, style = { "bold", "italic" } },
	BufferVisibleSign = { dark = { fg = gray1 }, light = { fg = gray7 }, bg = BG },
	BufferVisibleTarget = { fg = blue0, bg = BG, style = "bold" },
	BufferSpaceSeparator = { dark = { fg = gray1, bg = gray1 }, light = { fg = gray9, bg = gray9 } },
	BufferTypeSeparator = { dark = { fg = gray1, bg = gray1 }, light = { fg = gray9, bg = gray9 } },

	--[[ 4.4.10. vim-sandwhich ]]
	OperatorSandwichChange = "DiffText",

	--[[ 4.4.11. Fern ]]
	FernBranchText = "Directory",

	--[[ 4.4.12. LSPSaga ]]
	DefinitionCount = "Number",
	DefinitionIcon = "Special",
	ReferencesCount = "Number",
	ReferencesIcon = "DefinitionIcon",
	TargetFileName = "Directory",
	TargetWord = "Title",

	--[[ 4.4.13. indent-blankline.nvim ]]
	IndentBlanklineChar = { dark = { fg = gray2 }, light = { fg = gray8 } },
	IndentBlanklineSpaceChar = "IndentBlanklineChar",
	IndentBlanklineSpaceCharBlankLine = "IndentBlanklineChar",
	IndentBlanklineContextChar = { dark = { fg = gray0 }, light = { fg = gray8 } },
	--[[ 4.4.14. trouble.nvim ]]
	TroubleCount = function(self)
		return vim.tbl_extend("force", self.Number, { style = "undercurl" })
	end,
	--[[ 4.4.14. todo-comments.nvim ]]
	TodoFgFIX = function(self)
		return { fg = self.ErrorMsg.fg }
	end,
	TodoFgHACK = function(self)
		return { fg = self.Todo.fg }
	end,
	TodoFgNOTE = "HintMsg",
	TodoFgPERF = "InfoMsg",
	TodoFgTODO = { fg = blue1, style = "italic" },
	TodoFgWARN = function(self)
		return { fg = self.WarningMsg.fg }
	end,
	TodoBgFIX = function(self)
		return { fg = black0, bg = self.ErrorMsg.fg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgHACK = function(self)
		return { fg = black0, bg = self.Todo.fg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgNOTE = function(self)
		return { fg = black0, bg = self.Hint.bg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgPERF = function(self)
		return { fg = black0, bg = self.Info.bg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgTODO = { fg = black0, bg = blue1, style = { "bold", "italic", "nocombine" } },
	TodoBgWARN = function(self)
		return { fg = black0, bg = self.Warning.bg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoSignFIX = "TodoFgFIX",
	TodoSignHACK = "TodoFgHACK",
	TodoSignNOTE = "TodoFgNOTE",
	TodoSignPERF = "TodoFgPERF",
	TodoSignTODO = "TodoFgTODO",
	TodoSignWARN = "TodoFgWARN",

	--[[ 4.4.15. gitsigns.nvim ]]
	GitSignsAdd = "GitGutterAdd",
	GitSignsAddNr = { fg = addfg, bg = addbg },
	GitSignsAddLn = "GitSignsAddNr",
	GitSignsChange = "GitGutterChange",
	GitSignsChangeNr = { fg = changefg, bg = changebg },
	GitSignsChangeLn = "GitSignsChangeNr",
	GitSignsDelete = "GitGutterDelete",
	GitSignsDeleteNr = { fg = delfg, bg = delbg },
	GitSignsDeleteLn = "GitSignsDeleteNr",

	--[[ 4.4.16. nvim-compe and cmp ]]
	CmpDocumentationBorder = { bg = BG, dark = { fg = gray1 }, light = { fg = gray7 } },
	CmpBorder = { bg = BG, dark = { fg = gray1 }, light = { fg = gray7 } },
	CmpDocumentation = { bg = BG },
	CmpItemAbbr = { fg = gray5 },
	CmpItemMenu = { dark = { fg = gray6 }, light = { fg = gray7 }, style = "italic" },
	CmpItemAbbrMatch = { fg = red0 },
	CmpItemAbbrDeprecated = { fg = gray1, style = { "strikethrough" } },
	CmpItemAbbrMatchFuzzy = { fg = blue0 },
	CmpItemKind = { bg = turquoise1, fg = gray9 },
	CmpItemKindVariable = { bg = blue0, fg = gray9 },
	CmpItemKindInterface = { bg = yellow0, fg = gray9 },
	CmpItemKindText = { bg = magenta0, fg = gray9 },
	CmpItemKindFunction = { bg = pink1, fg = gray9 },
	CmpItemKindMethod = { bg = pink1, fg = gray9 },
	CmpItemKindKeyword = { bg = orange0, fg = gray9 },
	CmpItemKindProperty = { bg = green2, fg = gray9 },
	CmpItemKindUnit = { bg = purple1, fg = gray9 },
	CmpItemAbbrDefault = "Ignore",
	CmpItemAbbrMatchDefault = "Underlined",
	CmpItemAbbrMatchFuzzyDefault = {
		fg = highlight_group_normal.fg,
		style = { "nocombine", "underline", color = gray9 },
	},
	CmpItemKindDefault = "Type",
	CmpItemKindClass = { bg = blue0, fg = gray9 },
	CmpItemKindColor = { bg = yellow0, fg = gray9 },
	CmpItemKindConstant = { bg = magenta0, fg = gray9 },
	CmpItemKindConstructor = { bg = pink1, fg = gray9 },
	CmpItemKindEnum = { bg = pink1, fg = gray9 },
	CmpItemKindEnumMember = { bg = orange0, fg = gray9 },
	CmpItemKindEvent = { bg = green2, fg = gray9 },
	CmpItemKindField = { bg = purple1, fg = gray9 },
	CmpItemKindFile = { bg = blue0, fg = gray9 },
	CmpItemKindFolder = { bg = yellow0, fg = gray9 },
	CmpItemKindModule = { bg = magenta0, fg = gray9 },
	CmpItemKindOperator = { bg = pink1, fg = gray9 },
	CmpItemKindReference = { bg = pink1, fg = gray9 },
	CmpItemKindSnippet = { bg = orange0, fg = gray9 },
	CmpItemKindStruct = { bg = green2, fg = gray9 },
	CmpItemKindTypeParameter = { bg = purple1, fg = gray9 },
	CmpItemKindValue = { bg = blue0, fg = gray9 },
	CmpWindowScrollThumb = { fg = gray7, style = "bold" },

	--[[ 4.4.16. packer.nvim ]]
	packerFail = "ErrorMsg",
	packerHash = "Number",
	packerPackageNotLoaded = "Ignore",
	packerStatusFail = "Statement",
	packerStatusSuccess = "packerStatusFail",
	packerSuccess = function(self)
		return { fg = green1, style = self.packerFail.style }
	end,

	--[[ 4.4.17. alpha.nvim ]]
	AlphaAscii = { dark = { fg = gray1 }, light = { fg = gray7 } },
	AlphaFooter = { dark = { fg = gray5 }, light = { fg = gray6 } },
	AlphaEmphasis = { dark = { fg = red1 }, light = { fg = red1 } },
	AlphaShortcuts = { dark = { fg = black0 }, light = { fg = white1 } },
	AlphaHeader = { dark = { fg = green2 }, light = { fg = green2 } },
	AlphaButtons = { dark = { fg = gray5 }, light = { fg = gray6 }, style = { "bold" } },

	--[[ 4.4.18. dev-icons ]]
	DevIconJS = { fg = yellow0 },
	DevIconJson = { fg = yellow2 },
	DevIconLua = { fg = blue0 },
	DevIconCpp = { fg = blue1 },
	DevIconPy = { fg = blue0 },
	DevIconMarkdown = { fg = blue1 },
	DevIconMd = { fg = blue1 },
	DevIconVim = { fg = green1 },
	DevIconVimrc = { fg = green1 },
	DevIconTerminal = { fg = green1 },
	DevIconConf = { fg = yellow0 },
	DevIconBash = { fg = pink1 },
	DevIconZshrc = { fg = blue0 },
	DevIconZsh = { fg = blue0 },
	DevIconZshenv = { fg = blue0 },
	DevIconZshprofile = { fg = blue0 },
	DevIconSh = { fg = pink1 },
	DevIconTxt = { fg = turquoise1 },
	DevIconTex = { fg = green2 },
	DevIconConfiguration = { fg = gray5 },
	DevIconH = { fg = purple1 },
	DevIconDefault = { fg = gray6 },
	--[[ 4.4.19. telescope ]]
	TelescopeSelection = {
		dark = { bg = gray2, fg = gray7 },
		light = { bg = gray9, fg = black2 },
		style = { "bold" },
	},
	TelescopeSelectionCaret = { dark = { bg = gray2, fg = gray7 }, light = { bg = gray9, fg = black2 } },
	TelescopeMultiSelection = { dark = { fg = gray7 }, light = { fg = black2 }, style = { "bold" } },
	TelescopeNormal = { fg = gray0, bg = BG },
	TelescopeBorder = { dark = { fg = gray1, bg = gray1 }, light = { fg = gray7, bg = gray7 } },
	TelescopePromptBorder = { dark = { fg = gray1 }, light = { fg = gray7 }, bg = BG },
	TelescopeResultsBorder = { dark = { fg = gray1 }, light = { fg = gray7 }, bg = BG },
	TelescopePromptNormal = { bg = BG },
	TelescopePreviewNormal = { bg = BG },
	TelescopePreviewBorder = { dark = { fg = gray1 }, light = { fg = gray7 }, bg = BG },
	TelescopeMatching = { style = { "bold" } },
	TelescopePromptPrefix = { fg = red0, style = { "bold" } },
	TelescopePromptTitle = { fg = gray9, bg = red1, style = { "bold" } },
	TelescopeResultsTitle = { fg = gray9, bg = green2, style = { "bold" } },
	TelescopePreviewTitle = { fg = gray9, bg = blue0, style = { "bold" } },
	TelescopeTitle = { fg = gray9, bg = red0, style = { "bold" } },
	TelescopeResultsDiffUntracked = { fg = red0, style = { "bold" } },

	--[[ 4.4.20. floaterm ]]
	Floaterm = { dark = { bg = black1 }, light = { bg = gray9 } },
	FloatermNC = { dark = { bg = black1 }, light = { bg = gray9 } },
	FloatermBorder = { dark = { bg = black1, fg = gray1 }, light = { bg = gray9, fg = gray8 } },

	--[[ 4.4.21. nvim-tree ]]
	NvimTreeNormal = { fg = FG, bg = BG },
	NvimTreeRootFolder = { fg = purple1 },
	NvimTreeOpenedFolderName = { dark = { fg = gray7 }, light = { fg = gray2 }, style = { "bold" } },
	NvimTreeEmptyFolderName = { fg = gray5 },
	NvimTreeFolderName = { dark = { fg = blue0 }, light = { fg = blue1 }, style = { "bold" } },
	NvimTreeGitDirty = { fg = red0 },
	NvimTreeGitStaged = { fg = green1 },
	NvimTreeGitMerge = { fg = purple1 },
	NvimTreeGitRenamed = { fg = yellow0 },
	NvimTreeGitNew = { fg = blue0 },
	NvimTreeGitDeleted = { fg = red0 },
	NvimTreeFolderIcon = { fg = blue0 },
	NvimTreeIndentMarker = { dark = { fg = gray2 }, light = { fg = gray7 } },
	NvimTreeWindowPicker = { fg = turquoise1 },
	NvimTreeOpenedFile = { style = { "bold" } },
	NvimTreeSpecialFile = { fg = pink1, style = { "underline", color = pink1 } },
	NvimTreeSymlink = { fg = blue0, style = { "underline", color = blue0 } },
	NvimTreeExecFile = { fg = green1, style = { "bold" } },
	NvimTreeVertSplit = {
		dark = { bg = black1, fg = black1 },
		light = { bg = gray9, fg = gray9 },
		style = {
			"bold",
		},
	},
	NvimTreeStatuslineNc = { dark = { bg = gray3 }, light = { bg = gray9 } },

	--[[ 4.4.22. lightbulb ]]
	LightbulbTextHL = { fg = blue0 },
	LightbulbVirtualText = { fg = gray4, bg = gray0 },

	--[[ 4.4.23. rainbow ]]
	rainbowcol1 = { fg = red1 },
	rainbowcol2 = { fg = turquoise0 },
	rainbowcol3 = { fg = yellow0 },
	rainbowcol4 = { fg = green2 },
	rainbowcol5 = { fg = blue0 },
	rainbowcol6 = { fg = magenta0 },
	rainbowcol7 = { dark = { fg = purple0 }, light = { fg = purple1 } },

	--[[ 4.4.24. galaxyline ]]
	GalaxyTree = { dark = { fg = black1, bg = black1 }, light = { fg = white1, bg = white1 } },
	GalaxyViMode = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray7, bg = gray9 } },
	GalaxyBg = { dark = { fg = black0, bg = black0 }, light = { fg = white1, bg = white1 } },
	GalaxyFg = { dark = { fg = gray7, bg = gray3 }, light = { fg = black0, bg = BG }, style = { "bold" } },
	-- GalaxyFgAlt = { dark = { fg = white, bg = gray_darkerer }, light = { fg = gray_medium, bg = whiter } },
	GalaxyFgAlt = { dark = { fg = gray7, bg = red0 }, light = { fg = gray9, bg = red1 }, style = "bold" },
	GalaxyFgAlt2 = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray6, bg = BG } },
	GalaxyYellow = { fg = yellow0, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },
	GalaxyCyan = { fg = turquoise0, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },
	GalaxyGreen = { fg = green1, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },
	GalaxyOrange = { fg = orange0, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },
	GalaxyMagenta = { fg = magenta0, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },
	GalaxyBlue = { fg = blue0, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },
	GalaxyRed = { fg = red0, dark = { bg = gray3 }, light = { bg = BG }, style = { "bold" } },

	--[[ 4.4.25 DAP UI]]
	DapBreakpoint = { fg = red0 },
	DapBreakpointCondition = { fg = red1 },
	DapLogPoint = { fg = turquoise1 },
	DapStopped = { fg = green1 },
	DapUIVariable = "Normal",
	DapUIScope = { fg = blue0 },
	DapUIType = { fg = blue0 },
	DapUIValue = "Normal",
	DapUIModifiedValue = { { fg = blue0 }, style = { "bold" } },
	DapUIDecoration = { fg = blue0 },
	DapUIThread = { fg = green1 },
	DapUIStoppedThread = { fg = blue0 },
	DapUIFrameName = "Normal",
	DapUISource = { fg = pink1 },
	DapUILineNumber = { fg = blue0 },
	DapUIFloatBorder = { fg = blue0 },
	DapUIWatchesEmpty = { fg = magenta0 },
	DapUIWatchesValue = { fg = green2 },
	DapUIWatchesError = { fg = magenta1 },
	DapUIBreakpointsPath = { fg = turquoise1 },
	DapUIBreakpointsInfo = { fg = green0 },
	DapUIBreakpointsCurrentLine = { { fg = green1 }, style = { "bold" } },
	DapUIBreakpointsLine = "DapUILineNumber",
	DapBreakpointRejected = { fg = orange0 },

	-- [[ 4.4.26 Barbecue]]
	barbecue_normal = "Winbar",
	barbecue_dirname = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray5, bg = white0 } },
	barbecue_context = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray5, bg = white0 } },
	barbecue_basename = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray5, bg = white0 } },
	barbecue_separator = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray5, bg = white0 } },
	barbecue_ellipsis = { dark = { fg = gray7, bg = gray3 }, light = { fg = gray5, bg = white0 } },
	barbecue_context_file = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindFile.fg }
	end,
	barbecue_context_module = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindFolder.fg }
	end,
	barbecue_context_namespace = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindFolder.fg }
	end,
	barbecue_context_package = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindFolder.fg }
	end,
	barbecue_context_class = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindClass.fg }
	end,
	barbecue_context_method = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindMethod.fg }
	end,
	barbecue_context_property = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindProperty.fg }
	end,
	barbecue_context_field = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindField.fg }
	end,
	barbecue_context_constructor = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindConstructor.fg }
	end,
	barbecue_context_enum = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindEnum.fg }
	end,
	barbecue_context_interface = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindInterface.fg }
	end,
	barbecue_context_function = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindFunction.fg }
	end,
	barbecue_context_variable = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindVariable.fg }
	end,
	barbecue_context_constant = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindConstant.fg }
	end,
	barbecue_context_string = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindValue.fg }
	end,
	barbecue_context_number = "barbecue_context_string",
	barbecue_context_boolean = "barbecue_context_string",
	barbecue_context_array = "barbecue_context_string",
	barbecue_context_object = "barbecue_context_string",
	barbecue_context_key = "barbecue_context_string",
	barbecue_context_null = "barbecue_context_string",
	barbecue_context_enum_member = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindEnumMember.fg }
	end,
	barbecue_context_struct = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindStruct.fg }
	end,
	barbecue_context_event = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindEvent.fg }
	end,
	barbecue_context_operator = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindOperator.fg }
	end,
	barbecue_context_type_parameter = function(self)
		return { dark = { bg = gray3 }, light = { bg = white0 }, fg = self.CmpItemKindTypeParameter.fg }
	end,

	-- [[ 4.4.26 MiniMap]]
	MiniMapNormal = "IndentBlanklineChar",
	MiniMapSymbolLine = "Comment",
	MiniMapSymbolView = "IndentBlanklineChar",

	-- [[ 4.4.27 Wilder]]
	Wilder = { dark = { fg = gray7, bg = black0 }, light = { fg = gray0, bg = BG }, style = "bold" },
	WilderAccent = {
		dark = { fg = pink1 },
		light = { fg = red1 },
		style = { "underline", "bold", color = red1 },
	},
	WilderSelected = { dark = { fg = gray9, bg = red0 }, light = { bg = red1, fg = gray9 } },
	WilderSelectedAccent = {
		dark = { fg = gray9, bg = red0 },
		light = { bg = red1, fg = gray9 },
		style = { "underline", "bold", color = gray9 },
	},
	WilderScroll = { dark = { bg = black0 }, light = { bg = gray8 } },
	WilderWildMenu = "PmenuSel",
	WilderWildMenuAccent = {
		dark = { fg = gray9 },
		light = { fg = gray9 },
		style = { "underline", "bold", color = gray9 },
	},
	WilderWildMenuSelected = { dark = { bg = gray9, fg = red0 }, light = { fg = red0, bg = gray9 } },
	WilderWildMenuSelectedAccent = {
		dark = { bg = gray9, fg = red0 },
		light = { fg = red0, bg = gray9 },
		style = { "underline", "bold", color = red0 },
	},

	-- [[ 4.5 Others ]]
	FocusedSymbol = { fg = black0, bg = yellow0 },
	OutlinePreviewBG = { bg = BG },
	NvimDapVirtualTextChanged = { fg = purple1 },
	MarkSignHL = { fg = red0 },
	MarkSignNumHL = { fg = turquoise0 },
	SymbolsOutlineConnector = "IndentBlanklineChar",
	LocalHighlight = { style = { "undercurl" } },
	LspSignatureActiveParameter = "Search",
	LspLens = "Folded",
}

local terminal_colors = {
	[1] = black0,
	[2] = red1,
	[3] = green2,
	[4] = orange0,
	[5] = blue0,
	[6] = magenta1,
	[7] = turquoise0,
	[8] = gray0,
	[9] = gray1,
	[10] = red0,
	[11] = green1,
	[12] = yellow0,
	[13] = turquoise1,
	[14] = purple1,
	[15] = blue1,
	[16] = gray6,
}

require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_colors)
