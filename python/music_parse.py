import id3reader
import os
import json


music_data = []
def getTags(path):
    try:
        id3r = id3reader.Reader(path)
        
        song_info = {}
        song_info['Artist'] = id3r.getValue('performer')
        song_info['Album'] = id3r.getValue('album')
        song_info['Title'] = id3r.getValue('title')
        song_info['ReleaseDate'] = id3r.getValue('year')
        
        if song_info['Title']:
            music_data.append(song_info)
    except:
        print 'error',
        
path = 'C:/Users/'  # ADD PATH INFO HERE TO YOUR MUSIC FOLDER
[getTags(path+file) for file in os.listdir(path) if os.path.isfile(path+file)]
[getTags(path+directory+'/'+file) for directory in os.listdir(path) if os.path.isdir(path+directory) for file in os.listdir(path+directory)]

print ''

with open('music.json', 'w') as fp:
    json.dump(music_data, fp)
