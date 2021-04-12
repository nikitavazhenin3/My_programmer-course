# Класс КредитнаяЗаявка, который принимает данные от клиента и принимает
# решение, выдавать ли кредит данному клиенту или нет.
class CreditRequest
  # Любую из переменных экземпляра класса можно получить у экземпляра класса,
  # воспользовавшися нужным методом-геттером.
  attr_reader :age, :sex, :income, :history, :amount, :score

  # Пороговое значение балла вынесем в константу, если больше этого значения,
  # кредит одобрен, если меньше — нет.
  SCORE_THRESHOLD = 50

  # Конструктор, который принимает на вход все нобходимое
  def initialize(age, sex, income, history, amount)
    @age = age
    @sex = sex
    @income = income
    @history = history
    @amount = amount
    @score = nil

    calculate_score!
  end

  # Метод calculate_score! меняет значение скорингового балла в соответствии с
  # тем, какую информацию указал пользователь.
  def calculate_score!
    # Если балл уже рассчитан, повторно мы его рассчитывать не будем
    return unless @score.nil?

    # Обнуляем значение балла перед вычислением, чтобы если метод
    # calculate_score будет вызван дважды, балл не был увеличен повторно.
    @score = 0

    # Увеличиваем балл в соответствии с возрастом клиента
    if @age.between?(21, 40)
      @score += 10
    elsif @age > 40
      @score += 20
    end

    # Увеличиваем балл в соответствии с полом клиента
    @score += 10 if @sex == :female

    # Увеличиваем балл в соответствии с доходом клиента
    if @income.between?(20_001, 40_000)
      @score += 10
    elsif @income > 40_000
      @score += 20
    end

    # Увеличиваем балл в соответствии с кредитной историей
    @score += 20 if @history == true

    # Увеличиваем балл в соответствии с запрашиваемой суммой
    if @amount.between?(20_001, 40_000)
      @score += 10
    elsif @amount < 20_000
      @score += 20
    end

    # Возвращаем ссылку на экземпляр класса для возможности вызова методов
    # экземпляра по цепочке.
    self
  end

  # Метод approve? возвращает true, если кредит одобрен и false, если нет
  def approved?
    @score >= SCORE_THRESHOLD
  end
end
