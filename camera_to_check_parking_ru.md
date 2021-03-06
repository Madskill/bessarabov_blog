# Камера для проверки, есть ли место для парковки

```
{
    "date_time_msk" : "2017-02-01 13:29:30"
}
```

У меня рядом с домом все достаточно неплохо с парковкой. Если возвращаться не очень
поздно, то часто можно припарковаться прямо под окнами. Если возвращаться поздно, то
под окнами места скорее не будет (но иногда все-таки бывает). Если под окнами места нет —
не беда, за углом есть большая площадь где практически всегда можно припарковать машину.

Мне удобнее парковать машину под окнами. Когда я возвращаюсь вечером на машине
я сначала объезжаю дом в надежде что там есть место. Место есть — паркуюсь, места нет —
разворачиваюсь, еще раз объезжаю дом (уже в другом направлении) и паркуюсь на более дальней
парковке.

Мне хотелось заранее знать ответ на вопрос «есть ли свободное место под окнами?». Если бы
я заранее знал что там мест нет, я бы сразу парковался на дальней парковке и
экономил несколько минут.

Мне удалось очень просто решить задачу — теперь у меня дома есть маленькая камера,
которая смотрит во двор. Стою на светофоре уже недалеко от дома. Достаю iPhone и запускаю приложение
которое показывает видео с камеры. И если на камере видны свободные места, то я заезжаю,
иначе я сразу паркуюсь на более дальней парковке.

Вот пример того что я могу увидеть на телефоне (в данном случае место есть):

![Картинка с камеры Xiaomi Small Square Smart Camera White](https://upload.bessarabov.ru/bessarabov/tI4F81OYXsSd8vOJfGHxeIa3uB0.jpg)

А вот фотография как установлена камера дома:

![Крепление камеры Xiaomi Small Square Smart Camera White к оконной раме](https://upload.bessarabov.ru/bessarabov/6zn9M-py714PEvRmlCd79n5UyAM.jpg)

## Технические подробности

Я использовал камеру Xiaomi Small Square Smart Camera White. Я купил ее в Москве
в конце января 2017 года. Я заплатил 3000 рублей (вместе с доставкой). В Китае
эта камера продается за 129 юаней (1150 рублей).

В сложенном состоянии камера — это небольшой кубик. Нижняя часть этого кубика —
это подставка с несколькими степенями свободы. Если поставить камеру на стол, то ее
можно направить практически куда угодно. Совершенно случайно я обнаружил что
в середине подставки находится магнит, так что камеру можно повесить на какую-нибудь
металлическую поверхность, например, на холодильник. Магнит в подставке мощный, камера
держится хорошо.

![Камера Xiaomi Small Square Smart Camera White прикреплена магнитом к холодильнику](https://upload.bessarabov.ru/bessarabov/uJigNzNOPv3u6xoSwX76xKF8JAQ.jpg)

К сожалению, в подставке не предусмотрены отверстия чтобы прикрутить камеру к чему-нибудь
немагнитному. Я взял дрель и просверлил два отверстия.

![Сверление отверстий в камере Xiaomi Small Square Smart Camera White](https://upload.bessarabov.ru/bessarabov/PBSpB5HzsuD0E1gFg5NwWu42r_E.jpg)

![Два отверстия в камере Xiaomi Small Square Smart Camera White](https://upload.bessarabov.ru/bessarabov/dRR_FSPzIeec182zUmakLqP0_E0.jpg)

В комплекте поставки есть камера, USB провод длиной около 1.8 метра, по этому проводу
подается питание, а еще в комплекте есть маленькая иголочка чтобы можно было нажать
на кнопку setup на камере.

![USB провод от камеры Xiaomi Small Square Smart Camera White](https://upload.bessarabov.ru/bessarabov/S3EODagQv5RoXeRTshV5-FhG0zs.jpg)

Провода который был в комплекте мне оказалось недостаточно, пришлось купить еще
трехметровый USB удлинитель. От iPhone у меня остался адаптер питания — он одной
стороной вставляется в электрическую розетку, а с другой стороны у него USB разъем.
Я подключили USB кабель в этот адаптер и камера отлично работает.

![iPhone адаптер питания в тройнике](https://upload.bessarabov.ru/bessarabov/OGeusXTmOmbeAnIB90-mz-Jk5Vc.jpg)

Камера сделана очень добротно. Единственная проблема — неудобно подключается
провод питания к камере. Там мелкий разъем Micro-USB, совершенно не видно какой
стороной его подключать. Пока я устанавливал камеру я несколько раз отключал-подключал
этот провод и каждый раз мучился.

Зато в этой камере есть одно совершенно гениальное решение. На задней стороне
камеры есть светодиод — он моргает разными цветами, показывая разное состояние
камеры. Вот гениальность решения — в программе можно полностью выключить этот
светодиод. Это прямо очень здорово — вместо мигающей елочной гирлянды получается
коробочка, которая просто молча работает. Очень хочу возможность выключить все
светодиоды на своем WiFi роутере.

Немного хочу рассказать как настраивать эту камеру. У меня iPhone, но, насколько
я понимаю, на Android все то же самое. Для начала нужно поставить приложение
[Mi Home](https://appsto.re/ru/yJ5d5.i).

В приложении есть кнопка — добавить устройство. Нажимаю эту кнопку, там на
выбор несколько устройств которые можно подключить, но никакого упоминания про
эту камеру нет. Пошел читать в интернете. Оказывается, в настройке приложения
нужно выбрать регион «Китай» (у меня была выбран регион «Америка») и только после
смены региона на странице добавления нового устройства появилась эта камера.
Видимо, эта камера не должна продаваться за пределами Китая, поэтому при
выборе некитайского региона в программе это устройство недоступно.

Потом я совершил еще одну ошибку. При добавлении камеры я выбрал вторую иконку:

![скриншот iPhone с добавлением новой камеры](https://upload.bessarabov.ru/bessarabov/OMSqOFzgk_y7dqj2UfVxFaCVq5Q.jpg)

Оказалось, что это настройка камеры в режиме access point. Т.е. камера становится
WiFi точкой к которой можно подключится с телефона и смотреть с нее видео. Это
работает, но это совсем не то что мне хотелось получить. В таком режиме можно
смотреть видео с камеры только находясь совсем недалеко от нее. Я заново настроил
камеру, но на этот раз выбрал первую иконку.

И эта настройка оказалась именно то что мне было нужно. Во время настройки был очень
интересный этап — на телефоне появился QR код, который нужно было показать камере.
Вот [видео на котором показано как настраивать эту камеру](https://www.youtube.com/watch?v=SOUqFfGAs0Q).

После завершения настройки все стало работать так: камера по WiFi соединена с точкой
доступа и таким образом на камере есть доступ в интернет и она подключена к серверам
Xiaomi. На телефоне тоже есть интернет (причем совершенно не обязательно быть
подключенным к той же самой точке доступа к которой подключена камера). На телефоне
запускаешь приложение, оно подключается к серверам Xiaomi, а поскольку к
этим же серверам подключена и камера, приложение начинает показывать видео.

На видео в правом нижнем углу автоматически показывается дата и время. Я прикрутил
камеру к окну вверх ногами, в настройках можно сказать что камера перевернута — это
перемещает дату-время в правильное положение. Но время показывается китайское =)
В настройках я не нашел как можно поменять часовой пояс. В интернетах пишут что
нужно на SD карте создать специальный файл, включить камеру с этой SD картой и
после этого часовой пояс поменяется. Но это была инструкция к немного другой камере,
я не пробовал будет ли это работать.

В том виде как я настроил эту камеру, камера не пишет видео. Можно видеть только
то что происходит в данный момент времени. Для моей задачи «проверить место на
парковке» этого вполне достаточно. Кажется, камера может сохранять видео на SD
карту, но это не кажется уж очень удобным решением — карты нужно менять,
куда-то сохранять с них данные.

Интересная, но совершенно не нужная для меня фича в этой камере — это можно
нажать кнопку на телефоне, сказать туда какую-нибудь фразу и динамик на камере
произнесет эту фразу. Если нажать другую кнопку на телефоне, то можно
слышать то что слышит микрофон на камере. Т.е. Китай (или кто-то кто
получил доступ к этой камере) может слышать то что происходит у меня дома.
Я бы предпочел чтобы в камере вообще не было ни микрофона, ни динамика.

Смотреть видео с камеры можно только через программу на телефоне. Я бы хотел
возможность смотреть это же видео и с компьютера, но я не нашел такой возможности.
А еще бы я хотел API которое позволяет получать jpg файлы с камеры, но такой штуки
я тоже не нашел.

## Как это все могло бы работать

Сейчас чтобы решить задачу «стоит ли ехать на парковку перед домом» мне нужно достать
телефон, запустить программу и посмотреть что показывает камера которая направлена на
парковку. Это работает, но все могло бы быть удобнее.

Вот как это могло бы работать (и это достаточно реальный вариант такое сделать).
Компьютер в машине периодически проверят где находится машина с помощью GPS/ГЛОНАСС.
Как только машина понимает что она подъезжает к дому, она запрашивает картинку
с камеры. Получив картинку машина с помощью компьютерного зрения распознает какие
парковочные места заняты, а какие свободны. Компьютер в машине через стерео
систему голосом рассказывает ситуацию. Дополнительно, на экране в машине
показывается картинка с камеры чтобы было понятно где есть место. Такую систему
возможно собрать самостоятельно. Предполагаю что что-то подобное когда-нибудь
появится в качестве «коробочного решения». Покупаешь, ставишь, платишь подписку,
все работает.

![Компьютерное зрение определяет какие места свободны](https://upload.bessarabov.ru/bessarabov/J0agWWYPyaqQYWMtdfiYwYgtjZE.jpg)

А в чуть более отдаленном будущем эту задачу вообще не нужно будет решать.
Человеку будет все равно, есть ли удобные места для парковки или нет. Когда
массово появятся автомобили-роботы пропадет необходимость парковаться
недалеко. Машина привозит человека, он выходит, а дальше машина уезжает
и сама паркуется где-нибудь где есть парковка. Когда нужно ехать обратно,
нажимаешь кнопку на телефоне, машина начинает к тебе ехать, пока ты
вышел машина уже приехала и ждет тебя рядом со входом. Вот демонстрация этого
волшебства:

<iframe src="https://player.vimeo.com/video/188105076" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
