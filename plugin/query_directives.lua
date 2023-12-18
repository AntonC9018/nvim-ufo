-- Backward compatibility for (#make-range!), which is gone in nvim-treesitter v1.0+
if not vim.tbl_contains(vim.treesitter.query.list_directives(), "make-range!") then
    vim.treesitter.query.add_directive("make-range!", function() end)
end
