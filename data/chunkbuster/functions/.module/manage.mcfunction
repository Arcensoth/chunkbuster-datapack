execute if data storage imp.__temp__:api/manage __temp__{register: true} run data modify storage imp.__temp__:api/manage __temp__.registrants append value {"module_format":1,"title":"Chunkbuster","color":"green","description":"Lag-friendly and CPU-optimized chunk pre-generator.","version":"0.0.5-dev1","minecraft_version":"1.15","category":"Utility","namespace":"chunkbuster","scorespace":"ckb","url":"https://github.com/Arcensoth/chunkbuster-datapack","authors":[{"name":"Arcensoth","url":"https://github.com/Arcensoth"}],"dependencies":[{"namespace":"tickbuster","version":"0.1"}],"manage_function":".module/manage","setup_function":".module/setup","teardown_function":".module/teardown","version_major":0,"version_minor":0,"version_patch":5,"version_label":"dev1","components":{"title":"{\"text\":\"Chunkbuster\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"\",\"color\":\"gray\"},{\"text\":\"Chunkbuster\",\"color\":\"green\"},\"\\n\",\"Lag-friendly and CPU-optimized chunk pre-generator.\",\"\\n\",{\"text\":\"Version 0.0.5-dev1 for Minecraft 1.15\",\"color\":\"dark_gray\"},\"\\n\",\"By \",{\"text\":\"Arcensoth\",\"color\":\"yellow\"}]},\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://github.com/Arcensoth/chunkbuster-datapack\"}}","authors":"[{\"text\":\"\",\"color\":\"gray\"},{\"text\":\"Arcensoth\",\"color\":\"yellow\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"https://github.com/Arcensoth\"},\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://github.com/Arcensoth\"}}]","color":"{\"text\":\"\",\"color\":\"green\"}","enable_button":"{\"text\":\"\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"Click to \",\"color\":\"green\"},{\"text\":\"enable\",\"bold\":true},\" \",{\"text\":\"Chunkbuster\",\"color\":\"green\"}]},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @s barrier{imp:{d:1b,c:['data modify storage imp.__temp__:api/v0/manage __input__ set value {id:chunkbuster,action:enable}','function imp:api/v0/manage']}}\"}}","forget_button":"{\"text\":\"\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"Click to \",\"color\":\"red\"},{\"text\":\"forget\",\"bold\":true},\" \",{\"text\":\"Chunkbuster\",\"color\":\"green\"}]},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @s barrier{imp:{d:1b,c:['data modify storage imp.__temp__:api/v0/manage __input__ set value {id:chunkbuster,action:forget}','function imp:api/v0/manage']}}\"}}","disable_button":"{\"text\":\"\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"Click to \",\"color\":\"red\"},{\"text\":\"disable\",\"bold\":true},\" \",{\"text\":\"Chunkbuster\",\"color\":\"green\"}]},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @s barrier{imp:{d:1b,c:['data modify storage imp.__temp__:api/v0/manage __input__ set value {id:chunkbuster,action:disable}','function imp:api/v0/manage']}}\"}}","uninstall_button":"{\"text\":\"\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"Click to \",\"color\":\"red\"},{\"text\":\"uninstall\",\"bold\":true},\" \",{\"text\":\"Chunkbuster\",\"color\":\"green\"}]},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @s barrier{imp:{d:1b,c:['data modify storage imp.__temp__:api/v0/manage __input__ set value {id:chunkbuster,action:uninstall}','function imp:api/v0/manage']}}\"}}","reinstall_button":"{\"text\":\"\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":[{\"text\":\"Click to \",\"color\":\"yellow\"},{\"text\":\"reinstall\",\"bold\":true},\" \",{\"text\":\"Chunkbuster\",\"color\":\"green\"}]},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @s barrier{imp:{d:1b,c:['data modify storage imp.__temp__:api/v0/manage __input__ set value {id:chunkbuster,action:reinstall}','function imp:api/v0/manage']}}\"}}"},"commands":{"pause":"function chunkbuster:.module/pause","resume":"function chunkbuster:.module/resume","setup":"function chunkbuster:.module/setup","teardown":"function chunkbuster:.module/teardown","enable":["datapack enable \"file/chunkbuster\"","datapack enable \"file/chunkbuster.zip\"","datapack enable \"file/chunkbuster-0.0.5-dev1.zip\""],"disable":["datapack disable \"file/chunkbuster\"","datapack disable \"file/chunkbuster.zip\"","datapack disable \"file/chunkbuster-0.0.5-dev1.zip\""]}}
execute if data storage imp.__temp__:api/manage __temp__{install: [chunkbuster]} run function chunkbuster:.module/setup
