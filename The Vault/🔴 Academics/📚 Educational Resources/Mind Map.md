
Table of Contents


Simple Contents

```dataviewjs
let pages = dv.pages("#study-note");
for (let group of pages.groupBy(b => b["cards-deck"])) {
	dv.header(3, group.key);
	dv.list(group.rows.file.name);
}
```



Database

```dataview
TABLE author, publisher, published, tags 
FROM #study-note 
```


Mind Map

```mermaid
mindmap
  %%{init: {'theme':'dark'}}%%
  root(Mind Map))
    [Origins]
      Long history
      ▹icon(fa fa-book)
      Popularisation
        British popular psychology author Tony Buzan
```


Starter Resources

- [[🔴 Academics/📚 Educational Resources/📕 Elementary Algebra, 4ᵗʰ Edition]]
