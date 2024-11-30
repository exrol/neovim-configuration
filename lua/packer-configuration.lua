local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

local packer_display_configuration = {
    open_fn = function()
        return require('packer.util').float({border = 'rounded'})
    end
}


local load_plugins = function(use)
    local plugins = require('plugins')
    for i,plugin in ipairs(plugins) do
         use {plugin}
    end
    if packer_bootstrap then
        packer.sync()
    end
end


packer.init({ display = packer_display_configuration})
packer.startup(load_plugins)

