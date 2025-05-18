# Задания
# 1. Создайте класс пользователя User, объекты которого сохраняют фамилию, имя и
# отчество пользователя. Напишите программу, которая создает объект user класса User. Поместите в объект ваши фамилию, имя и отчество. Используя объект
# user, выведите их в консоль.
# 2. Создайте класс точки в двумерной системе координат Point. Создайте две точки
# с координатами (3, 6) и (-1, 5). Вычислите расстояние между точками.
# 3. Напишите программу, которая подсчитывает количество элементов в массиве
# $LOAD_PATH.
# 4. Создайте класс автомобиля Car. Какие инстанс-переменные и методы следует
# в него добавить? Создайте несколько объектов легковых и грузовых автомобилей. 

class User
  def set_name(name)
    @name = name
  end

  def name
    @name
  end

  def set_lastname(lastname)
    @lastname = lastname
  end

  def lastname
    @lastname
  end

  def set_middlename(middlename)
    @middlename = middlename
  end

  def middlename
    @middlename
  end
end

user = User.new
user.set_name('John')
user.set_lastname('Doe')
user.set_middlename('III')

puts user.name
puts user.lastname
puts user.middlename

class Point
  def set_point1(x1, y1)
    @x1 = x1
    @y1 = y1
  end

  def get_point1
    [@x1, @y1]
  end

  def set_point2(x2, y2)
    @x2 = x2
    @y2 = y2
  end

  def get_point2
    [@x2, @y2]
  end

  def distance_calculate
    x1, y1 = get_point1
    x2, y2 = get_point2
    Math.sqrt((x2 - x1)**2 + (y2 - y1)**2).round(2)
  end
end

point = Point.new

point.set_point1(3, 6)
point.set_point2(-1, 5)

puts point.distance_calculate

arr = $LOAD_PATH

def load_path_size(array)
  array.size  
end

puts load_path_size(arr)

puts $LOAD_PATH.size

class Car
  def set_body(body)
    @body = body
  end

  def get_body
    @body
  end

  def set_engine(engine)
    @engine = engine
  end

  def get_engine
    @engine
  end

  def set_brand(brand)
    @brand = brand
  end

  def get_brand
    @brand
  end

  def set_capacity(capacity)
    @capacity = capacity
  end

  def get_capacity
    @capacity
  end

  def carry_weight?(weight)
    if @body == "Грузовой"
      weight <= @capacity
    else
      false
    end
  end
end

truck = Car.new
sedan = Car.new

truck.set_body("Грузовой")
truck.set_engine("Дизельный")
truck.set_brand("Камаз")
truck.set_capacity(10000)

puts truck.get_body
puts truck.get_engine
puts truck.get_brand
puts truck.get_capacity
puts truck.carry_weight?(9000)

puts sedan.set_body("Легковой")
puts sedan.set_engine("Бензиновый")
puts sedan.set_brand("Лада")
puts sedan.set_capacity(1500)
puts sedan.carry_weight?(1000)
