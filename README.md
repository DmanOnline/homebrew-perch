# Homebrew tap for Perch

[Perch](https://github.com/DmanOnline/perch) is a Dynamic Island for the Mac notch.

```bash
brew tap dmanonline/perch
brew trust dmanonline/perch
brew install --cask perch
```

Homebrew asks you to trust a tap from outside its own catalogue once, which is
what `brew trust` does. Perch is signed but not notarized by Apple: the first
time, open System Settings > Privacy & Security and click "Open Anyway" next to
Perch. After that it opens normally and keeps itself up to date.

The cask in `Casks/perch.rb` is updated automatically by Perch's release workflow.
