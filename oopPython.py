class Person:
    def __init__(self,name,age,gender):
        self.name = name
        self.age = age
        self.gender = gender
        
    def introduce(self):
        print(f"Hello, my name is {self.name}. I am a  {self.age} years old  {self.gender}.")
        
    
person1 = Person("Veldrine Evelia",23,"male")
person1.introduce()