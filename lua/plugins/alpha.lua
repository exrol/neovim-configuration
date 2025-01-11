return {
	"goolord/alpha-nvim",
    config = function()
        local alpha = require('alpha')
        local theme = require('alpha.themes.startify').config
        alpha.setup(theme)
    end
}
