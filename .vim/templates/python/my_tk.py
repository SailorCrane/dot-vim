#! /usr/bin/env python

import sys as _sys
if _sys.version_info > (3,):
    import tkinter as tk
else:
    import Tkinter as tk

top = tk.Tk()

quit = tk.Button(top, text='push to quit', command=top.quit)
quit.pack()

tk.mainloop()
