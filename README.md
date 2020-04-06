# p-program

    git clone git@github.com:p-program/readme.git
    git submodule update --init  
    hugo new content/post/

## architecture

### themes/axiom

[axiom](https://themes.gohugo.io/axiom/)

```bash
cd themes/axiom
git pull origin master
npm install
npm run prd
```

### public

post release

```bash
git submodule add git@github.com:p-program/p-program.github.io.git public
```
