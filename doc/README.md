Historia Core
==========

This is the official reference wallet for Historia digital currency and comprises the backbone of the Historia peer-to-peer network. You can [download Historia Core](https://www.historia.org/downloads/) or [build it yourself](#building) using the guides below.

Running
---------------------
The following are some helpful notes on how to run Historia Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/historia-qt` (GUI) or
- `bin/historiad` (headless)

### Windows

Unpack the files into a directory, and then run historia-qt.exe.

### macOS

Drag Historia Core to your applications folder, and then run Historia Core.

### Need Help?

* See the [Historia documentation](https://docs.historia.org)
for help and more information.
* Ask for help on [Historia Discord](http://stayhistoriay.com)
* Ask for help on the [Historia Forum](https://historia.org/forum)

Building
---------------------
The following are developer notes on how to build Historia Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Historia Core repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- Source Code Documentation ***TODO***
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* See the [Historia Developer Documentation](https://historiacore.readme.io/)
  for technical specifications and implementation details.
* Discuss on the [Historia Forum](https://historia.org/forum), in the Development & Technical Discussion board.
* Discuss on [Historia Discord](http://stayhistoriay.com)
* Discuss on [Historia Developers Discord](http://chat.historiadevs.org/)

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [historia.conf Configuration File](historia-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [I2P Support](i2p.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [PSBT support](psbt.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
