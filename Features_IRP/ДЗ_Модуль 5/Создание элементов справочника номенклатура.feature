#language: ru

@tree

Функционал: Создание элементов справочника Номенклатура

Как Тестировщик я хочу
создать 10 элементов справочника Номенклатура с разными наименованиями без дополнительных реквизитов 
чтобы провести нагрузочное тестирование

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий:  Создание элементов справочника Номенклатура
	И я запоминаю значение выражения "1" в переменную "Шаг"
	И я делаю 10 раз
		И я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И я запоминаю значение выражения '"Товар без характеристик" + $Шаг$' в переменную "НаименованиеНоменклатуры"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                              | 'Unit'                                                              | 'MainPricture'                          | 'Vendor'                                                               | 'ItemID' | 'PackageUnit' | 'Description_en'    | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | '{"e1cib/data/Catalog.ItemTypes?ref=" + StrReplace(New UUID, "-", "")}' | '{"e1cib/data/Catalog.Units?ref=" + StrReplace(New UUID, "-", "")}' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '{"e1cib/data/Catalog.Partners?ref=" + StrReplace(New UUID, "-", "")}' | '58791'  | ''            | '$ВидНоменклатуры$' | ''                 | ''               | ''               |          |          |          | 0.21     |         |
		