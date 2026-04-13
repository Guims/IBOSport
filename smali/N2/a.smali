.class public abstract LN2/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Ld0/a;

.field public static final c:Ld0/a;

.field public static final d:Ld0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LN2/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Ld0/a;

    sget-object v1, Ld0/a;->d:[F

    invoke-direct {v0, v1}, Ld0/b;-><init>([F)V

    sput-object v0, LN2/a;->b:Ld0/a;

    new-instance v0, Ld0/a;

    invoke-direct {v0}, Ld0/a;-><init>()V

    sput-object v0, LN2/a;->c:Ld0/a;

    new-instance v0, Ld0/a;

    sget-object v1, Ld0/a;->e:[F

    invoke-direct {v0, v1}, Ld0/b;-><init>([F)V

    sput-object v0, LN2/a;->d:Ld0/a;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static b(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gtz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-ltz v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    invoke-static {p0, p1, p4}, LN2/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static c(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
