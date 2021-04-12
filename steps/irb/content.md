# Интерактивная консоль Ruby 

 **IRB** — interactive ruby shell или по-простому «**интерактивная руби консоль**». 
 Очень полезный инструмент любого рубиста. Смысл его в том, что вы можете писать 
 любой руби код и видеть результаты его выполнения сразу же, в том же окне.

IRB экономит время, когда нужно написать очень короткую и простую программу, 
когда нужно понять как будет работать тот или иной код, или быстро вычислить 
какое-то выражение (как на калькуляторе).


<!-- youtube starts here -->
<script>
var videoPlan = {}
</script>

<div class="embed-responsive embed-responsive-16by9 rubyrush-video" id="video-0">
<iframe src="https://www.youtube.com/embed/TIgdYjWq8aE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<script>
videoPlan["video-0"] = [{"begin":"0:06","comment":"Приветствие и что такое IRB"},{"begin":"0:40","comment":"Запускаем интерактивный Ruby режим"},{"begin":"0:50","comment":"Принцип работы IRB"},{"begin":"2:00","comment":"1. irb как песочница и справочник"},{"begin":"3:08","comment":"Пишем программу «Палиндром»"},{"begin":"3:54","comment":"Исправляем ошибки в «Палиндроме»"},{"begin":"5:43","comment":"2. irb как калькулятор"},{"begin":"6:45","comment":"Резюме — когда пригодится IRB"}]
</script>
</div>

 <!-- youtube ends here --> 


### Принцип работы

Для запуска интерактивной руби консоли достаточно в вашей командной строке набрать `irb`. Результат будет выглядеть примерно так:

```sh
MikeMac:~ aristofun$ irb
2.2.1 :001 >

```

Вы попали в интерактивный режим. Вместо `2.2.1` может быть написана другая версия руби или что-то вроде `irb(main)`.

Это не важно, важно, что после символа `>` консоль приглашает вас к вводу кода.

Если вы введете какой-то код, и нажмете **Enter**, то...

```sh
2.2.1 :001 > puts "Hello world"
Hello world
 => nil
2.2.1 :002 >

```

Сначала выполнится эта строчка (на приведенном примере она вывела на экран строку `"Hello world"`), а затем обязательно появится строка, начинающаяся с символов `=>`.

Эта строка — результат, который вернуло введенное вами выражение.

Выражением может быть любое корректное выражение на языке Ruby. Если выражение некорректное, вы просто получите в консоли ошибку. Так же, как вы бы получили ее при обычном запуске программы.

Например, очень удобно использовать Ruby консоль в качестве продвинутого калькулятора (скажем, считать задолженность по оплате электроэнергии):

```sh
2.2.1 :002 > 3.91*(2342-2291) + 3.23*(1745-1622)
 => 596.7
2.2.1 :003 >

```

Как видите в этом случае после вашей строки, выводится только строка с результатом выполнения выражения. И затем IRB снова ждет ваших распоряжений.

### Многострочный код

Если вам нужно выполнить в консоли код, который не умещается в одну строку, можете заключить его внутрь блока `begin` — `end`.

После ввода `begin`, консоль будет запрашивать все новые и новые строки, пока не встретит конец этого блока `end`. И тогда только разом выполнит весь этот блок кода.

```sh
2.2.1 :003 > begin
2.2.1 :004 >     sleep 3
2.2.1 :005?>   puts ['orel', 'reshka'].sample # вывести орел или решку
2.2.1 :006?>   end
orel
 => nil
2.2.1 :007 >

```

Надпись `orel` и ` => nil ` появятся на экране только через 3 секунды после ввода 6-й строки. Кстати, комментарии тоже можно писать (любой руби код), но зачем? ;)

Для выхода из консоли достаточно набрать волшебное слово `exit` и вернуться к нормальной жизни, найти работу, завести семью...

### Когда и как пользоваться IRB

В консоль при желании можно скармливать огромные программы. Но делать так не стоит. Консоль — это фастфуд, когда нужно срочно выполнить немножко какого-то руби кода.

Когда она актуальна:

- Когда нужен продвинутый калькулятор :)
- Если нужно быстро написать очень простенькую **одноразовую** (!) программу
- Если нужно проверить как работает какой-то кусочек кода. Например, вы не уверены в каком-то новом методе, а документация не прояснила ситуацию
- Чтобы наглядно увидеть и еще лучше понять как работает интерпретатор Ruby (сверху вниз, строчка за строчкой).

*Чао!*