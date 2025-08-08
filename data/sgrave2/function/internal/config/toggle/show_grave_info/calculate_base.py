import glob

for filepath in glob.iglob('/mnt/sda6/minecraft/saves/T10/datapacks/SGrave 2/data/sgrave2/function/internal/config/toggle/show_grave_info/*/*.mcfunction'):
  file_copy = open(filepath, 'rt')

  file_result = '#<< config/open_page/graves/show_grave_info\n\n## Toggle value\n'

  for i in file_copy:
    if i.find('playsound') >= 0:
      file_result += '## Play sound\n'
    file_result += i
  
  file_copy.close()

  print(filepath[118:])

  file = open(filepath, 'wt')
  file.write(file_result)
  file.close()
