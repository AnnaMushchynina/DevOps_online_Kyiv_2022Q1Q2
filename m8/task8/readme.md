# EPAM University Programs
### _DevOps education program_
## Module 8 Python Intro
#### _TASK 8_

  1. Write easy program, which will display current date and time.

    ``` 
        import datetime
        now = datetime.datetime.now()
        print ("Current date and time : ")
        print (now.strftime("%Y-%m-%d %H:%M:%S"))
    ```

    ![1.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/1.PNG)
  
  2. Write python program, which will accept comma-separated numbers, and then it should write tuple and list  of  them:
    Enter numbers: 1, 2, 7, 43, 9
    Output:
    List: [‘1’, ‘2’, ‘7’, ‘43’, ‘9’]
    Tuple: (‘1’, ‘2’, ‘7’, ‘43’, ‘9’)

    ```
        values = input("Input some comma-seprated numbers : ")
        list = values.split(",")
        tuple = tuple(list)
        print('List : ',list)
        print('Tuple : ',tuple)
    ```

    ![2.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/2.PNG)

  3. Write python program, which will ask file name. File should be read, and only even lines should be shown.

    ![3.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/3.PNG)

 4. Write python program, which should read html document, parse it, and show it’s title.
    ```
        word = "<title>"
        with open("doc.html",'r', encoding='UTF-8') as file:
        data = file.readlines()
        for line in data:
            if word in line:
            print("Title:", line.replace('<title>','').replace('</title>',''))
    ```
 5. Write python program, which will parse user’s text, and replace some emotions with emoji’s (Look: pip install emoji)
    ```
        message = input("> ")
        words = message.split( " ")
        emojis = {
        ":)" : "😀",
        ":(" : "😞",
        "lol" : "😂",
        "sick":"😨",
        "happy": "😀",
        "mermaid": "🧜‍"
        }
        outcome = " "
        for word in words:
            outcome += emojis.get(word, word) + " "
        print(outcome)
    ```
 6. Write program, that will show basic PC information (OS, RAM amount, HDD’s, and etc.)
    ```
        import psutil
        import platform
        from datetime import datetime

        def get_size(bytes, suffix="B"):
            """
            Scale bytes to its proper format
            e.g:
                1253656 => '1.20MB'
                1253656678 => '1.17GB'
            """
            factor = 1024
            for unit in ["", "K", "M", "G", "T", "P"]:
                if bytes < factor:
                    return f"{bytes:.2f}{unit}{suffix}"
                bytes /= factor

        print("="*40, "System Information", "="*40)
        uname = platform.uname()
        print(f"System: {uname.system}")
        print(f"Node Name: {uname.node}")
        print(f"Version: {uname.version}")
        print(f"Machine: {uname.machine}")
        print(f"Processor: {uname.processor}")

        # Memory Information
        print("="*40, "Memory Information", "="*40)
        # get the memory details
        svmem = psutil.virtual_memory()
        print(f"Total: {get_size(svmem.total)}")
        print(f"Available: {get_size(svmem.available)}")
        print(f"Used: {get_size(svmem.used)}")
        print(f"Percentage: {svmem.percent}%")


        # Disk Information
        print("="*40, "Disk Information", "="*40)
        print("Partitions and Usage:")
        # get all disk partitions
        partitions = psutil.disk_partitions()
        for partition in partitions:
            print(f"=== Device: {partition.device} ===")
            print(f"  Mountpoint: {partition.mountpoint}")
            print(f"  File system type: {partition.fstype}")
            try:
                partition_usage = psutil.disk_usage(partition.mountpoint)
            except PermissionError:
                # this can be catched due to the disk that
                # isn't ready
                continue
            print(f"  Total Size: {get_size(partition_usage.total)}")
            print(f"  Used: {get_size(partition_usage.used)}")
            print(f"  Free: {get_size(partition_usage.free)}")
            print(f"  Percentage: {partition_usage.percent}%")
        # get IO statistics since boot
        disk_io = psutil.disk_io_counters()
        print(f"Total read: {get_size(disk_io.read_bytes)}")
        print(f"Total write: {get_size(disk_io.write_bytes)}")
    ```
    ![6.PNG](https://github.com/AnnaMushchynina/DevOps_online_Kyiv_2022Q1Q2/blob/main/m8/task8/images/6.PNG)
