import json
from difflib import get_close_matches

# Load the data from a JSON file into a Python dictionary
def load_data(filepath):
    with open(filepath, "r") as file:
        return json.load(file)

# Function to return the definition of a word
def get_definition(word, data):
    word = word.lower()
    if word in data:
        return data[word]
    elif word.title() in data:  # if user entered "texas" this will check for "Texas" as well.
        return data[word.title()]
    elif word.upper() in data:  # in case user enters words like USA or NATO
        return data[word.upper()]
    else:
        # Suggest a word with the closest match
        suggestions = get_close_matches(word, data.keys())
        if suggestions:
            response = f"Did you mean {suggestions[0]} instead? Enter Y if yes, or N if no: "
            confirm = input(response)
            if confirm.lower() == 'y':
                return data[suggestions[0]]
            else:
                return "The word doesn't exist. Please double-check it."
        else:
            return "The word doesn't exist. Please double-check it."

# Main function to run the dictionary program
def main():
    data_source = r"C:\Users\user\Downloads\data.json"  # Replace with the path to your JSON data file
    data = load_data(data_source)
    
    word = input("Enter a word: ")
    output = get_definition(word, data)
    
    if type(output) == list:
        for item in output:
            print(item)
    else:
        print(output)

if __name__ == "__main__":
    main()
