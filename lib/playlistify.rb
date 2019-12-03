require 'rest-client'
require 'json'

# songs = File.readlines('songlist.txt')

# RestClient.post(uri + api, data.to_json, token)
response = RestClient.post('https://api.spotify.com/v1/playlists/1E0p3y3cm378DQWfDQHB9i/tracks',
                           { 'uris': ["spotify:track:2pCnrWHxYVDWN3S4PgNMa0", "spotify:track:0TaT50ZZxT4ytZxuqkE3A9"] }.to_json,
                           {'Authorization': 'Bearer BQDihNZRX3Sf6jsTOxbnPIRpOuodOZZQcFkGJvHH4kncR4XmbED4YSg4HHbCx24v6HvLgts4eDfVUkogPJ8g5GKItbtSuhyCLAfNpQs5p1FB8veg6muDU_00wgPKRbH_mriY1PTuCzmo2JA3YL5aN9LfYHus9DanSWxgP9DksHVSdJRftITn05Qv-MWRXHhMvDa4qLrylQF3wb2ixMLghwXiTCbXn0vrGRI',
                            'Content-Type': 'application/json',
                            'Accept': 'application/json' })

puts response

