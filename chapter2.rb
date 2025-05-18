# Задания
# 1. Создайте четыре класса: пользователь, компьютер, сеть, хост. Подберите классам подходящие названия и создайте объекты этих классов.
# 2. Создайте класс пользователя User и снабдите его двумя методами: fio, который
# возвращает имя и фамилию пользователя, и profession, который возвращает
# профессию. Создайте программу, которая демонстрирует работу класса. 

class User
  def fio
    "John Doe"
  end

  def profession
    "Ruby on Rails developer"
  end
end

class Computer
end

class Network
end

class Host
end

user = User.new
computer = Computer.new
network = Network.new
host = Host.new

puts user.object_id
puts computer.object_id
puts network.object_id
puts host.object_id

puts user.fio
puts user.profession
