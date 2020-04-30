local args = {...}
local image = require("image")
local buffer = require("doubleBuffering")

-- Очищаем экранный буфер черным цветом
buffer.clear(0x0)
-- Загружаем и рисуем изображение в буфер
buffer.image(1, 1, image.load(args[1]))
-- Отрисовываем содержимое буфера в принудительном режиме
buffer.draw(true)
