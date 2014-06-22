// Copyright (c) 2012-2013 The Cryptonote developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#pragma once

#include "checkpoints.h"
#include "misc_log_ex.h"

#define ADD_CHECKPOINT(h, hash)  CHECK_AND_ASSERT(checkpoints.add_checkpoint(h,  hash), false);

namespace cryptonote {
  inline bool create_checkpoints(cryptonote::checkpoints& checkpoints)
  {     
    ADD_CHECKPOINT(10000, "1ac1ebd25baf0d6ec593daa3389f1aa7e860ff2cc29f3cf1be586d245b379da4");
    ADD_CHECKPOINT(15000, "15567af42afc1ed00538f53b5e3822d421e3ed6372ca79f4ea4e3e3bab709a87");
    return true;
  }
}
