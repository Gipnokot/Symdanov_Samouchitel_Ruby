# Задания
# 1. Создайте программу, которая запрашивает два целых числа. Выведите результат
# деления чисел в консоль. Для того чтобы предотвратить ошибку при делении на
# ноль, убедитесь, что второе число не нулевое. В цикле запрашивайте второе
# число до тех пор, пока пользователь не введет число, отличное от нуля.
# 2. Создайте массив из 10 элементов со случайными числами от 0 до 99. Найдите
# максимальное и минимальное значение этого массива.
# 3. Создайте массив из 10 строк с фамилиями пользователей: Иванов, Петров, Сидоров, Алексеева, Казанцев, Антропов, Анисимова, Кузнецов, Соловьев, Кошкина. Выведите список пользователей в алфавитном порядке.
# 4. Создайте программу, которая выводит интервал дней текущей недели:
# '07.10.2019-13.10.2019'.
# 5. В UNIX-подобных операционных системах имеется утилита ncal, которая выводит календарь на текущий месяц:
# $ ncal
#  Февраль 2019
# пн 4 11 18 25
# вт 5 12 19 26
# ср 6 13 20 27
# чт 7 14 21 28
# пт 1 8 15 22
# сб 2 9 16 23
# вс 3 10 17 24
# Создайте на Ruby программу, которая выводит аналогичный календарь для
# текущего месяца.

loop do
  puts "Введите первое число: "
  num1 = gets.chomp.to_i

  puts "Введите второе число (не должно быть нулём): "
  num2 = gets.chomp.to_i

  while num2 == 0
    puts "Ошибка: деление на ноль невозможно. Попробуйте снова."
    puts "Введите второе число (не должно быть нулём): "
    num2 = gets.chomp.to_i
  end

  puts "Результат деления: #{num1.to_f / num2}"
  exit
end

2. Создайте массив из 10 элементов со случайными числами от 0 до 99. Найдите
максимальное и минимальное значение этого массива.

arr = Array.new(10) { rand(0..99) }
p arr

min = arr[0]
max = arr[0]

arr.each do |num|
  min = num if num < min
  max = num if num > max
end

puts "Максимальный элемент: #{max}"
puts "Минимальный элемент: #{min}"

users = ["Иванов", "Петров", "Сидоров", "Алексеева", "Казанцев", "Антропов", "Анисимова", "Кузнецов", "Соловьев", "Кошкина"]

users_sort = users.sort

puts "Пользователи в алафвитном порядке: "

users_sort.each { |name| puts name }

require 'date'

today = Date.today

start_of_week = today - (today.cwday - 1)
end_of_week = today + (7 - today.cwday)

formatted_start = start_of_week.strftime('%d.%m.%Y')
formatted_end = end_of_week.strftime('%d.%m.%Y')

puts "#{formatted_start}-#{formatted_end}"
