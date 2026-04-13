.class public final Lu0/o;
.super Ljava/lang/Object;

# interfaces
.implements Lu0/q;


# virtual methods
.method public final b(Lu0/m;Landroidx/media3/common/Format;)Lu0/j;
    .locals 2

    iget-object p1, p2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lu0/u;

    new-instance p2, Lu0/i;

    new-instance v0, Lu0/F;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lu0/i;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lu0/u;-><init>(Lu0/i;)V

    return-object p1
.end method

.method public final c(Landroid/os/Looper;Lq0/q;)V
    .locals 0

    return-void
.end method

.method public final d(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p1, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
