# p-program

    git clone git@github.com:p-program/readme.git
    git submodule update --init  
    post=Endless-August
    hugo new content/post/$post.md

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
