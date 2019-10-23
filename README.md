# Gitbook Server

Serve Gitbook.

## Usage

### Serve Gitbook
```
docker run -v "$(PWD)/example":/mdbook -d -p 8080:8080 a2dict/gitbook-serve
```

### As Gitbook Compiler
```
docker run --rm -v "$(PWD)":/work/ gitbook-serve sh -c 'gitbook install && gitbook build'
```

### Use in Dockerfile
```
FROM a2dict/gitbook-serve as gitbook-compiler
COPY example/ /work/
RUN npm i && gitbook build

FROM nginx:1.17
COPY --from=gitbook-compiler /work/_book/ /usr/share/nginx/html/
EXPOSE 80
```