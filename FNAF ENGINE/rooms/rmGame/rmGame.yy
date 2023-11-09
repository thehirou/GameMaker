{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmGame",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_5CAE3A17","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_BD0511A","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_122B41AD","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_2F708304","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_14A96CBE","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_28CED7F","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_3A56349","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_64B1E0A5","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_71AACCCE","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_163DF3C4","path":"rooms/rmGame/rmGame.yy",},
    {"name":"camRight3","path":"rooms/rmGame/rmGame.yy",},
    {"name":"camLeft3","path":"rooms/rmGame/rmGame.yy",},
    {"name":"camLeft2","path":"rooms/rmGame/rmGame.yy",},
    {"name":"camLeft1","path":"rooms/rmGame/rmGame.yy",},
    {"name":"camRight2","path":"rooms/rmGame/rmGame.yy",},
    {"name":"camRight1","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_2767C09E","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_D7C5371","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_42E26E3A","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_58ED0C0","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_C0CB86B","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_5D37FE1C","path":"rooms/rmGame/rmGame.yy",},
    {"name":"inst_37F1F95B","path":"rooms/rmGame/rmGame.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"MapPreview","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_50DAFE7F","animationSpeed":1.0,"colour":4294967295,"frozen":true,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"previewMap","path":"sprites/previewMap/previewMap.yy",},"x":1500.0,"y":750.0,},
      ],"depth":0,"effectEnabled":true,"effectType":null,"gridX":20,"gridY":20,"hierarchyFrozen":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"TextPlacement","depth":100,"effectEnabled":true,"effectType":null,"gridX":20,"gridY":20,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_37F1F95B","colour":4294967295,"frozen":true,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oTextDiv","path":"objects/oTextDiv/oTextDiv.yy",},"properties":[],"rotation":0.0,"scaleX":19.75,"scaleY":2.25,"x":1180.0,"y":520.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":false,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"CamOverlay","depth":200,"effectEnabled":true,"effectType":null,"gridX":20,"gridY":20,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"LayerCameraButtons","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"LayerAnimatronicsDebug","depth":400,"effectEnabled":true,"effectType":null,"gridX":20,"gridY":20,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"ToggleCamera","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_42E26E3A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraOpen","path":"objects/oCameraOpen/oCameraOpen.yy",},"properties":[],"rotation":0.0,"scaleX":18.0,"scaleY":3.0,"x":672.0,"y":928.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_58ED0C0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraReappear","path":"objects/oCameraReappear/oCameraReappear.yy",},"properties":[],"rotation":0.0,"scaleX":60.0,"scaleY":29.0,"x":0.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C0CB86B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraClose","path":"objects/oCameraClose/oCameraClose.yy",},"properties":[],"rotation":0.0,"scaleX":18.0,"scaleY":3.0,"x":672.0,"y":928.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5D37FE1C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraReappearAfterClosed","path":"objects/oCameraReappearAfterClosed/oCameraReappearAfterClosed.yy",},"properties":[],"rotation":0.0,"scaleX":60.0,"scaleY":5.0,"x":0.0,"y":928.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"RoomPlacements","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5CAE3A17","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomSupl","path":"objects/oRoomSupl/oRoomSupl.yy",},"properties":[],"rotation":0.0,"scaleX":80.0,"scaleY":61.0,"x":1571.0,"y":524.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_BD0511A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomStage","path":"objects/oRoomStage/oRoomStage.yy",},"properties":[],"rotation":0.0,"scaleX":101.0,"scaleY":65.88202,"x":1497.0,"y":657.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_122B41AD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomCorridor_A","path":"objects/oRoomCorridor_A/oRoomCorridor_A.yy",},"properties":[],"rotation":0.0,"scaleX":-196.62793,"scaleY":-35.185913,"x":1625.0,"y":635.99994,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2F708304","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomCorridor_B","path":"objects/oRoomCorridor_B/oRoomCorridor_B.yy",},"properties":[],"rotation":0.0,"scaleX":30.0,"scaleY":141.68115,"x":1383.0,"y":649.8141,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_14A96CBE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomCorridor_2","path":"objects/oRoomCorridor_2/oRoomCorridor_2.yy",},"properties":[],"rotation":0.0,"scaleX":34.0,"scaleY":192.0,"x":1196.0,"y":723.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_28CED7F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomCorridor_1","path":"objects/oRoomCorridor_1/oRoomCorridor_1.yy",},"properties":[],"rotation":0.0,"scaleX":218.26953,"scaleY":30.000002,"x":1256.0,"y":899.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3A56349","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomBath","path":"objects/oRoomBath/oRoomBath.yy",},"properties":[],"rotation":0.0,"scaleX":63.499996,"scaleY":76.5,"x":1292.0,"y":612.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_64B1E0A5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomLobby","path":"objects/oRoomLobby/oRoomLobby.yy",},"properties":[],"rotation":0.0,"scaleX":141.62793,"scaleY":165.0,"x":1502.0,"y":758.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_71AACCCE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomKitchen","path":"objects/oRoomKitchen/oRoomKitchen.yy",},"properties":[],"rotation":0.0,"scaleX":104.60156,"scaleY":183.18593,"x":1687.3984,"y":614.8141,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_163DF3C4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomSecurity","path":"objects/oRoomSecurity/oRoomSecurity.yy",},"properties":[],"rotation":0.0,"scaleX":102.9057,"scaleY":68.447,"x":1254.229,"y":724.4918,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"CameraZones","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"camRight3","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraMouse","path":"objects/oCameraMouse/oCameraMouse.yy",},"properties":[],"rotation":0.0,"scaleX":10.0,"scaleY":40.000004,"x":1600.0,"y":-96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"camLeft3","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraMouse","path":"objects/oCameraMouse/oCameraMouse.yy",},"properties":[],"rotation":0.0,"scaleX":10.0,"scaleY":40.0,"x":0.0,"y":-96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"camLeft2","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraMouse","path":"objects/oCameraMouse/oCameraMouse.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":38.000004,"x":320.0,"y":-64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"camLeft1","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraMouse","path":"objects/oCameraMouse/oCameraMouse.yy",},"properties":[],"rotation":0.0,"scaleX":5.0,"scaleY":36.000004,"x":448.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"camRight2","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraMouse","path":"objects/oCameraMouse/oCameraMouse.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":38.0,"x":1472.0,"y":-64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"camRight1","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraMouse","path":"objects/oCameraMouse/oCameraMouse.yy",},"properties":[],"rotation":0.0,"scaleX":5.0,"scaleY":36.000004,"x":1312.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2767C09E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCameraVent","path":"objects/oCameraVent/oCameraVent.yy",},"properties":[],"rotation":0.0,"scaleX":18.0,"scaleY":9.0,"x":672.0,"y":-160.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"GameManager","depth":800,"effectEnabled":true,"effectType":null,"gridX":20,"gridY":20,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_D7C5371","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oGame","path":"objects/oGame/oGame.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":841.0,"y":340.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4281866521,"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1920,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}