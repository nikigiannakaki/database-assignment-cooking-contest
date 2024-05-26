from faker import Faker
import base64

# Initialize Faker
faker = Faker()

# Generate dummy image data
def generate_dummy_image():
    return base64.b64encode(faker.image()).decode('utf-8')

# Generate dummy description
def generate_description():
    return faker.text(max_nb_chars=200)

# Generate SQL INSERT statements for the given table names
def generate_inserts_for_table(table, row_count):
    insert_statements = []
    for _ in range(row_count):
        image_data = generate_dummy_image()
        image_description = generate_description()
        
        insert_query = f"""
        INSERT INTO {table} (image, image_description) VALUES ('{image_data}', '{image_description}');
        """
        insert_statements.append(insert_query.strip())
    return insert_statements

# Write INSERT statements to a text file
def write_inserts_to_file(filename, tables, row_count):
    with open(filename, 'w') as file:
        for table in tables:
            insert_statements = generate_inserts_for_table(table, row_count)
            for statement in insert_statements:
                file.write(statement + '\n')

if __name__ == "__main__":
    # List of table names
    tables = [
        'equipment', 'food_groups', 'national_cuisine', 'cook', 
        'episodes', 'recipes', 'tags', 'themes'
    ]
    
    # Number of rows to generate for each table
    row_count = 10
    
    write_inserts_to_file('insert_statements.sql', tables, row_count)
    print("INSERT statements generated and written to insert_statements.sql.")
