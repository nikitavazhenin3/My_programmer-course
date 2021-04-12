# Методы в Ruby 

 В этом уроке у нас очень важная тема: **методы**. 
 Мы узнаем как писать свои маленькие подпрограммы — **методы**. 
 Что нужно знать перед тем, как писать свой метод, когда их стоит использовать, 
 а когда нет. И зачем в Ruby нужны ключевые слова `def` и `return`, а также попутно узнаем про оператор `%` и метод `is_a?`.

### План урока

1. Что такое методы, как они устроены и для чего они нужны?
1. Как использовать методы, параметры методов, возвращаемые значения
1. Как и когда писать свои методы, инструкция `return`


<!-- youtube starts here -->
<script>
var videoPlan = {}
</script>

<div class="embed-responsive embed-responsive-16by9 rubyrush-video" id="video-0">
<iframe src="https://www.youtube.com/embed/_mGPYAKurtA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<script>
videoPlan["video-0"] = [{"begin":"0:12","comment":"Приветствие и план урока"},{"begin":"0:40","comment":"Методы: Что это такое?"},{"begin":"2:20","comment":"Методы: Используем методы в Ruby"},{"begin":"4:44","comment":"Методы: Параметры метода"},{"begin":"7:55","comment":"Методы: Возвращаемое значение"},{"begin":"10:05","comment":"Пишем собственные методы"},{"begin":"11:50","comment":"3 правила создания методов"}]
</script>
</div>


<div class="embed-responsive embed-responsive-16by9 rubyrush-video" id="video-1">
<iframe src="https://www.youtube.com/embed/BJ_0CWstYGI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<script>
videoPlan["video-1"] = [{"begin":"0:10","comment":"Склонятор: Постановка задачи"},{"begin":"1:37","comment":"Склонятор: Пишем метод «склонение»"},{"begin":"4:26","comment":"Склонятор: Используем метод для склонения"},{"begin":"8:40","comment":"Использование переменных в методах"},{"begin":"12:22","comment":"Итоги этого важного урока"}]
</script>
</div>

 <!-- youtube ends here --> 

### Что такое методы (method)

Если вкратце, то методы нужны для описания повторяющихся действий.

Представьте, что вам в подробностях необходимо описать ваш день, скорее всего, вы будете использовать фразы:

- Проснуться
- Убрать кровать
- Умыться
- Позавтракать
- Одеться...

![А ты почистил зубы с утра?](http://goodprogrammer.ru/system/rich_texts/000/000/1733a8bb070de2a16f2ae3ebd42a5b99fccac3bf05a/1.jpg?1429694455 "А ты почистил зубы с утра?")

На самом деле, за каждым из этих слов стоит масса действий, которые каждый человек делает по-разному. Но удобнее всего описывать ваш день простыми словами, потому что по большому счету не так важно, чем именно вы завтракаете и как долго вы чистите зубы во время умывания.

Такие рутинные действия, которые спрятаны за короткое имя, в программах называются функции или методы. И сейчас мы расскажем вам о том, как ими пользоваться в Ruby.

### Как использовать метод?

Внимание, откровение! Каждый раз, когда мы во всех наших программах выводили что-то на экран с помощью команды `puts`, мы использовали метод `puts`!

```ruby
puts 'Я строка!'
```

Мы совершенно не представляем, как именно Ruby выводит строку на экран, мы просто пользуемся этим методом, зная его имя (puts) и получаем от него ожидаемый результат. В этом вся сила методов!

### Конфликты имён методов/переменных

Так как единственное, что нам нужно знать про метод, чтобы его вызвать, это его имя, то существует опасность назвать какую-нибудь переменную также, как и какой-то метод программы.

Вам следует всегда помнить о том, что вы не можете называть свои переменные также, как и методы (а также у разных переменных не может быть одинаковых имён, программа просто не поймёт, что это разные переменные). Всегда называйте свои переменные аккуратно — так, чтобы у разных переменных были разные имена, и они не пересекались с именами известных вам методов.

### Параметры метода

Когда вы идёте в магазин или, говоря нашей новой терминологией, выполняете метод «сходить в магазин» — у вас с собой обычно есть список всего, что вам нужно купить. Метод всегда один и тот же, а список всегда разный (ну или почти всегда).

![Список покупок в магазине](http://goodprogrammer.ru/system/rich_texts/000/000/174e929a2bd1566065d2c2f98fa41abf2e22d6d2668/2.jpg?1429694455 "Список покупок в магазине")

Так и в программировании, один метод может выполнять разные действия. Например метод `sleep` всегда приостанавливает выполнение программы, но он может подвесить выполнение программы как на 1, так и на 10 секунд, в зависимости от того числа, которое вы напишете после его вызова:

```ruby
sleep 1
sleep 10
```

Опять же, нам совершенно не важно, как именно будет выполняться задержка, важно лишь сколько секунд она будет длится.

Мы передаём методу эту важную информацию в виде параметров. Параметры — это информация, которую мы передаём в метод, чтобы управлять поведением метода.

Обычно параметры передаются в скобках после названия метода:

```ruby
puts("Я параметр команды puts")
```

Но в Ruby скобки при передаче параметров методам можно не писать и это очень удобно, чем мы и пользуемся постоянно:

```ruby
puts "Я другой параметр команды puts"
```

Метод `puts`, кстати, можно вызвать и без параметров, тогда он выведет на экран пустую строчку с символом переноса строки `\n`.

Если параметров несколько, они передаются через запятую

```ruby
array.push "Я первый параметр", "Я - второй"
```

Как мы помним из урока про массивы, это добавит в массив `array` два строковых элемента.

### Как использовать методы объектов

У объектов тоже бывают методы. Подробнее о том, как это всё устроено, мы будем рассказывать в уроке про классы. А пока расскажем, как ими пользоваться.

Чтобы использовать метод объекта, нужно написать имя объекта (переменную, которая на него указывает), потом точку, а потом — имя метода, который мы хотим вызвать.

Так происходит практически во всех языках, Ruby не исключение.

```ruby
fruits = ['orange', 'mango', 'apple']
puts fruits.to_s
```

Здесь мы выводим на экран массив `fruits`, преобразованный в строку.

Мы вызвали метод `to_s` объекта `fruits`, класс которого `Array` (массив). Дело в том, что у всех объектов класса `Array` есть такой метод `to_s`, который преобразует объект в строку. Подробнее об этом ещё будем говорить в уроках про классы.

Полезный метод, который в Ruby есть у любого объекта, называется `methods`. Это метод, который возвращает список всех методов объекта. Другое дело, это не всегда помогает, так что учитесь гуглить.

Если набрать в google

```sh
ruby Array methods
```

То вы без труда найдёте [ссылку](http://ruby-doc.org/core-2.2.0/Array.html) на страницу со всем списком методов массивов в Ruby и подробным описанием и примерами к каждому методу.

### Возвращаемые значения методов

В большинстве языков каждый метод обычно что-то возвращает. В том числе и в Ruby все методы на самом деле хоть что-нибудь, да оставляют после себя. То есть, если написать

```ruby
a = method
```

То в переменной `a` будет содержаться результат работы метода `method`. Наш любимый `puts`, к слову, всегда возвращает пустой объект `nil`.

```ruby
a = puts "Я puts, я не хочу ничего возвращать, я хочу просто печатать"
```

После этого в переменной `a` будет `nil`.  `nil` это специальное ключевое слово, которое означает в Ruby «пустой объект», ничего, пустоту, ничто! Это очень важная штука, вы часто с ней будете встречаться.

Возвращаемое значение это как сдача, которую вам дают в магазине: вы передаете определенную сумму денег за товар (это параметр метода), кассир берет деньги и пробивает вам товар, а затем возвращает вам сдачу. Если вы дали денег под расчет, то сдачи не будет (метод «кассир» вернет вам `nil`) :).

![Ваша сдача — 17](http://goodprogrammer.ru/system/rich_texts/000/000/175f68a1ca939d1a09ded4785796969d159f445087c/3.jpg?1429694455 "Ваша сдача — 17")

Давайте возьмём пример посложнее. Метод `now` класса `Time`, встроенного в Ruby, возвращает текущее время в специальном формате, если мы запишем его в переменную, а потом выведем его на экран, то у нас получатся простенькие часы, которые показывают время и выключаются.

```ruby
time = Time.now
puts time
```

Выведет текущее время:

```sh
2014-06-08 11:30:44 +0400
```

Какие вообще бывают методы, и какие у конкретного метода бывают параметры и возвращаемые значения принято узнавать из документации (Ruby или какой-то библиотеки классов, которую вы используете). Пока же просто повторяйте за нами, из урока в урок мы будем пользоваться новыми методами и объяснять вам их смысл.

### Как писать свои методы

Чтобы сделать свою программу понятнее, проще и лучше — нужно писать свои методы. И прятать в них те действия, которые повторяются, которые уместно выделить в отдельную инструкцию. Сейчас разберем подробнее.

Перед тем, как писать свой метод вам необходимо определиться с тремя вещами:

1. Как метод будет называться?
1. Какие у метода будут входные параметры?
1. Что метод будет возвращать?

Напишем наш первый метод. Он будет называться `say_hi`, он будет на вход получать один параметр `name` и ничего не будет возвращать, он просто будет выводить на экран приветствие для указанного имени:

```ruby
def say_hi(name)
  puts "Привет, #{name}"
end
```

Остановимся немного на синтаксисе.

Во-первых, для объявления метода, чтобы Ruby понял, что мы хотим создать новый метод, нужно написать инструкцию `def`.

Во-вторых, после `def` нужно указать название нашего нового метода.

В-третьих, после имени метода в скобках нужно указать параметры, если они нужны для работы метода.

И, наконец, в-четвёртых, нужно написать тело метода (аналогично тому, как мы писали тела ветвлений `if` и тела циклов `while`) в виде набора инструкций до ключевого слова `end`, которое будет говорить Ruby, что описание метода закончилось.

В нашем новом методе тело состоит из одной строчки, которая использует параметр `name`. Обратите внимание, что параметр метода в теле метода используется как переменная, её не надо объявлять отдельно.

### Вызов метода

Само объявление метода, как вы догадались, ничего не делает. Мы просто говорим программе: «запомни, `say_hi` означает вот что ...». Теперь для того, чтобы что-то произошло, наш метод нужно вызвать, передав ему нужные параметры.

Если после объявления метода написать:

```ruby
say_hi "Миша"
```

То при выполнении программы на экран выведется

```sh
Привет, Миша
```

Чтобы использовать методы их нужно сперва объявить (то есть описать с помощью оператора `def` имя метода, список параметров и тело метода), а затем использовать в своей программе.

### Когда писать свои методы?

Если вкратце, то когда вы видите, что вы, подобно попугаю, повторяете один и тот же текст в своей программе несколько раз.

В нашем примере про дорогу мы заставляли водителя Ruby через каждую секунду выкрикивать какую-то фразу:

```ruby
puts "Поехали"
sleep 1

puts "Первый километр"
sleep 1

puts "Второй километр"
sleep 1

puts "Третий километр"
sleep 1

puts "Приехали!"
gets
```

Обратите внимание, что некоторые действия повторяются. Это верный признак, что можно написать метод, который сократит нашу программу:

```ruby
def shout_and_wait message
  puts message
  sleep 1
end
```

Тогда наш код бы сократился и стал бы вот таким:

```ruby
shout_and_wait "Поехали"
shout_and_wait "Первый километр"
shout_and_wait "Второй километр"
shout_and_wait "Третий километр"

puts "Приехали!"
gets
```

Мы добавили метод, но сама программа стала короче и понятнее. В реальных программах использование методов ещё сильнее сокращает код ваших программ.

Чем меньше код программы, тем проще и понятнее он для вас и других программистов, тем проще его поддерживать, не занимаясь «copy + paste».

Короче, методы — это здорово. Вы скоро сами это поймёте. Пока мы только затронули самые азы.

### Как возвращать значение в методе

Наш метод `shout_and_wait` ничего не возвращает. Он просто выводит строку и усыпляет интерпретатор Ruby на 1 секунду.

Давайте напишем другой метод, который что-нибудь возвращает.

Вот простенький метод суммирования двух чисел

```ruby
def sum a, b
  return a + b
end
```

Он состоит из названия (`sum`), двух параметров (`a` и `b`) и тела, которое возвращает сумму входных параметров с помощью специального ключевого слова `return`. Теперь давайте его вызовем, как обычно, мы пишем название метода, параметры, но на этот раз, мы запишем результат работы метода в отдельную переменную. Именно туда попадёт то, что вернёт метод своим `return`.

```ruby
number = sum(35, 24)
puts number
```

Выведет в консоль

```
59
```

Итак, оператор `return` заканчивает выполнение метода и возвращает значение, которое стоит после этого оператора (это может быть значение какой-то переменной, выражения или даже результат работы другого метода).

Имейте в виду, что после вызова `return` метод прекращает работу, программа покидает тело метода и возвращается к работе в то место, откуда мы метод вызвали.

### Пишем считалку объектов

Азы освоены и давайте напишем что-нибудь действительно полезное и нужное.
Очень часто на сайтах или в программах у нас есть необходимость сообщить пользователю, что у него в программе есть какое-то количество каких-то объектов: 2 рубл_я_, 1 комментар_ий_, 15 сообщен_ий_, 38 попуга_ев_ и т.д.

![38 попугаев](http://goodprogrammer.ru/system/rich_texts/000/000/17602f65cfbc13e3dac8bf8600baba55a44040c80fb/4.jpg?1429694455 "38 попугаев")

Обратите внимание, что в зависимости от числа, склонение существительного будет другим.

- 1 попуг_ай_
- 3 попуг_ая_
- 8 попуг_аев_

Наш замечательный русский язык велик, могуч и сложен. Вот у англичан такой проблемы нет, если один, то 1 book, если больше одного, то 2 books или 1000 books и т. д.

Если разобраться, то выяснится, что в русском языке словоформы всего 3. Одна используется для единственного числа: «1 попуг_ай_». Другая используется для небольшого количества предметов: «2, 3 или 4 попуг_ая_». И, наконец, последняя форма используется, когда объектов много: «5 или больше попуг_аев_».

Итак, постановка задачи: **«Написать программу, которая в качестве параметров берёт произвольное число и три словоформы и возвращает ту форму слова, которой соответствует число»**.

### Описание метода выбора формы слова

Как обычно определимся с тремя вещами про метод:

1. Название: `sklonenie`
1. Параметры: число `number` и три строки-словоформы `krokodil, krokodila и krokodilov`
1. Что должен возвращать метод: строку, содержащую значение нужного параметра (нужной формы слова) в зависимости от числа.

Для наглядности назовем наши параметры `krokodil`, `krokodila`, `krokodilov` — при вызове метода в качестве первого параметра нужно передать единственное число (например, один «крокодил»), в качестве второго — форму для нескольких объектов (скажем, три «крокодила»), и третий параметр – форма для большого числа объектов (допустим, пятьсот «крокодилов»).

Всё, можно приступать к написанию.

Как обычно, мы создадим папку `lesson9` в нашей рабочей папке `c:\rubytut`, и в ней создадим файл `sklonenie.rb`.

```ruby
def sklonenie(number, krokodil, krokodila, krokodilov)
  # тут будет тело метода
end
```

Обратите внимание, что в словосочетаниях 1 крокодил, 21 крокодил и 101 крокодил разницы в словоформе нет, то же самое верно для «35 крокодилов» или «42 попугая».

Важна последняя цифра, то есть, остаток от деления исходного числа на 10 (надеюсь, вы [помните](https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5_%D1%81_%D0%BE%D1%81%D1%82%D0%B0%D1%82%D0%BA%D0%BE%D0%BC), что такое остаток от деления целых чисел <ссылку на вики>).

### Оператор % (остаток от деления)

В программировании остаток от деления одного числа на другое вычисляется с помощью оператора процент (%).

```ruby
puts 37%10
```

Выведет в консоль 7, потому что если 37 поделить на десять — будет 3.7. То есть десятка входит в число 37 целых три раза и остается еще хвостик — семерка. Этот хвостик и есть остаток от деления.

В нашем методе мы воспользуемся этим оператором, чтобы записать в переменную `ostatok` последнюю цифру или остаток от деления на 10 указанного при вызове метода числа (которое, напомню, у нас лежит в параметре-переменной `number`).

```ruby
ostatok = number % 10
```

Например, если кто-то напишет

```ruby
sklonenie 35, 'рубль', 'рубля', 'рублей'
```

То в переменной `ostatok будет лежать число 5.

Дальше всё просто, если остаток равен единице, то используем первую словоформу, если остаток от 2 до 4 (включительно), то используем вторую словоформу и, наконец, если остаток от 5 до 9 (или 0), то используем третью словоформу.

```ruby
if (ostatok == 1)
  return krokodil
end

if (ostatok >= 2 && ostatok <= 4)
  return krokodila
end

if (ostatok >= 5 && ostatok <= 9 || ostatok == 0)
  return krokodilov
end
```

Наконец, напишем вызов нашего метода. Используем сюжет из знаменитого детектива Агаты Кристи «[Десять негритят](https://ru.wikipedia.org/wiki/%D0%94%D0%B5%D1%81%D1%8F%D1%82%D1%8C_%D0%BD%D0%B5%D0%B3%D1%80%D0%B8%D1%82%D1%8F%D1%82)» (рекомендуем также посмотреть _[отличный фильм](http://www.youtube.com/watch?v=dhZ8Q-ORJ9A) по этой книге_).

```ruby
puts "#{skolko} #{sklonenie(skolko, "негритёнок", "негритёнка", "негритят")} " +
  "#{sklonenie(skolko, "пошел", "пошли", "пошли")} купаться в море!"
```

Мы здесь активно используем конструкцию `"#{}"` для вставки значений в строку.

Обратите внимание, что слово «пошли» тоже зависит от количества — если 1, то пошёл, если 2 или 5, то пошли.

### Проверка параметров в методе

Важный нюанс для тех, кто хочет стать хорошим программистом. Делайте ваши методы надёжными.

Задумайтесь, что может плохого произойти, если вместо числа в наш новый метод `sklonenie` передадут какую-нибудь строку или его вызовут вообще без параметров.

Очевидно, ничего хорошего из этого не выйдет, поэтому давайте сделаем в начале метод небольшую проверку и вручную приравняем `number` нулю в этих двух случаях.

```ruby
if (number == nil || !number.is_a?(Numeric))
  number = 0
end
```

Для того, чтобы вспомнить, что за выражение стоит в скобках после if, вы можете посмотреть четвёртый урок: если вкратце, то это условие проверяет, лежит ли в `number` пустота (`nil`), проверяет, лежит ли в `number` что-то, что не является числом и если хотя бы одно из этих условий выполнено, заходит в тело `if`.

### Метод is_a?

Обратите внимание на метод `is_a?`. Он есть у любого объекта Ruby и возвращает `true`, если объект принадлежит к указанному классу и `false`, если не принадлежит.

```ruby
puts [1,2,3].is_a?(Array)
puts "Строка".is_a?(String)
puts 28.is_a?(Numeric)
```

Выведет на экран `true` три раза, а вот

```ruby
puts "Я не число".is_a?(Numeric)
```

Выведет на экран `false`.

Запустите программу и посчитайте негритят.

```sh
cd c:\rubytut\lesson9
ruby sklonenie.rb
```

Итак, в этом непростом уроке мы узнали чертовски важную вещь: как писать свои маленькие вспомогательные подпрограммы — методы. Узнали, с чем нужно определиться перед тем, как писать свой метод, когда их стоит использовать, а когда — нет, и зачем в программах нужны ключевые слова `def` и `return`.

А также попутно узнали про оператор `%` и метод `is_a?`.

Кстати, в написанной здесь программе про склонение слов есть несколько ошибок — она будет всегда выполняться, но не всегда будет давать верный результат. Интересно — найдете ли вы сами эти ошибки?  В домашнем задании к уроку мы рассказываем об этих ошибках и исправляем их.

В следующем уроке мы соберём в охапку всё, что узнали на предыдущих уроках и напишем нашу первую серьёзную программу — игру «Виселица».