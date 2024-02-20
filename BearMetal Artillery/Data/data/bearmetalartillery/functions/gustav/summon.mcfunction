# exectuted at target location

summon item_display ~ ~7.5 ~ {item: {id: "carved_pumpkin", Count: 1, tag: {CustomModelData: 2}}, Tags: ["bma.sg.chassis"], transformation: {scale: [15, 15, 15], left_rotation: {angle: 0, axis: [0, 0, 0]}, right_rotation: {angle: 0, axis: [0, 0, 0]}, translation: [0, 0, 0]}, teleport_duration: 200}

summon item_display ~ ~7.5 ~ {item: {id: "carved_pumpkin", Count: 1, tag: {CustomModelData: 3}}, Tags: ["bma.sg.turret"], transformation: {scale: [15, 15, 15], left_rotation: {angle: 0, axis: [0, 0, 0]}, right_rotation: {angle: 0, axis: [0, 0, 0]}, translation: [0f, 4.5f, 0f]}, teleport_duration: 5000}

summon item_display ~ ~7.5 ~ {item: {id: "carved_pumpkin", Count: 1, tag: {CustomModelData: 4}}, Tags: ["bma.sg.cannon"], transformation: {scale: [15, 15, 15], left_rotation: {angle: 0, axis: [0, 0, 0]}, right_rotation: {angle: 0, axis: [0, 0, 0]}, translation: [0f, 7f, 15f]}, teleport_duration: 5000, CustomName: SG-800}

ride @e[tag=bma.sg.turret,limit=1,sort=nearest] mount @e[tag=bma.sg.chassis,limit=1,sort=nearest]
ride @e[tag=bma.sg.cannon,limit=1,sort=nearest] mount @e[tag=bma.sg.turret,limit=1,sort=nearest]