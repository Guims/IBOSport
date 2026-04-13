.class public final LE0/j;
.super Ljava/lang/Object;

# interfaces
.implements LE0/m;


# virtual methods
.method public final a(LE0/k;LE1/t;)LE0/l;
    .locals 2

    iget-object p2, p2, LE1/t;->r:Ljava/lang/Object;

    check-cast p2, Ljava/io/IOException;

    instance-of v0, p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget p2, p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v0, 0x193

    if-eq p2, v0, :cond_1

    const/16 v0, 0x194

    if-eq p2, v0, :cond_1

    const/16 v0, 0x19a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1f4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p2, v0, :cond_3

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LE0/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, LE0/l;

    const-wide/32 v0, 0x493e0

    invoke-direct {p1, p2, v0, v1}, LE0/l;-><init>(IJ)V

    return-object p1

    :cond_2
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, LE0/k;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, LE0/l;

    const-wide/32 v0, 0xea60

    invoke-direct {p1, p2, v0, v1}, LE0/l;-><init>(IJ)V

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(I)I
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public final c(LE1/t;)J
    .locals 2

    iget-object v0, p1, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    instance-of v1, v0, Landroidx/media3/common/ParserException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v1, :cond_1

    instance-of v1, v0, LE0/r;

    if-nez v1, :cond_1

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, LE1/t;->q:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
