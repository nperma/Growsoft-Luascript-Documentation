
# System / OS Utilities

> ⚠️ **WARNING:** These functions interact with the server's operating system or runtime environment.  
> If you do not fully understand their effects, **do not use them** — misuse can cause data loss, security issues, or crash the server.

All functions below are accessed via Lua's `os` library (e.g. `os.time()`). Use with extreme caution.

---

## Available Functions

```lua
os.execute(command)
````

Run an operating system command. Returns command status/output depending on the runtime. **Dangerous** — may execute arbitrary shell commands.

---

```lua
os.time()
```

Returns the current time as a number (seconds since the epoch). Can be used for timestamps or time comparisons.

---

```lua
os.clock()
```

Returns CPU time used by the program (in seconds). Useful for profiling or measuring execution time.

---

```lua
os.date(format, time?)
```

Formats a time value into a date string. If `time` is omitted, uses current time. `format` follows Lua `os.date` formatting rules (e.g. `"%Y-%m-%d %H:%M:%S"`).

---

```lua
os.getenv(varname)
```

Gets the value of an environment variable named `varname`. May return `nil` if the variable is not set. Be careful exposing secrets.

---

```lua
os.remove(filename)
```

Deletes the file at `filename`. Permanent — use only when you are certain the file should be removed.

---

```lua
os.rename(oldname, newname)
```

Rename or move a file from `oldname` to `newname`. Will fail if destination exists or permissions are insufficient.

---

```lua
os.setlocale(locale, category)
```

Sets the program locale. `locale` is a locale string (e.g. `"en_US.UTF-8"`). `category` is optional (e.g. `"all"`, `"numeric"`). Behavior depends on system locales.

---

```lua
os.exit(code?)
```

Immediately terminates the Lua state/process. Optional numeric `code` specifies the exit status. **Extremely dangerous on shared servers** — will stop the server process if allowed.

---

[Back](../README.md)
