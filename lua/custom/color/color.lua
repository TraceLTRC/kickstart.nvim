local colors = {
  base00 = '#151415',
  base01 = '#6E573F',
  base02 = '#7A6A69',
  base03 = '#856A6C',
  base04 = '#6A7373',
  base05 = '#FBFAF7',
  base06 = '#B7B4AD',
  base07 = '#F1EFEB',
  base08 = '#A9A7A4',
  base09 = '#7F6141',
  base0A = '#907A79',
  base0B = '#9E797C',
  base0C = '#7A8686',
  base0D = '#D1B6A3',
  base0E = '#F4F0E7',
  base0F = '#F1EFEB',
}

return {
  colors = colors,
  setup = function()
    local hl = function(group, fg, bg, opts)
      vim.api.nvim_set_hl(0, group, vim.tbl_extend('error', { fg = fg, bg = bg }, opts or {}))
    end

    hl('StatusLineNC', colors.base01, colors.base05)
    hl('IncSearch', colors.base01, colors.base05)
    hl('Visual', colors.base05, colors.base02)

    -- Specifics
    hl('BufferCurrent', colors.base05, colors.base00, { bold = true })
    hl('BufferVisible', colors.base05, colors.base00, { bold = false })
    hl('BufferInactive', colors.base05, colors.base01, { bold = false })
    hl('BufferCurrentMod', colors.base0B, colors.base00, { bold = true })
    hl('BufferVisibleMod', colors.base0B, colors.base00, { bold = false })
    hl('BufferInactiveMod', colors.base0B, colors.base01, { bold = false })
    hl('BufferTabpageFill', 'NONE', colors.base01, { bold = false })
    hl('TreesitterContext', colors.base05, colors.base00)
    hl('TreesitterContextLineNumber', colors.base0C, colors.base00)
  end,
}
