# p-program

    git clone git@github.com:p-program/readme.git
    git submodule update --init  
    hugo new content/post/Distributed-Wife-System.md

## architecture

### themes/axiom

[axiom](https://github.com/marketempower/axiom)

```bash
cd themes/axiom
git pull origin master
npm install
npm run prd
```

### public

```bash
git submodule add git@github.com:p-program/p-program.github.io.git public
```
