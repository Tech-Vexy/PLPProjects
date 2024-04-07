try:
    myFile = open("my_file.txt","x+")
    myFile.write("Hello, my name is Veldrine Evelia. I am 23 years old and I love Python.")
    myFile.close()
except FileExistsError:
    print("The file already exists.")

myFile = open("my_file.txt","r")
print(myFile.read())

myFile = open("my_file.txt","a")
myFile.write("\nI am a software developer.")
myFile.close()

    
