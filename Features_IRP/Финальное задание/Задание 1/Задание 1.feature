﻿#language: ru
@tree

Функционал: проверка добавления картинки в справочник Товары 

Как Тестировщик я хочу
протестировать создание товара и добавление картинки
чтобы можно было посмотреть как выглядит товар

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка создания Товара и добавления картинки в справочник Товары 
* Создание Товара
	Дано Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение карточки товара	
	И я нажимаю кнопку выбора у поля с именем "Родитель"
	И в таблице "Список" я разворачиваю строку:
		| 'Наименование' |
		| 'Товары'     |
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Обувь'     |
	И в таблице "Список" я выбираю текущую строку		
	И в поле с именем 'Наименование' я ввожу текст 'Ботинки'
	И в поле с именем 'Артикул' я ввожу текст '12345'
	И я нажимаю кнопку выбора у поля с именем "Поставщик"
	И в таблице "Список" я выбираю текущую строку
	И в поле с именем 'Штрихкод' я ввожу текст '12345'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И поле "Код" заполнено
* Добавление картинки
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	И я выбираю файл "D:\картинки\ботинки.jpg"	
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст 'Ботинки'
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И пауза 2
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Ботинки (Файл)' в течение 20 секунд
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
* Проверка добавления картинки
	И элемент формы с именем "ФайлКартинки" стал равен 'Ботинки'				
* Закрытие формы 
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Кефир (Товар)' в течение 20 секунд