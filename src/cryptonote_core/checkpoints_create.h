// Copyright (c) 2014, AEON, The Monero Project
// 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without modification, are
// permitted provided that the following conditions are met:
// 
// 1. Redistributions of source code must retain the above copyright notice, this list of
//    conditions and the following disclaimer.
// 
// 2. Redistributions in binary form must reproduce the above copyright notice, this list
//    of conditions and the following disclaimer in the documentation and/or other
//    materials provided with the distribution.
// 
// 3. Neither the name of the copyright holder nor the names of its contributors may be
//    used to endorse or promote products derived from this software without specific
//    prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
// THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// Parts of this file are originally copyright (c) 2012-2013 The Cryptonote developers

#pragma once

#include "checkpoints.h"
#include "misc_log_ex.h"

#define ADD_CHECKPOINT(h, hash)  CHECK_AND_ASSERT(checkpoints.add_checkpoint(h,  hash), false);

namespace cryptonote {
  inline bool create_checkpoints(cryptonote::checkpoints& checkpoints)
  {     
    ADD_CHECKPOINT(1,      "1440a20f078bf3264822234b347f8382606577d73d4e9d3cb7296d73889bc421");
    ADD_CHECKPOINT(100,    "6dd13aaab16679f49ee6b2b75c7dc99b1fd09ab2282b18cb4b55b73110655742");
    ADD_CHECKPOINT(1000,   "bc6458452fd0575a314089bf302f6fd68ebaa2d689c42f3365293b96bbdf1f25");
    ADD_CHECKPOINT(10000,  "1ac1ebd25baf0d6ec593daa3389f1aa7e860ff2cc29f3cf1be586d245b379da4");
    ADD_CHECKPOINT(15000,  "15567af42afc1ed00538f53b5e3822d421e3ed6372ca79f4ea4e3e3bab709a87");
    ADD_CHECKPOINT(175500, "3f7dd748b3b863b04654d87a387f2b65a365f467188971f3192eab2368e64a35");
    ADD_CHECKPOINT(450000, "f69a6e57c4dd5df2f492c9d31c50f11aad2c25a64d540ce5f5d11b572aec8ab7");
    ADD_CHECKPOINT(540000, "94e19cf9d5a16ae90f67c321f8376b87da21d6d6c2cb0957b9ab558dca66c1dc");
    ADD_CHECKPOINT(592001, "e8bc936b287a9c426a15cf127624b064c88e6d37655cc87f9a62cf1623c62385");
    ADD_CHECKPOINT(798358, "804c7fe07511d9387e7cda534c9e8b644d406d8d0ff299799a8177850d4e75a0");
    ADD_CHECKPOINT(871000, "99f7e5460da3fb4e2b15214017b0a17ff0294823ad852259ff837f0ffeeb90f0");

    return true;
  }
}
