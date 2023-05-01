-- Verify if the file is in a git repo
local function is_git_repo()
  local handle = io.popen('git rev-parse --is-inside-work-tree 2>/dev/null')

  -- Check if handle is null
  if not handle then
    return
  end

  local result = handle:read("*a")
  handle:close()

  return result:match('true') ~= nil
end

if is_git_repo() then
  require('gitsigns').setup()
end
