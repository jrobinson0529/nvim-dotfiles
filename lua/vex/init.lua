require("vex.remap")
require("vex.set")
require('vex.packer')

vim.cmd('filetype plugin indent on')
vim.filetype.add({
    extension = {
        arb = "ruby",
    },
})
