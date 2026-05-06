import funkin.backend.system.framerate.Framerate;

function postUpdate(elapsed:Float) {
    if (Framerate.instance != null) {
        
        if (Framerate.codenameBuildField != null) 
            Framerate.codenameBuildField.visible = false;
            
        if (Framerate.memoryCounter != null) 
            Framerate.memoryCounter.visible = false;

        if (Framerate.instance.fpsCounter != null) {
            var currentFPS:Int = Math.floor(Framerate.instance.fpsCounter.fps);
            Framerate.instance.fpsCounter.text = "FPS: " + currentFPS;
        }
    }
}

function destroy() {
    if (Framerate.instance != null) {
        if (Framerate.codenameBuildField != null) 
            Framerate.codenameBuildField.visible = true;
            
        if (Framerate.memoryCounter != null) 
            Framerate.memoryCounter.visible = true;
            
    }
}
