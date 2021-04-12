# encoding: utf-8

# Чтобы запустить цикл нам нужно записать в переменную, которую мы потом будем
# заполнять тем, что ввел пользователь, заведомо неверным значением
choice = nil

# Этот цикл будет повторяться пока пользователь не введет 1 ИЛИ 2 ИЛИ 3,
# обратите внимание, что nil (начальное значение choice) не подходит, поэтому
# мы как минимум один раз выполним тело цикла.
until choice == 1 || choice == 2 || choice == 3 do
  puts 'Введите число и нажмите Enter:'
  puts '1 – Пойти направо'
  puts '2 – Пойти налево'
  puts '3 – Пойти домой'

  # Записываем то, что выбрал пользователь, переводя его строку в число
  choice = gets.to_i
end

# Адаптируйте этот цикл под ваши имена переменных и набор разрешенных значений.
#
# PS
#
# Проверить, что число лежит в диапазоне можно не записывая такое сложное
# условие. Обе эти конструкции вернут true, если choice лежит от 1 до 3
# (включительно).
#
# choice.between?(1,3)
# (1..3).include?(choice) вернет true, если число
