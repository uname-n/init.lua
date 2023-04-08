require("mini.base16").setup({
    palette = {
        base00 = "#191724", -- Default Background
        base01 = "#1f1d2e", -- Lighter Background (Used for status bars, line number and folding marks)
        base02 = "#26233a", -- Selection Background

        base03 = "#585858", -- Comments, Invisibles, Line Highlighting

        base04 = "#d4d4d4", -- Dark Foreground (Used for status bars)
        base05 = "#d4d4d4", -- Default Foreground, Caret, Delimiters, Operators

        base06 = "#d4d4d4", -- Light Foreground (Not often used)
        base07 = "#d4d4d4", -- Light Background (Not often used)

        base08 = "#afd7d7", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
        base09 = "#5fafff", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
        base0A = "#00d7af", -- Classes, Markup Bold, Search Text Background
        base0B = "#5f87af", -- Strings, Inherited Class, Markup Code, Diff Inserted
        base0C = "#87afff", -- Support, Regular Expressions, Escape Characters, Markup Quotes
        base0D = "#44b8b8", -- Functions, Methods, Attribute IDs, Headings
        base0E = "#87afd7", -- Keywords, Storage, Selector, Markup Italic, Diff Changed

        base0F = "#ffffff", -- Deprecated, Opening/Closing Embedded Language Tags
    },
    use_cterm = true,
})
