```
       ▄▄▄▄▄▄ ▄     ▄ ▄▄▄▄▄▄▄         
      █      █ █ ▄ █ █       █        
      █  ▄   █ ██ ██ █    ▄▄▄█        
      █ █▄█  █       █   █▄▄▄         
      █      █       █    ▄▄▄█        
      █  ▄   █   ▄   █   █▄▄▄         
      █▄█ █▄▄█▄▄█ █▄▄█▄▄▄▄▄▄▄█        
 ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄   ▄▄    ▄▄ 
█  █ █  █       █      █  █ █  █  █  █
█  █▄█  █    ▄▄▄█  ▄   █  █▄█  █  █  █
█       █   █▄▄▄█ █▄█  █       █  █  █
█▄     ▄█    ▄▄▄█      █   ▄   █  █▄▄█
  █   █ █   █▄▄▄█  ▄   █  █ █  █   ▄▄ 
  █▄▄▄█ █▄▄▄▄▄▄▄█▄█ █▄▄█▄▄█ █▄▄█  █▄▄█

```

All dot files are maintained in the `src` directory.

To install to a fresh Linux installation, check out this repository and run the install script

```bash
$ ./install
```

To add existing dotfiles to the repo run the `track` script

```bash
$ ./track ~/.example-dotfile
```


# TODO:

 * [ ] Add ignore feature: https://www.baeldung.com/linux/globbing-exclude-pattern
 * [ ] Rename "src" directory
 * [ ] Clean up track script
 * [ ] Rename "stub" directory
 * [ ] Consider a cleaner test environment
 * [ ] Add CI with GitHub Actions
 * [ ] Add pre-run prompt: https://www.shellhacks.com/yes-no-bash-script-prompt-confirmation/
