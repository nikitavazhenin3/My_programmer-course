# Викторина 

Создайте два файла: один с вопросами (по одному вопросу на одну строчку файла), другой с ответами на эти вопросы (также на каждой строчке один ответ). 

Например:

**questions.txt**

```
Сколько байт в килобайте?
В каком году Гагарин полетел в космос?
Сколько дней в высокосном году?
```

**answers.txt**

```
1024
1961
366
```

Напишите программу, которая считывает оба файла и задает пользователю в консоли последовательно все эти вопросы.

Задав вопрос, программа ждет ответа пользователя в консоли. А затем сравнивает с правильным ответом и сообщает, правильно ответил пользователь, или нет.

Если ответ неверный, программа сообщает какой ответ правильный. В конце сообщает результат — сколько было дано правильных ответов.

**Пример:**

```
Мини-викторина. Ответьте на вопросы.
Сколько байт в килобайте?
> 1024
Верный ответ!

В каком году Гагарин полетел в космос?
> 1962
Неправильно. Правильный ответ: 1961

Сколько дней в высокосном году?
> 366
Верный ответ!

У вас 2 правильных ответов из 3
```

Только придумайте свои вопросы и ответы :)

<div class="rubyrush-task-hint">

Вам нужно открыть два файла с помощью `File.read` и записать их содержимое в два разных массива строк с помощью метода `readlines`. 

Затем в цикле `while` пройтись по массиву вопросов и задавать эти вопросы пользователю. Проверять правильность ответа, считать кол-во правильных и в конце выводить результат. 

Не забывайте при проверке равенства строк преобразовывать строку пользователя в кодировку `UTF-8`, и отрезать символ конца строки как от того, что ввел пользователь, так и от строки прочитанной из файла (метод `chomp`).

</div>


<div class="rubyrush-task-answer">

<p>
<a href="https://github.com/aristofun/rubyrush-path/tree/master/steps/read-files-03/solution/" class="rubyrush-task-solution-link">Вариант решения задачи</a>
</p>

</div>