---
author: 
publisher: 
published: 
tags: [computer-science/programming-language/rust, educational-resource/rust, study-note] 
cards-deck: Default::Computer Science
---

How do I list all globally installed packages in cargo? #card 
```powershell
cargo install --list
```

Does cargo install crates globally? #card 
Yes, crates are installed globally for the current user, not per project. Currently, they are stored in `<user directory>/.cargo/registry`.