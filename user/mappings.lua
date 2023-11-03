lvim.keys.normal_mode['b]'] = ':BufferLineCycleNext<CR>'
lvim.keys.normal_mode['b['] = ':BufferLineCyclePrev<CR>'
lvim.keys.normal_mode['b>'] = ':BufferLineMoveNext<CR>'
lvim.keys.normal_mode['b<'] = ':BufferLineMovePrev<CR>'
lvim.keys.normal_mode['<leader>b]'] = '<cmd>BufferLineCycleNext<CR>'
lvim.keys.normal_mode['<leader>b['] = '<cmd>BufferLineCyclePrev<CR>'
lvim.keys.normal_mode['<leader>b>'] = '<cmd>BufferLineMoveNext<CR>'
lvim.keys.normal_mode['<leader>b<'] = '<cmd>BufferLineMovePrev<CR>'

lvim.builtin.which_key.mappings['b]'] = { '<cmd>BufferLinerCycleNext<CR>', 'Next buffer' }
lvim.builtin.which_key.mappings['b['] = { '<cmd>BufferLinerCyclePrev<CR>', 'Previous buffer' }
lvim.builtin.which_key.mappings['b>'] = { '<cmd>BufferLinerMoveNext<CR>', 'Move buffer to next' }
lvim.builtin.which_key.mappings['b<'] = { '<cmd>BufferLinerPrevPrev<CR>', 'Mover buffer to previous' }
lvim.builtin.which_key.mappings['b']['b'] = {}
lvim.builtin.which_key.mappings['b']['n'] = {}
