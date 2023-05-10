﻿#language: ru
@tree

Функционал: Заполнение поля Организация

Как Тестировщик я хочу
для документа Заказ покупателя проверить заполнение поля Организация 
чтобы заказ заполнялся корректно   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение поля Организация
* Создание заказа
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
* Заполнение шапки			
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'       |
		| '12'  | 'Розничный клиент 1' |
	И в таблице "List" я выбираю текущую строку
	Если элемент формы с именем "Company" стал равен '' Тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'           |
			| '2'   | 'Собственная компания 2' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
* Проверка заполненности шапки
	Тогда элемент формы с именем "Partner" стал равен 'Розничный клиент 1'
	Тогда элемент формы с именем "LegalName" стал равен 'Розничный клиент 1'
	Тогда элемент формы с именем "Agreement" стал равен 'Розничный клиент 1'
	Тогда элемент формы с именем "Status" стал равен 'Согласовано'
	Тогда элемент формы с именем "Company" стал равен 'Собственная компания 2'
	Тогда элемент формы с именем "Store" стал равен 'Склад 1 (с контролем остатка)'