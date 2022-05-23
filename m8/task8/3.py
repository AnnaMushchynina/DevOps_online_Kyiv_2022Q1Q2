filename = input("Input the Filename: ")
##filename = "print.txt"
with open(filename, 'r', encoding='UTF-8') as file:
    while (line := file.readline().rstrip()):
        print(line)
        line= file.readline()  
        