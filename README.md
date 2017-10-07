# AEON

Copyright (c) 2014-2017, AEON, The Monero Project

## Development and Community Resources

Web: http://aeon.cash
Reddit: https://reddit.com/r/aeon
Github: https://github.com/aeonix/aeon
IRC: #aeon

## Introduction

AEON is a private, secure, untraceable currency. You are your bank, you control your
funds, and nobody can trace your transfers.

Privacy: AEON uses a cryptographically sound system to allow you to send and receive
funds without your transactions being easily revealed on the blockchain (the ledger of
transactions that everyone has). This ensures that your purchases, receipts, and all
transfers remain absolutely private by default.

Security: Using the power of a distributed peer-to-peer consensus network, every
transaction on the network is cryptographically secured. Individual wallets have a 24 word
mnemonic that is only displayed once, and can be written down to backup the wallet. Wallet
files are encrypted with a passphrase to ensure they are useless if stolen.

Untraceability: By taking advantage of ring signatures, a special property of certain
types of cryptography, AEON is able to ensure that transactions are not only
untraceable, but have an optional measure of ambiguity that ensures that transactions
cannot easily be tied back to an individual user or computer.

## About this Project

This is the core implementation of AEON. It is open source and completely free to use
without restrictions, except for those specified in the license agreement below. There are
no restrictions on anyone creating an alternative implementation of AEON that uses the
protocol and network in a compatible manner.

As with many development projects, the repository on Github is considered to be the
"staging" area for the latest changes. Before changes are merged into that master repo,
they are tested by individual developers, as well as contributors who focus on thorough
testing and code reviews. That having been said, the repository should be carefully
considered before using it in a production environment, unless there is a patch in the 
repository for a particular show-stopping issue you are experiencing. It is generally
a better idea to use a tagged release for stability.

Anyone is able to contribute to AEON. If you have a fix or code change, feel free to
submit is as a pull request. In cases where the change is relatively small or does not
affect other parts of the codebase it may be merged in immediately by any one of the
collaborators. On the other hand, if the change is particularly large or complex, it
is expected that it will be discussed at length either well in advance of the pull
request being submitted, or even directly on the pull request.

## Deployment Notes

1. When running the daemon, take care to ensure that the console output is not blocked, as this may in turn cause processing threads to be blocked, potentially resulting in unreliable operation of the daemon. This can occur because the implementation contains many logging statements which send output to the console within the context of the processing thread, and if the output buffer fills up this will block the thread. The best practice is to start the daemon within the context of a background process manager such as screen or tmux, or within a terminal window on a physical or virtual console. In doing so be sure that the session is not left in 'scrollback' or 'edit' mode as this may eventualy cause the output to block.
2. The daemon currently has high resource usage especially memory. To ensure reliable performance (especially on mining/pool nodes where poor performance can result in increase 'orphan blocks'), ensure that the daemon is being run on hardware with sufficient memory to avoid excessive swapping and long pauses. While it is possible to operate with limited memory and swap in some cases (though not recommended for mining), this requires care and a platform with sufficient I/O performance (e.g. unthrottled SSD). In the latter case also see the next item.
3. One cause of high resource usage and long processing delays is the periodic saving of the blockchain every 12 hours. Doing so requires access to the entire memory space and potentially large amounts of swapping. It can be disabled using the `--disable-save` option. The blockchain will still be saved on exit or upon request using the save command.
4. If using the rpc wallet (simplewallet --rpc-bind-port), access to the wallet RPC port will allow sending funds from the wallet. By default the rpc port is bound to the loopback interface so access is only possible from the same system. You are responsible for appropriately controlling/limiting access to the port (eg. using virtualization, firewall settings, etc.) to prevent loss of funds. If not using the --rpc-bind-port the wallet does not accept remote commands and this issue does not apply.

## Compiling AEON

On Unix and Linux:

Dependencies: GCC 4.7.3 or later, CMake 2.8.6 or later, and Boost 1.53 or later (except
1.54, more details here: http://goo.gl/RrCFmA).

- To build, change to the root of the source code directory, and run 'make'.

- The resulting executables can be found in build/release/src.

Advanced options:

- Parallel build: run 'make -j<number of threads>' instead of 'make'.

- Debug build: run 'make build-debug'.

- Test suite: run 'make test-release' to run tests in addition to building. Running
  'make test-debug' will do the same to the debug version.

- Building with Clang: it may be possible to use Clang instead of GCC, but this may not
  work everywhere. To build, run 'export CC=clang CXX=clang++' before running 'make'.

- Manual Cmake: If you wish to manually invoke `cmake` separately instead of the above `make`, you will need to use the following: `mkdir -p build/release && cd build/release && cmake -D CMAKE_BUILD_TYPE=Release ../.. && make`. Other options can be used for debug or test builds. See root Makefile in the repo.


On OS X:

The project can be built from scratch by following instructions for Unix and Linux above.

Alternatively, it can be built in an easier and more automated fashion using Homebrew:

- Ensure Homebrew is installed, it can be found at http://brew.sh

- Add the repository: brew tap sammy007/cryptonight

- Build wallet: brew install --HEAD aeon

On Windows:

Dependencies: MSVC 2013 or later, CMake 2.8.6 or later, and Boost 1.53 or later.

- To build, change to the root of the source code directory, and run these commands:

   mkdir build
   cd build
   cmake -G "Visual Studio 12 Win64" -DBOOST_ROOT="c:\folder\to\boost_1_55_0"
           -DBOOST_LIBRARYDIR="c:\folder\to\boost_1_55_0\lib64-msvc-12.0"
   msbuild Project.sln /p:Configuration=Release

- If you don't have your path environment variable configured with the VS paths, you may
  may want to run 'C:\program files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat'
  (or equivalent) to temporarily set the environment variables.

## Building Documentation

AEON developer documentation uses Doxygen, and is currently a work-in-progress.

Dependencies: Doxygen 1.8.0 or later, Graphviz 2.28 or later (optional)

- To build, change to the root of the source code directory, and run 'doxygen Doxyfile'

- If you have installed Graphviz, you can also generate in-doc diagrams by instead running
  'HAVE_DOT=YES doxygen Doxyfile'

- The output will be built in doc/html/

## License

Copyright (c) 2014-2017, AEON, The Monero Project

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of
   conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of
   conditions and the following disclaimer in the documentation and/or other materials
   provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used
   to endorse or promote products derived from this software without specific prior
   written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Parts of the project are originally copyright (c) 2012-2013 The Cryptonote developers

## Other License Information:

Copyright (c) 2014-2017, The Monero Project

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
   may be used to endorse or promote products derived from this software without
   specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Parts of the project are originally copyright (c) 2012-2013 The Cryptonote
developers
