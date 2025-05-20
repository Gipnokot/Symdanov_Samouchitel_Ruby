# Задания
# 1. Создайте метод sum, который принимает любое количество числовых аргументов и возвращает их сумму.
# 2. Создайте метод, который проверяет, является ли текущий год високосным.
# В случае, если год високосный, метод должен возвращать true (истину), иначе
# должна возвращаться false (ложь).
# 3. Запросите у пользователя название цвета и верните номер цвета из следующей
# таблицы:
# • 1 — красный;
# • 2 — оранжевый;
# • 3 — желтый;
# • 4 — зеленый;
# • 5 — голубой;
# • 6 — синий;
# • 7 — фиолетовый.
# 4. Создайте класс пользователя User, объекты которого сохраняют фамилию, имя и
# отчество пользователя. Запросите в консоли при помощи метода gets данные
# для трех пользователей. С использованием полученных сведений создайте массив, содержащий три объекта класса User.
# 5. Создайте метод cel2far для перевода градусов Цельсия в градусы по Фаренгейту, а также обратный метод fal2cel — для перевода градусов по Фаренгейту
# в градусы Цельсия.
# 6. Числа Фибоначчи — это последовательность вида 0, 1, 1, 2, 3, 5, ..., где каждое
# число является суммой двух предыдущих чисел. Создайте скрипт, который бы
# вычислял любое наперед заданное число Фибоначчи. 

def sum(*params)
  total = 0
  params.each { |n| total += n}
  total
end

puts sum(1, 2, 3, 4, 5)

def leap_year?
  year = Time.now.year
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

puts leap_year?

def color_number
  colors = {
    "красный"   => 1,
    "оранжевый" => 2,
    "желтый"    => 3,
    "зеленый"   => 4,
    "голубой"   => 5,
    "синий"     => 6,
    "фиолетовый"=> 7
  }

  print "Введите название цвета: "
  input = gets.chomp.downcase

  number = colors[input]

  if number
    puts "Номер цвета: #{number}"
  else
    puts "Цвет не найден в таблице."
  end
end

color_number

class User
  attr_reader :last_name, :first_name, :middle_name

  def initialize(last_name, first_name, middle_name)
    @last_name = last_name
    @first_name = first_name
    @middle_name = middle_name
  end

  def to_s
    "#{last_name} #{first_name} #{middle_name}"
  end
end

users = []

3.times do |i|
  puts "Введите данные пользователя #{i + 1}"

  print "Фамилия: "
  last_name = gets.chomp

  print "Имя: "
  first_name = gets.chomp

  print "Отчество: "
  middle_name = gets.chomp

  users << User.new(last_name, first_name, middle_name)
end

puts "Список пользователей: "

users.each_with_index do |user, index|
  puts "#{index + 1}: #{user}"
end

def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1

  a = 0
  b = 1

  (2..n).each do
    a, b = b, a + b
  end

  b
end

print "Введите номер числа Фибоначчи: "
n = gets.chomp.to_i

puts "Число Фибоначчи: #{fibonacci(n)}"
