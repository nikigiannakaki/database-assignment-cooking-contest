from faker import Faker
import base64

# Initialize Faker
faker = Faker()

# Generate dummy image data
def generate_dummy_image():
    return base64.b64encode(faker.binary(length=100)).decode('utf-8')

# Generate dummy description
def generate_description():
    return faker.text(max_nb_chars=200)

# Generate SQL UPDATE statements for the given table and ID column
def generate_updates_for_table(table, id_column, num_rows):
    update_statements = []
    for id_value in range(1, num_rows + 1):
        image_data = generate_dummy_image()
        image_description = generate_description()
        
        update_query = f"""
        UPDATE {table}
        SET image = '{image_data}', image_description = '{image_description}'
        WHERE {id_column} = {id_value};
        """
        update_statements.append(update_query.strip())
    return update_statements

# Write UPDATE statements to a text file
def write_updates_to_file(filename, table_updates):
    with open(filename, 'w') as file:
        for table, updates in table_updates.items():
            for statement in updates:
                file.write(statement + '\n')

if __name__ == "__main__":
    # Generate updates for the 'episodes' table
    episodes_updates = generate_updates_for_table('episodes', 'episode_id', 50)
    
    # Generate updates for the 'cook' table
    cook_updates = generate_updates_for_table('cook', 'cook_id', 50)

    # Generate updates for other tables
    tables = [
        ('meal_recipe', 'counter', 114),
        ('tags', 'counter', 14),
        ('themes', 'counter', 42),
        ('equipment', 'counter', 34),
        ('ingredients', 'counter', 173),
        ('national_cuisine', 'counter', 20),
        ('food_groups', 'counter', 11)
    ]

    # Store updates for each table
    table_updates = {}
    for table_info in tables:
        table_name, id_column, num_rows = table_info
        updates = generate_updates_for_table(table_name, id_column, num_rows)
        table_updates[table_name] = updates
    
    # Add updates for 'episodes' and 'cook' tables
    table_updates['episodes'] = episodes_updates
    table_updates['cook'] = cook_updates
    
    write_updates_to_file('update_statements.sql', table_updates)
    print("UPDATE statements generated and written to update_statements.sql.")
