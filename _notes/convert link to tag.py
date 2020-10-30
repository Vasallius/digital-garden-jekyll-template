import os

for x, y, z in os.walk(r'C:\Users\Joseph\Desktop\test'):
    for w in z:
        if w.endswith('.md'):
            try:
                with open(w) as fh:
                    content = []
                    for line in fh.readlines():
                        if '[[August]]' in line:
                            line = '\t- month: #August\n'
                            content.append(line)
                        elif '[[2020]]' in line:
                            line = '\t- year: #year2020\n'
                            content.append(line)
                        else:
                            content.append(line)
                with open(w, 'w') as fh:
                    fh.writelines(content)
            except:
                print(w, 'File error. Now moving on.')
