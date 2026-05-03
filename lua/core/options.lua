local opt = vim.opt
opt.expandtab = true -- Преобразовать табы в пробелы
opt.smarttab = true -- Умная вставка табов
opt.smartindent = true -- Автоматические отступы
opt.tabstop = 8 -- Какой ширины выглядит символ таба в файле
opt.softtabstop = 8 -- На сколько колонок двигает/удаляет Tab и Backspace
opt.shiftwidth = 8 -- Размер отступа для >> и <<
opt.number = true -- Показывать номера строк
opt.numberwidth = 2 -- Ширина колонки с номерами
opt.fillchars = { eob = " " } -- Убрать символ ~ в конце буфера (визуальный мусор)
opt.relativenumber = true -- Относительный номер строки от курсора
opt.ignorecase = true -- Игнорировать регистр при поиске
opt.smartcase = true -- Но учитывать, если в запросе есть заглавные буквы
opt.termguicolors = true -- Поддержка 24-bit цветов
opt.mouse = "a" -- Включить мышь во всех режимах
opt.wrap = true -- Автоматический перенос длинных строк
opt.undofile = true -- Сохранять историю отмен между сессиями
opt.swapfile = false -- Отключить swap-файлы (они раздражают)
opt.fileencoding = "utf-8" -- Кодировка файлов
opt.clipboard = "unnamedplus" -- Использовать системный буфер обмена
opt.timeoutlen = 400 -- Время ожидания комбинаций клавиш (мс)

ConfigMode = "rich" -- changes the config to suit either a full nerdfont/truecolor setup, or a simple 8 color tty ('rich' or 'simple')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
