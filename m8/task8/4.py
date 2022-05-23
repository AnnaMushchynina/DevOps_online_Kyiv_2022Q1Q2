word = "<title>"
with open("doc.html",'r', encoding='UTF-8') as file:
    data = file.readlines()
    for line in data:
        if word in line:
            ##print("Заголовок:", (''.join(line.split('<title>')[:-1])))
            ##print(line.split('>':'</')[1:1])
            print(line.sub("<[^>]+>", "",line, flags=re.S))
            res = re.sub(r"<[^>]+>", "", data, flags=re.S)