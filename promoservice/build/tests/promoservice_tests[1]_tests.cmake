add_test([=[PromoServiceUnitTest.CreateAndGetPromoCodeDirectCall]=]  /home/timsus/projects/COAproject/promoservice/build/tests/promoservice_tests [==[--gtest_filter=PromoServiceUnitTest.CreateAndGetPromoCodeDirectCall]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[PromoServiceUnitTest.CreateAndGetPromoCodeDirectCall]=]  PROPERTIES WORKING_DIRECTORY /home/timsus/projects/COAproject/promoservice/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[PromoServiceUnitTest.ListPromoCodesDirectCall]=]  /home/timsus/projects/COAproject/promoservice/build/tests/promoservice_tests [==[--gtest_filter=PromoServiceUnitTest.ListPromoCodesDirectCall]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[PromoServiceUnitTest.ListPromoCodesDirectCall]=]  PROPERTIES WORKING_DIRECTORY /home/timsus/projects/COAproject/promoservice/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[PromoServiceUnitTest.UpdatePromoCodeDirectCall]=]  /home/timsus/projects/COAproject/promoservice/build/tests/promoservice_tests [==[--gtest_filter=PromoServiceUnitTest.UpdatePromoCodeDirectCall]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[PromoServiceUnitTest.UpdatePromoCodeDirectCall]=]  PROPERTIES WORKING_DIRECTORY /home/timsus/projects/COAproject/promoservice/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test([=[PromoServiceUnitTest.DeletePromoCodeDirectCall]=]  /home/timsus/projects/COAproject/promoservice/build/tests/promoservice_tests [==[--gtest_filter=PromoServiceUnitTest.DeletePromoCodeDirectCall]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[PromoServiceUnitTest.DeletePromoCodeDirectCall]=]  PROPERTIES WORKING_DIRECTORY /home/timsus/projects/COAproject/promoservice/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  promoservice_tests_TESTS PromoServiceUnitTest.CreateAndGetPromoCodeDirectCall PromoServiceUnitTest.ListPromoCodesDirectCall PromoServiceUnitTest.UpdatePromoCodeDirectCall PromoServiceUnitTest.DeletePromoCodeDirectCall)
