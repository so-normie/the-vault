import re
from datetime import datetime

# Reading the original file
with open('8. Mixed Recall.md', 'r', encoding='utf-8') as file:
    content = file.read()

# Regular expression to match third-level headings
headings = re.findall(r'### (.+)', content)

# Template for the new files
template = """---
title: "{{title}} 👨🏽‍💻"
created: {{date}} {{time}}
authors: [Edmund Leibert III]
tags:
- educational-resource/structy
- study-note
cards-deck: Default::Computer Science
---

# 🌐 Structy

---

## 🕸️ All Mention(s):

---

## 🔙 Previous Note(s):

---

## 5.. Dynamic Programming

### **{{title}} 👨🏽‍💻**

#### **Solution (C++)**

#### **Solution (Python)**

#### **Solution (JavaScript)**

---

## 🔜 Next Note(s):
- g
"""

# Folder to store new files
folder = '8. Mixed Recall'

# Current date and time in the desired format
current_date = datetime.now().strftime("%Y-%m-%d")
current_time = datetime.now().strftime("%H:%M")

# Create new notes based on the third-level headings
for heading in headings:
    # Replace placeholders in the template
    note_content = template.replace("{{title}}", heading).replace("{{date}}", current_date).replace("{{time}}", current_time)
    
    # Creating the file
    with open(f'{folder}/{heading} 👨🏽‍💻.md',  'w', encoding='utf-8') as note_file:
        note_file.write(note_content)
