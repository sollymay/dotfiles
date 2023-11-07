return {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
        {
            mode = { 'v', 'n' },
            '<Leader>d',
            '<cmd>MCstart<cr>',
            desc = 'Create a selection for selected text or word under the cursor',
        },
        {
            mode = { 'v', 'n' },
            '<Leader>f',
            '<cmd>MCpattern<cr>',
            desc = 'Create a selection based on a pattern',
        },

    },
};
