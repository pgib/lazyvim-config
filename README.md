Based on the [LazyVim starter kit](https://github.com/LazyVim/starter).

## Tips and Tricks

To disable a particular key mapping for a default plug-in, simply set it to `false` in the plug-in's `keys` settings:

```lua
return {
  "foo/plugin",
  keys = {
    { "<leader>f", false },
  }
}
```
