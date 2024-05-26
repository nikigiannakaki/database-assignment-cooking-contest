from faker import Faker
import datetime

fake = Faker()

DUMMY_DATA_NUMBER = 50
TABLE_NAME = "cook"
TABLE_COLUMNS = [
    "first_name",
    "last_name",
    "cook_phone_number",
    "cook_birthday",
    "age_in_years",
    "cook_working_years",
    "professional_level"
]
content = ""

for _ in range(DUMMY_DATA_NUMBER):
    firstName = fake.first_name()
    lastName = fake.last_name()
    phone_number = fake.numerify(text="##########")  # 10-digit phone number
    age = fake.random_int(min=18, max=80)  # Random age between 18 and 80
    today = datetime.date.today()
    birth_year = today.year - age
    birth_month = fake.random_int(min=1, max=12)
    birth_day = fake.random_int(min=1, max=28)  # Simplified to ensure valid dates
    birthday = datetime.date(birth_year, birth_month, birth_day)
    if age == 18:
        working_years = 1  # Minimum working years when age is 18
    else:
        working_years = fake.random_int(min=1, max=age-18)  # Random working years between 1 and (age - 18)
    professional_level = fake.random_element(elements=('C cook', 'B cook', 'A cook', 'chef assistant', 'chef'))
    content += f'INSERT INTO {TABLE_NAME} ({",".join(TABLE_COLUMNS)}) VALUES ' \
               f'("{firstName}", "{lastName}", "{phone_number}", "{birthday}", {age}, {working_years}, "{professional_level}");\n'

with open(f"dummy_data_{TABLE_NAME}.txt", 'w') as f:
    f.write(content)
