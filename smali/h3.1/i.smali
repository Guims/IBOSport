.class public final Lh3/i;
.super LE5/l;


# virtual methods
.method public final v(Lh3/u;FF)V
    .locals 6

    mul-float v0, p3, p2

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0, v1, v2}, Lh3/u;->d(FFF)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    mul-float/2addr p3, p2

    new-instance p2, Lh3/q;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, p3, p3}, Lh3/q;-><init>(FFFF)V

    iput v1, p2, Lh3/q;->f:F

    iput v2, p2, Lh3/q;->g:F

    iget-object v2, p1, Lh3/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lh3/o;

    invoke-direct {v2, p2}, Lh3/o;-><init>(Lh3/q;)V

    invoke-virtual {p1, v1}, Lh3/u;->a(F)V

    iget-object p2, p1, Lh3/u;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x43870000    # 270.0f

    iput p2, p1, Lh3/u;->d:F

    add-float v1, v3, p3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr p3, v3

    div-float/2addr p3, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p2, v4

    mul-float/2addr p2, p3

    add-float/2addr p2, v1

    iput p2, p1, Lh3/u;->b:F

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float/2addr p3, p2

    add-float/2addr p3, v1

    iput p3, p1, Lh3/u;->c:F

    return-void
.end method
