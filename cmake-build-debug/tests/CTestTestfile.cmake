# CMake generated Testfile for 
# Source directory: /Users/jan/Documents/Dev/aeon/tests
# Build directory: /Users/jan/Documents/Dev/aeon/cmake-build-debug/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(coretests "coretests" "--generate_and_play_test_data")
add_test(crypto "crypto-tests" "/Users/jan/Documents/Dev/aeon/tests/crypto/tests.txt")
add_test(difficulty "difficulty-tests" "/Users/jan/Documents/Dev/aeon/tests/difficulty/data.txt")
add_test(hash-fast "hash-tests" "fast" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-fast.txt")
add_test(hash-slow-2m "hash-tests" "slow-2m" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-slow-2m.txt")
add_test(hash-tree "hash-tests" "tree" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-tree.txt")
add_test(hash-extra-blake "hash-tests" "extra-blake" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-extra-blake.txt")
add_test(hash-extra-groestl "hash-tests" "extra-groestl" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-extra-groestl.txt")
add_test(hash-extra-jh "hash-tests" "extra-jh" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-extra-jh.txt")
add_test(hash-extra-skein "hash-tests" "extra-skein" "/Users/jan/Documents/Dev/aeon/tests/hash/tests-extra-skein.txt")
add_test(hash-target "hash-target-tests")
add_test(unit_tests "unit_tests")
subdirs("gtest")
