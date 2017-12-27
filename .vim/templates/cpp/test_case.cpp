/*
 * test_case.cpp
 * Copyright (C) 2017 crane <crane@crane-pc>
 *
 * Distributed under terms of the MIT license.
 */

/*
 * test1.cpp
 * Copyright (C) 2017 crane <crane@crane-pc>
 *
 * Distributed under terms of the MIT license.
 */

#include <gtest/gtest.h>


class TestPoint : public testing::Test
{
public:
    virtual void SetUp() {
        p2.from_data(1, 2);
    }

    virtual void TearDown() {
    }

    TestPoint();
};


// =================== test fixture =====================


TEST_F(TestPoint, default_constructor)
{
    ASSERT_EQ(p0.x_, Point().x_);
    ASSERT_EQ(p0.y_, Point().y_);
}

TEST_F(TestPoint, general_constructor)
{
    ASSERT_EQ(p1.x_, 3);
    ASSERT_EQ(p1.y_, 4);
}

TEST_F(TestPoint, set)
{
    ASSERT_EQ(p2.x_, 1);
    ASSERT_EQ(p2.y_, 2);
}


// =================== TEST =====================


TEST(abs_max, positive)
{
    ASSERT_TRUE();
    ASSERT_TRUE();
}

TEST(abs_max, negative)
{
    ASSERT_TRUE();
    ASSERT_TRUE();
    ASSERT_FALSE();
}

// 负数和非负数比较
TEST(abs_max, hibrid)
{
    ASSERT_TRUE();
    ASSERT_TRUE();

    ASSERT_FALSE();
    ASSERT_FALSE();
}

TEST(abs_max, zero)
{
    ASSERT_TRUE();
    ASSERT_TRUE();

    ASSERT_FALSE();
    ASSERT_FALSE();
}
