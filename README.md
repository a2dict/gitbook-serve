# Gitbook Server

Serve Gitbook.

## Usage
```
docker run -v "$(PWD)/example":/mdbook -d -p 8080:8080 gitbook-serve
```