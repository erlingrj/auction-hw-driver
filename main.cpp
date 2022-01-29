#include <iostream>
#include <chrono>
using namespace std;
using namespace std::chrono;

#include "Auction.hpp"
#include "platform.h"

#include "auction-cpp/utils.hpp"
#include "auction-cpp/AuctionSolver.hpp"
#include <experimental/filesystem>

#define REW_MAT_BUF_SIZE 0x1000000

double sc_time_stamp() {
    return 0;
}

uint64_t rew_mat_aligned[REW_MAT_BUF_SIZE];


bool run_Auction(WrapperRegDriver * platform, int n_rows, int n_cols, int size) {

  Auction t(platform);

  // 1. Calculate result in SW

  bool print_rew_mat = false;
  if (print_rew_mat) {
    for (int i = 0; i<  n_rows; i++) {
      for (int j = 0; j< n_cols; j++) {
        cout <<rew_mat_aligned[i*n_cols + j] <<" ";
      }
      cout <<endl;
    }
  }


  uint64_t res[2*n_cols];
  unsigned int bufsize_res = 2*n_cols * sizeof(res[0]);

  unsigned int bufsize = size * sizeof(rew_mat_aligned[0]);


  void * accelBuf = platform->allocAccelBuffer(bufsize);
  platform->copyBufferHostToAccel(rew_mat_aligned, accelBuf, bufsize);

  void * accelResBuf = platform->allocAccelBuffer(bufsize_res);
  t.set_rfIn_baseAddr((AccelDblReg) accelBuf);
  t.set_rfIn_baseAddrRes((AccelDblReg) accelResBuf);
  t.set_rfIn_nAgents(n_rows);
  t.set_rfIn_nObjects(n_cols);

  t.set_rfIn_start(1);
  t.set_rfIn_start(0);

  while (t.get_rfOut_finished() != 1);
  cout <<"Cycles=" <<t.get_rfOut_cycleCount() <<endl;
  cout <<"Iter=" <<t.get_rfOut_iterCount() <<endl;
  cout <<"Misses=" <<t.get_rfOut_missCount() <<endl;
  platform->copyBufferAccelToHost(accelResBuf, res, bufsize_res);

  // Verify that object assignment matches
  bool valid = true;
/*
  for (int i = 0; i<n_cols; i++) {
    if(res[i] != object_assignments[i]) {
      if (res[i] != 0 && object_assignments[i] != -1) {
        cout <<"WARNING: mismatch in object assignment result for object-" <<i <<"  SW=" <<object_assignments[i] <<" HW=" <<res[i] <<endl;
        valid = false;
      } else if (res[i] == 0 && object_assignments[i] == -1) {
        res[i] = -1;
      }
    }
  }

  if (valid == false) {
    // Check if the gain is the same and thus we have equally valid solution
    std::vector<int> obj_ass_hw;
    for (int i = 0; i<n_cols; i++) {
        obj_ass_hw.push_back(res[i]);
    }
    int gainHW = calc_gain(rew, obj_ass_hw);
    int gainSW = calc_gain(rew, object_assignments);

    if (gainHW != gainSW) {
       cout <<"ERROR: Also mismatch gain. gainHW=" <<gainHW <<" gainSW=" <<gainSW <<endl;

    } else {
        cout <<"INFO: Gain is equal" <<endl;
        valid=true;
    }
    }

  cout <<"SW Assignments= ";
  for (auto el: object_assignments) {
    cout <<el <<" ";
  }

  cout <<endl;
  if (!valid) {
  cout <<"HW Assignments= ";
  for (int i=0; i<n_cols; i++) {
    cout <<res[i] <<" ";
  }
  cout <<endl;


  }
*/
  platform->deallocAccelBuffer(accelBuf);
  platform->deallocAccelBuffer(accelResBuf);

  return valid;
}

int main(int argc, char** argv)
{
    cout <<"Running Auction Accelerator" <<endl;

    if (argc != 2) {
        cout << "Expects 1 argument with path to folder with datasets" <<endl;
        return -1;
    }

    string path = argv[1];

    int epsilon = 1;

      for (const auto & entry : experimental::filesystem::directory_iterator(path)) {
        auto p = string(entry.path().string());
       // if (p == "auction-cpp/resources/rewardsNew/new_rewards11749.csv") {
        auto rew = parse_csv(p);
        auto object_assignments = auction(rew, 1);

        int size = allocate_reward(rew, (uint64_t *) &rew_mat_aligned);
        if (rew.size() == 0) {
            continue;
        }

        int n_rows = rew.size();
        int n_cols = rew[0].size();

        cout <<p <<endl <<" rows=" <<n_rows <<" cols=" <<n_cols <<endl;
        WrapperRegDriver * platform = initPlatform();
        if (!run_Auction(platform, n_rows, n_cols, size)) {
          return 1;
        }
    }
    return 0;
}