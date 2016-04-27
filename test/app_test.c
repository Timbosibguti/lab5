#include <ctest.h>
#include <app.h>

CTEST(app_suite, nuli)
{
    const double a = 0, b = 0, c = 0;
    double d, x1, x2;

    const double koren = uravn(a, b, c, &d, &x1, &x2);
    
    const double ex_koren = -1;

    ASSERT_EQUAL(ex_koren, koren);
}