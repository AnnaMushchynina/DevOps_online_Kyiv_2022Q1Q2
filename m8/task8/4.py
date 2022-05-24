word = "<title>"
with open("doc.html",'r', encoding='UTF-8') as file:
    data = file.readlines()
    for line in data:
        if word in line:
           print("Title:", line.replace('<title>','').replace('</title>',''))
