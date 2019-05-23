
# FlowCrypt Docs

FlowCrypt documentation available at [flowcrypt.com/docs](https://flowcrypt.com/docs/)
## Contributing

If you see an error in this documentation, feel free to open an issue or a Pull Request to have it fixed.

To prepare your environment first time:
```
git clone https://github.com/FlowCrypt/flowcrypt-docs.git
cd flowcrypt-docs
make bootstrap
```

To build docs and serve them on localhost:
```
make serve
```

Docs site will be built into `./_site` directory and served at `http://localhost:4000/docs/`.


Once localhost is running, you can run tests:
```
make test
```
