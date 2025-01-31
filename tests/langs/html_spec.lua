local tu = require('tests.utils')

local PATH = './tests/sample/index.html'
local LANG = 'html'

local data_for_split = {
  {
    path = PATH,
    mode = 'split',
    lang = LANG,
    desc = 'lang "%s", node "start_tag", preset default',
    cursor = { 13, 20 },
    expected = { 14, 18 },
    result = { 12, 16 },
    settings = {},
  },
  {
    path = PATH,
    mode = 'split',
    lang = LANG,
    desc = 'lang "%s", node "self_closing_tag", preset default',
    cursor = { 21, 20 },
    expected = { 22, 26 },
    result = { 20, 24 },
    settings = {},
  },
  {
    path = PATH,
    mode = 'split',
    lang = LANG,
    desc = 'lang "%s", node "element", preset default',
    cursor = { 29, 35 },
    expected = { 30, 33 },
    result = { 28, 31 },
    settings = {},
  },
}

local data_for_join = {
  {
    path = PATH,
    mode = 'join',
    lang = LANG,
    desc = 'lang "%s", node "start_tag", preset default',
    cursor = { 17, 12 },
    expected = { 12, 13 },
    result = { 14, 15 },
    settings = {},
  },
  {
    path = PATH,
    mode = 'join',
    lang = LANG,
    desc = 'lang "%s", node "self_closing_tag", preset default',
    cursor = { 25, 11 },
    expected = { 20, 21 },
    result = { 22, 23 },
    settings = {},
  },
  {
    path = PATH,
    mode = 'join',
    lang = LANG,
    desc = 'lang "%s", node "element", preset default',
    cursor = { 32, 8 },
    expected = { 28, 29 },
    result = { 30, 31 },
    settings = {},
  },
}

describe('TreeSJ SPLIT:', function()
  for _, value in ipairs(data_for_split) do
    tu._test_format(value)
  end
end)

describe('TreeSJ JOIN:', function()
  for _, value in ipairs(data_for_join) do
    tu._test_format(value)
  end
end)
