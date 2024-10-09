import pandas as pd

# Чтение данных из Excel файла
file_path = 'prettyData.xlsx'
sheet_name = 'Souvenirs'
df = pd.read_excel(file_path, sheet_name=sheet_name)

# Функция для обработки значений
def format_value(value):
    if pd.isna(value):
        return 'NULL'
    elif isinstance(value, str) and value.startswith('[') and value.endswith(']'):
        # Замена одинарных кавычек на двойные внутри списков
        value = value.replace("'", '"')
        return f"'{value}'"
    else:
        return f"'{value}'"

# Создание SQL скрипта
sql_script = "INSERT INTO public.souvenirs(\n\tid, url, shortname, name, description, rating, idcategory, idcolor, size, idmaterial, weight, qtypics, picssize, idapplicmetod, allcategories, dealerprice, price, comments)\n\tVALUES "

values = []
for index, row in df.iterrows():
    row_values = [format_value(row[col]) for col in df.columns]
    values.append(f"({', '.join(row_values)})")

sql_script += ",\n\t".join(values) + ";"

# Сохранение SQL скрипта в файл
with open('insert_souvenirs.sql', 'w', encoding='utf-8') as file:
    file.write(sql_script)

print("SQL скрипт успешно создан и сохранен в файл 'insert_souvenirs.sql'")
